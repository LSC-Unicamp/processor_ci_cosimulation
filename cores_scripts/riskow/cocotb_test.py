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
    pass
    dut._log.info("address: %x", dut.address.value)
    dut._log.info("dataIn: %x", dut.dataIn.value)
    dut._log.info("dataOut: %x", dut.dataOut.value)
    dut._log.info("busValid: %s", dut.busValid.value)
    dut._log.info("busInstr: %s", dut.busInstr.value)
    dut._log.info("busReady: %s", dut.busReady.value)
    dut._log.info("busWriteEnable: %s", dut.busWriteEnable.value)
    dut._log.info("\n")


#### global variables ###################
# inst_memory = pyelf.load_memory()
filename = os.environ.get("PROGRAM")
inst_memory = pyelf.load_memory(filename)
for padding in range(2):
    inst_memory.append(0) # Append nop because picorv32 fetches next instruction after jump

memory = [0]*65536 # 256kB

pc_and_instructions = []
# mem_accesses = []
########################################

async def continuously_update_memory(dut):
    
    dut.busReady.value = 1 # always ready

    while True:
        await RisingEdge(dut.clk)
        await Timer(0.001,units="ns") # making sure it will evaluate after the simulation

        if dut.busValid.value == 1:
            if dut.busWriteEnable.value == 0:
                raw_addr = dut.address.value.integer
                
                if dut.busInstr.value == 1:
                    simulated_addr = (raw_addr-0x80000000) // 4
                    dut.dataIn.value = inst_memory[simulated_addr]
                    pc_and_instructions.append((raw_addr, inst_memory[simulated_addr]))
                else:
                    simulated_addr = raw_addr // 4
                    dut.dataIn.value = memory[simulated_addr]
                    mem_wdata = None
                    # mem_accesses.append((raw_addr, mem_wdata))
            else:
                simulated_addr = raw_addr // 4
                mem_wdata = dut.dataOut.value.integer
                memory[simulated_addr] = mem_wdata
                # mem_accesses.append((raw_addr, mem_wdata))
                

######################################################################


@cocotb.test()
async def riskow_test(dut):
    
    dut._log.info("Initializing...")
    
    cocotb.start_soon(Clock(dut.clk, 1, units="ns").start())
    cocotb.start_soon(continuously_update_memory(dut))

######################################################################

    dut._log.info("\nReseting dut...")
    
    # reset dut and register file
    dut.reset.value = 1
    # need to iterate manually through all registers
    for i in range(len(dut.registers.registers)):
        dut.registers.registers[i].value = 0

    await Timer(5, units="ns")

    dut.reset.value = 0
    
    dut._log.info("\ndut finished reset.")

###############################################################################################

    # simulate for 500 clock cycles
    # get all commits
    rd_addr_and_value = []
    for i in range(50):
        await RisingEdge(dut.clk)
        show_signals_of_interest(dut)

        if dut.registers.writeEnable == 1 and dut.registers.wRegNum != 0:
            rd_addr_and_value.append((dut.registers.wRegNum.value.integer, dut.registers.wDataIn.value.integer))

    for addr, value in rd_addr_and_value:
        dut._log.info("Register %x: %x", addr, value)

    for pc, inst in pc_and_instructions:
        dut._log.info("PC %x: %x", pc, inst)

    # for addr, value in mem_accesses:
    #     dut._log.info("Memory %x: %x", addr, value)

###################################################################################################
    
    # There is always a read access before a write access
    # pop memory read accesses before stores

    # mark_to_pop = []
    # for i in range(len(mem_accesses)-1):
    #     _, value1 = mem_accesses[i+1]
    #     if value1 != None:
    #         mark_to_pop.append(i)

    # for i in reversed(mark_to_pop):
    #     mem_accesses.pop(i)


    # for addr, value in mem_accesses:
    #     dut._log.info("XMemory %x: %x", addr, value)

###################################################################################################

    lines = tg.generate_trace(pc_and_instructions, rd_addr_and_value)

    with open("processor.trace", "w") as trace_file:
        for line in lines:
            trace_file.write(line)
                