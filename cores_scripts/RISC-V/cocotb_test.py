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
    dut._log.info("data_i: %s", dut.data_i.value)
    dut._log.info("data_wmask_o: %s", dut.data_wmask_o.value)
    dut._log.info("data_wen_o: %s", dut.data_wen_o.value)
    dut._log.info("data_addr_o: %s", dut.data_addr_o.value)
    dut._log.info("data_o: %s", dut.data_o.value)
    dut._log.info("data_req_o: %s", dut.data_req_o.value)
    dut._log.info("data_stall_i: %s", dut.data_stall_i.value)
    #
    dut._log.info("instr_i: %x", dut.instr_i.value)
    dut._log.info("instr_addr_o: %x", dut.instr_addr_o.value)
    dut._log.info("\n")

#### global variables ###################
# inst_memory = pyelf.load_memory()
filename = os.environ.get("PROGRAM")
inst_memory = pyelf.load_memory(filename)
for padding in range(3):
    inst_memory.append(0x13) # Append nop because picorv32 fetches next instruction after jump

######################################################################

pc_and_instructions = []
async def continuously_update_pc(dut):
    while True:
        await RisingEdge(dut.clk_i)
        await Timer(0.001, units="ns")
        raw_addr = dut.instr_addr_o.value.integer
        request_addr = (dut.instr_addr_o.value.integer - 0x80000000) // 4
        dut.instr_i.value = inst_memory[request_addr]
        pc_and_instructions.append((raw_addr, inst_memory[request_addr]))
            

######################################################################
memory = [0]*65536 # 256kB
mem_accesses = []
async def continuously_update_memory(dut):

    while True:
        await RisingEdge(dut.clk_i)
        await Timer(0.001, units="ns")
        
        if dut.data_req_o.value == 1 and dut.data_wen_o.value == 1:
            raw_addr = dut.data_addr_o.value.integer
            mem_addr = dut.data_addr_o.value.integer // 4
            dut.data_i.value = memory[mem_addr]
            mem_wdata = 0
            mem_accesses.append((raw_addr, mem_wdata))
        
        elif dut.data_req_o.value == 1 and dut.data_wen_o.value == 0:
            raw_addr = dut.data_addr_o.value.integer
            mem_addr = dut.data_addr_o.value.integer // 4

            if dut.data_wmask_o.value == "1111": 
                mem_wdata = dut.data_o.value.integer
                memory[mem_addr] = mem_wdata
            elif dut.data_wmask_o.value == "0011":
                mem_wdata = dut.data_o.value.integer & 0x0000FFFF
                memory[mem_addr] = (memory[mem_addr] & 0xFFFF0000) | mem_wdata
            elif dut.data_wmask_o.value == "1100":
                mem_wdata = dut.data_o.value.integer & 0xFFFF0000
                memory[mem_addr] = (memory[mem_addr] & 0x0000FFFF) | mem_wdata
                mem_wdata >>= 16
            elif dut.data_wmask_o.value == "0001":
                mem_wdata = dut.data_o.value.integer & 0x000000FF
                memory[mem_addr] = (memory[mem_addr] & 0xFFFFFF00) | mem_wdata
            elif dut.data_wmask_o.value == "0010":
                mem_wdata = dut.data_o.value.integer & 0x0000FF00
                memory[mem_addr] = (memory[mem_addr] & 0xFFFF00FF) | mem_wdata
                mem_wdata >>= 8
            elif dut.data_wmask_o.value == "0100":
                mem_wdata = dut.data_o.value.integer & 0x00FF0000
                memory[mem_addr] = (memory[mem_addr] & 0xFF00FFFF) | mem_wdata
                mem_wdata >>= 16
            elif dut.data_wmask_o.value == "1000":
                mem_wdata = dut.data_o.value.integer & 0xFF000000
                memory[mem_addr] = (memory[mem_addr] & 0x00FFFFFF) | mem_wdata
                mem_wdata >>= 24

            mem_accesses.append((raw_addr, mem_wdata))


######################################################################

@cocotb.test()
async def hornet_test(dut):
    
    dut._log.info("Initializing...")
    
    cocotb.start_soon(Clock(dut.clk_i, 1, units="ns").start())
    cocotb.start_soon(continuously_update_pc(dut))
    cocotb.start_soon(continuously_update_memory(dut))

    
    dut.data_err_i.value = 0
    dut.instr_access_fault_i.value = 0
    dut.data_stall_i.value = 0

    dut.meip_i.value = 0
    dut.mtip_i.value = 0
    dut.msip_i.value = 0
    dut.fast_irq_i.value = 0


######################################################################

    dut._log.info("\nReseting dut...")
    # reset dut and register file
    
    dut.reset_i.value = 0

    for reg in dut.register_bank:
        reg.value = 0

    await Timer(0.5, units="ns")

    dut.reset_i.value = 1
    
    dut._log.info("\ndut finished reset.")

###############################################################################################

    # simulate for 500 clock cycles
    # get all commits
    rd_addr_and_value = []
    for i in range(22):
        await RisingEdge(dut.clk_i)
        show_signals_of_interest(dut)

        # write to register file
        if dut.rf_wen_WB.value == 0 and dut.rd_WB.value != 0:
            rd_addr_and_value.append((dut.rd_WB.value.integer, dut.mux_o_WB.value.integer))

#################################################################################################################

    # delete not committed instructions
    # if there is a taken branch, PC+4 will be fetched anyway
    # so we need to delete this fetched-but-cancelled instruction
    # collateral effect: only one jump 0x6f is counted
    mark_to_pop = []
    i = 0
    while i < len(pc_and_instructions)-3:
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
            i += 3 # skip next 2 instructions
        elif (inst & 0b1111111 == 0b1101111 or # jal
             inst & 0b1111111 == 0b1100111   ): # jalr
            mark_to_pop.append(i+1)
            mark_to_pop.append(i+2)
            dut._log.info("Deleting instruction %x", next_pc)
            dut._log.info("Deleting instruction %x", next2_pc)
            i += 3 # skip next 2 instructions
        else:
            i += 1

    for i in reversed(mark_to_pop):
        pc_and_instructions.pop(i)

#################################################################################################################

    lines = tg.generate_trace(pc_and_instructions, rd_addr_and_value, mem_accesses)

    with open("processor.trace", "w") as trace_file:
        for line in lines:
            trace_file.write(line)
                