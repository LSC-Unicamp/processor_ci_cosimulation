import cocotb
from cocotb.triggers import Timer, RisingEdge
from cocotb.clock import Clock
from cocotb.binary import BinaryValue

# gabriel
import pyelf
import os
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
    dut._log.info("ram_addr: %s",           dut.RAM_ADDR.value)
    dut._log.info("ram_read_data: %s",      dut.RAM_READ_DATA.value)
    dut._log.info("ram_write_data: %s",     dut.RAM_WRITE_DATA.value)
    dut._log.info("ram_write_enable: %s",   dut.RAM_WRITE_ENABLE.value)
    dut._log.info("instruction: %x",        dut.INSTRUCTION.value)
    dut._log.info("instruction_addr: %s",   dut.INSTRUCTION_ADDR.value)
    dut._log.info("\n")


#### global variables ###################
# filename = os.environ.get("PROGRAM")
# inst_memory = pyelf.load_memory(filename)
inst_memory = pyelf.load_memory()
for padding in range(2):
    inst_memory.append(0) # Append nop because picorv32 fetches next instruction after jump

pc_and_instructions = []
########################################

async def continuously_update_pc(dut):

    # initialize manually since dut does not have reset
    # raw_addr = 0x80000000
    # inst = inst_memory[0]
    # pc_and_instructions.append((raw_addr, inst))

    while True:

        await RisingEdge(dut.CLK)
        await Timer(0.001,units="ns") # making sure it will evaluate after the simulation
        dut.INSTRUCTION.value = inst_memory[dut.INSTRUCTION_ADDR.value-1]
        raw_addr = (dut.INSTRUCTION_ADDR.value.integer-1)*4 + 0x80000000
        pc_and_instructions.append((raw_addr, inst_memory[dut.INSTRUCTION_ADDR.value - 1]))

########################################

memory = [0]*65536 # 256kB
mem_accesses = []
async def continuously_update_memory(dut):

    while True:

        await RisingEdge(dut.CLK)
        await Timer(0.001,units="ns") # making sure it will evaluate after the simulation
        
        addr = dut.RAM_ADDR.value.integer
        dut.RAM_READ_DATA.value = memory[addr]
        
        if dut.RAM_WRITE_ENABLE.value == 1:
            value = dut.RAM_WRITE_DATA.value.integer
            memory[addr] = value
        else:
            value = 0
        # mem_accesses.append((addr, value))
                

######################################################################


@cocotb.test()
async def fedar_test(dut):
    
    dut._log.info("Initializing...")

    dut.INSTRUCTION.value = 0x13 # since dut does not have reset, we need to initialize the instruction
    
    cocotb.start_soon(Clock(dut.CLK, 1, units="ns").start())
    cocotb.start_soon(continuously_update_pc(dut))
    cocotb.start_soon(continuously_update_memory(dut))


######################################################################

    dut._log.info("\nReseting dut...")
    
    dut._log.info("\ndut does not have reset.\n")

#######################################################################

    # simulate for 500 clock cycles
    # get all commits
    rd_addr_and_value = []
    for i in range(50):
        await RisingEdge(dut.CLK)
        show_signals_of_interest(dut)

        if dut.regFile.WRITE_ENABLE.value == 1 and dut.regFile.RD.value != 0:
            addr = dut.regFile.RD.value.integer
            value = dut.regFile.RD_DATA.value.integer
            rd_addr_and_value.append((addr, value))

    for addr, value in rd_addr_and_value:
        dut._log.info("Register %x: %x", addr, value)


###################################################################################################

    # delete not committed instructions
    # if there is a taken branch or a jump, PC+4 and PC+8 will be fetched anyway
    # so we need to delete this fetched-but-cancelled instruction
    # collateral effect: only one jump 0x6f is counted
    mark_to_pop = []
    for i in range(len(pc_and_instructions)-2):
        pc, inst = pc_and_instructions[i]
        next_pc, _ = pc_and_instructions[i+1]
        next_next_pc, _ = pc_and_instructions[i+2]
        if ( (inst & 0b1111111 == 0b1100011 and  next_next_pc != next_pc+4) or # taken branch
            (inst & 0b1111111 == 0b1101111) ): # jump
            mark_to_pop.append(i+1)
            mark_to_pop.append(i+2)
            dut._log.info("Deleting instruction %x and %x", next_pc, next_next_pc)
    
    for i in reversed(mark_to_pop):
        pc_and_instructions.pop(i)

    for pc, inst in pc_and_instructions:
        dut._log.info("PC %x: %x", pc, inst)

###################################################################################################

    lines = tg.generate_trace(pc_and_instructions, rd_addr_and_value)

    with open("processor.trace", "w") as trace_file:
        for line in lines:
            trace_file.write(line)
                