import cocotb
from cocotb.triggers import Timer, RisingEdge
from cocotb.clock import Clock
from cocotb.binary import BinaryValue

import os

# gabriel
import pyelf
import trace_generation as tg

###############################################################################
# import debugpy
# listen_host, listen_port = debugpy.listen(("localhost", 5678))
# cocotb.log.info("Waiting for Python debugger attach on {}:{}".format(listen_host, listen_port))
# # Suspend execution until debugger attaches
# debugpy.wait_for_client()
# # Break into debugger for user control
# breakpoint()  # or debugpy.breakpoint() on 3.6 and below
###############################################################################

def show_signals_of_interest(dut):
    dut._log.info("data_mem_en: %s", dut.o_data_mem_en.value)
    dut._log.info("data_mem_we: %s", dut.o_data_mem_we.value)
    dut._log.info("data_mem_addr: %s", dut.o_data_mem_addr.value)
    dut._log.info("o_data_mem_data: %s", dut.o_data_mem_data.value)
    dut._log.info("data_mem_valid: %s", dut.i_data_mem_valid.value)
    dut._log.info("i_data_mem_data: %s", dut.i_data_mem_data.value)
    dut._log.info("data_mem_strobe: %s", dut.o_data_mem_strobe.value)
    #
    dut._log.info("code_mem_en: %s", dut.o_code_mem_en.value)
    dut._log.info("code_mem_addr: %x", dut.o_code_mem_addr.value)
    dut._log.info("code_mem_data: %x", dut.i_code_mem_data.value)
    dut._log.info("code_mem_valid: %s", dut.i_code_mem_valid.value)
    dut._log.info("\n")

#### global variables ###################
filename = os.environ.get("PROGRAM")
inst_memory = pyelf.load_memory(filename)
for padding in range(3):
    inst_memory.append(0x13) # Append nop because picorv32 fetches next instruction after jump

######################################################################
pc_and_instructions = []
async def continuously_update_pc(dut):

    await Timer(0.001, units="ns") # let rstn initialize
    while True:

        if dut.i_rstn.value == 0:
            dut.i_code_mem_valid.value = 0
            await RisingEdge(dut.i_clk)
        else:
            # become ready to send the value
            await Timer(0.001, units="ns")
            request_addr = (dut.o_code_mem_addr.value.integer - 0x80000000) // 4
            dut.i_code_mem_data.value = inst_memory[request_addr]
            dut.i_code_mem_valid.value = 1
            
            # waits for the processor to read the value
            while dut.o_code_mem_en.value == 0:
                await Timer(0.001, units="ns")

            pc_and_instructions.append((dut.o_code_mem_addr.value.integer, inst_memory[request_addr]))
            await RisingEdge(dut.i_clk)
            
