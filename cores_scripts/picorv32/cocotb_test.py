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
    dut._log.info("mem_valid: %s", dut.mem_valid.value)
    dut._log.info("mem_instr: %s", dut.mem_instr.value)
    dut._log.info("mem_addr: %x", dut.mem_addr.value)
    dut._log.info("mem_wstrb: %s", dut.mem_wstrb.value)
    dut._log.info("mem_wdata: %s", dut.mem_wdata.value)
    dut._log.info("mem_rdata: %x", dut.mem_rdata.value)
    dut._log.info("cpuregs_write: %s", dut.cpuregs_write.value)
    dut._log.info("latched_rd: %s", dut.latched_rd.value)
    dut._log.info("\n")


#### global variables ###################
filename = os.environ.get("PROGRAM")
inst_memory = pyelf.load_memory(filename)
for padding in range(2):
    inst_memory.append(0) # Append nop because picorv32 fetches next instruction after jump

memory = [0]*65536 # 256kB

pc_and_instructions = []
mem_accesses = []
########################################

async def continuously_update_memory(dut):
    dut.mem_ready.value = 1 # always ready
    
    while True:
        await RisingEdge(dut.clk)
        await Timer(0.001,units="ns") # making sure it will evaluate after the simulation
        
            
        if dut.mem_valid == 1:
            
            raw_addr = dut.mem_addr.value.integer
            
            simulated_addr = raw_addr // 4
            simulated_addr = simulated_addr % 65536
            if dut.mem_wstrb.value == "0000":
                
                if dut.mem_instr == 1:
                    inst = inst_memory[simulated_addr]

                    # instruction will be committed in the same order it is fetched
                    pc_and_instructions.append((raw_addr, inst))
                    
                    dut.mem_rdata.value = inst
                else:
                    dut.mem_rdata.value = memory[simulated_addr]
                    mem_wdata = 0 # there is no data being written
                    mem_accesses.append((raw_addr, mem_wdata))
            else:
                # write to memory according to the write strobe
                # get the written value with mem_wdata
                if dut.mem_wstrb.value == "1111":
                    # write 4 bytes
                    mem_wdata =  dut.mem_wdata.value.integer
                    memory[simulated_addr] = mem_wdata
                elif dut.mem_wstrb.value == "0011":
                    # write 2 bytes
                    mem_wdata = dut.mem_wdata.value.integer & 0x0000FFFF
                    memory[simulated_addr] = (memory[simulated_addr] & 0xFFFF0000) | mem_wdata
                elif dut.mem_wstrb.value == "1100":
                    # write 2 bytes
                    mem_wdata = dut.mem_wdata.value.integer & 0xFFFF0000
                    memory[simulated_addr] = (memory[simulated_addr] & 0x0000FFFF) | mem_wdata
                    mem_wdata >>= 16
                elif dut.mem_wstrb.value == "0001":
                    # write 1 byte
                    mem_wdata = dut.mem_wdata.value.integer & 0x000000FF
                    memory[simulated_addr] = (memory[simulated_addr] & 0xFFFFFF00) | mem_wdata
                elif dut.mem_wstrb.value == "0010":
                    # write 1 byte
                    mem_wdata = dut.mem_wdata.value.integer & 0x0000FF00
                    memory[simulated_addr] = (memory[simulated_addr] & 0xFFFF00FF) | mem_wdata
                    mem_wdata >>= 8
                elif dut.mem_wstrb.value == "0100":
                    # write 1 byte
                    mem_wdata = dut.mem_wdata.value.integer & 0x00FF0000
                    memory[simulated_addr] = (memory[simulated_addr] & 0xFF00FFFF) | mem_wdata
                    mem_wdata >>= 16
                elif dut.mem_wstrb.value == "1000":
                    # write 1 byte
                    mem_wdata = dut.mem_wdata.value.integer & 0xFF000000
                    memory[simulated_addr] = (memory[simulated_addr] & 0x00FFFFFF) | mem_wdata
                    mem_wdata >>= 24
                   

                mem_accesses.append((raw_addr, mem_wdata))
                

######################################################################


@cocotb.test()
async def picorv32_test(dut):
    
    dut._log.info("Initializing...")
    
    cocotb.start_soon(Clock(dut.clk, 1, units="ns").start())
    cocotb.start_soon(continuously_update_memory(dut))

######################################################################

    dut._log.info("\nReseting dut...")
    
    # reset dut and register file
    dut.resetn.value = 0
    for reg in dut.cpuregs:
        reg.value = 0

    await Timer(5, units="ns")

    dut.resetn.value = 1
    
    dut._log.info("\ndut finished reset.")

###############################################################################################

    # simulate for 500 clock cycles
    # get all commits
    rd_addr_and_value = []
    for i in range(50):
        await RisingEdge(dut.clk)
        show_signals_of_interest(dut)

        if dut.cpuregs_write.value == 1 and dut.latched_rd.value != 0:
            rd_addr_and_value.append((dut.latched_rd.value.integer, dut.cpuregs_wrdata.value.integer))


###############################################################################################

    # delete not committed instructions
    # if there is a taken branch, PC+4 will be fetched anyway
    # so we need to delete this fetched-but-cancelled instruction
    # collateral effect: only one jump 0x6f is counted
    mark_to_pop = []
    for i in range(len(pc_and_instructions)-2):
        pc, inst = pc_and_instructions[i]
        next_pc, _ = pc_and_instructions[i+1]
        next_next_pc, _ = pc_and_instructions[i+2] 
        if (next_next_pc != next_pc+4 and
        inst & 0b1111111 == 0b1100011): # branch
            mark_to_pop.append(i+1)
            dut._log.info("Deleting instruction %x", pc)
    
    for i in reversed(mark_to_pop):
        pc_and_instructions.pop(i)

###################################################################################################

    lines = tg.generate_trace(pc_and_instructions, rd_addr_and_value, mem_accesses)

    with open("processor.trace", "w") as trace_file:
        for line in lines:
            trace_file.write(line)
                