######################################################################
memory = [0]*65536 # 256kB
mem_accesses = []
async def continuously_memory(dut):

    await Timer(0.001, units="ns") # let rstn initialize
    while True:

        if dut.i_rstn.value == 0:
            dut.i_data_mem_valid.value = 0
            await RisingEdge(dut.i_clk)
        else:
            # become ready to send the value
            await Timer(0.001, units="ns")
            
            
            dut.i_data_mem_valid.value = 1

            # waits for the processor to read the value
            while dut.o_data_mem_en.value == 0:
                await Timer(0.001, units="ns")

            raw_addr = dut.o_data_mem_addr.value.integer
            alignment = raw_addr % 4
            request_addr = raw_addr// 4

            if dut.o_data_mem_we.value == 0:
                # read transfer
                dut.i_data_mem_data.value = memory[request_addr] >> alignment*8
                mem_wdata = 0 # there is no data being written
                mem_accesses.append((raw_addr, mem_wdata))

            else:
                # write transfer, pay attention to the strobe
                if dut.o_data_mem_strobe.value == "1111" and alignment == 0:
                    # write 4 bytes
                    mem_wdata = dut.o_data_mem_data.value.integer
                    memory[request_addr] = mem_wdata
                elif dut.o_data_mem_strobe.value == "0011" and alignment == 0:
                    # write 2 bytes
                    mem_wdata = dut.o_data_mem_data.value.integer & 0x0000FFFF
                    memory[request_addr] = (memory[request_addr] & 0xFFFF0000) | mem_wdata
                elif dut.o_data_mem_strobe.value == "0011" and alignment == 2:
                    # write 2 bytes
                    mem_wdata = dut.o_data_mem_data.value.integer & 0x0000FFFF
                    mem_wdata <<= 16
                    memory[request_addr] = (memory[request_addr] & 0x0000FFFF) | mem_wdata
                    mem_wdata >>= 16
                elif dut.o_data_mem_strobe.value == "0001"  and alignment == 0:
                    # write 1 byte
                    mem_wdata = dut.o_data_mem_data.value.integer & 0x000000FF 
                    memory[request_addr] = (memory[request_addr] & 0xFFFFFF00) | mem_wdata
                elif dut.o_data_mem_strobe.value == "0001"  and alignment == 1:
                    # write 1 byte
                    mem_wdata = dut.o_data_mem_data.value.integer & 0x000000FF
                    mem_wdata <<= 8 
                    memory[request_addr] = (memory[request_addr] & 0xFFFF00FF) | mem_wdata
                    mem_wdata >>= 8 
                elif dut.o_data_mem_strobe.value == "0001"  and alignment == 2:
                    # write 1 byte
                    mem_wdata = dut.o_data_mem_data.value.integer & 0x000000FF
                    mem_wdata <<= 16
                    memory[request_addr] = (memory[request_addr] & 0xFF00FFFF) | mem_wdata
                    mem_wdata >>= 16
                elif dut.o_data_mem_strobe.value == "0001"  and alignment == 3:
                    # write 1 byte
                    mem_wdata = dut.o_data_mem_data.value.integer & 0x000000FF
                    mem_wdata <<= 24
                    memory[request_addr] = (memory[request_addr] & 0x00FFFFFF) | mem_wdata
                    mem_wdata >>= 24
            

                mem_accesses.append((raw_addr, mem_wdata))

            await RisingEdge(dut.i_clk)

######################################################################

@cocotb.test()
async def auk_test(dut):
    
    dut._log.info("Initializing...")
    
    cocotb.start_soon(Clock(dut.i_clk, 1, units="ns").start())
    cocotb.start_soon(continuously_update_pc(dut))
    cocotb.start_soon(continuously_memory(dut))

######################################################################

    dut._log.info("\nReseting dut...")
    
    # reset dut and register file
    dut.i_rstn.value = 0
    dut.i_irq.value = 0
    for reg in dut.RF0.regfile:
        reg.value = 0

    await Timer(5, units="ns")

    dut.i_rstn.value = 1
    
    dut._log.info("\ndut finished reset.")

###############################################################################################

    # simulate for 500 clock cycles
    # get all commits
    rd_addr_and_value = []
    for i in range(22):
        await RisingEdge(dut.i_clk)
        show_signals_of_interest(dut)

        # write to register file
        if dut.RF0.i_we.value == 1 and dut.RF0.i_rd_addr.value != 0:
            rd_addr_and_value.append((dut.RF0.i_rd_addr.value.integer, dut.RF0.i_rd_data.value.integer))

################################################################################################################
    
    # delete not committed instructions
    # if there is a taken branch, PC+4 will be fetched anyway
    # so we need to delete this fetched-but-cancelled instruction
    # collateral effect: only one jump 0x6f is counted
    mark_to_pop = []
    for i in range(len(pc_and_instructions)-3):
        pc, inst = pc_and_instructions[i]
        next_pc, _ = pc_and_instructions[i+1] 
        next2_pc, _ = pc_and_instructions[i+2]
        next3_pc, _ = pc_and_instructions[i+3] 
        if (next3_pc != next2_pc+4 and
            (inst & 0b1111111) == 0b1100011 # branch
        ):
            mark_to_pop.append(i+1)
            mark_to_pop.append(i+2)
            dut._log.info("Deleting instruction %x", next_pc)
            dut._log.info("Deleting instruction %x", next2_pc)
        elif inst & 0b1111111 == 0b1101111: # jal
            mark_to_pop.append(i+1)
            mark_to_pop.append(i+2)
            dut._log.info("Deleting instruction %x", next_pc)
            dut._log.info("Deleting instruction %x", next2_pc)

    
    for i in reversed(mark_to_pop):
        pc_and_instructions.pop(i)

#################################################################################################################

    lines = tg.generate_trace(pc_and_instructions, rd_addr_and_value, mem_accesses)

    with open("processor.trace", "w") as trace_file:
        for line in lines:
            trace_file.write(line)
                