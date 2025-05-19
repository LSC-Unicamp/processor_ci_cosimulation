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
    dut._log.info("\nrw_address=%x", dut.rw_address.value)
    dut._log.info("read_data=%x", dut.read_data.value)
    dut._log.info("read_request=%s", dut.read_request.value)
    dut._log.info("read_response=%s", dut.read_response.value)
    dut._log.info("write_data=%s", dut.write_data.value)
    dut._log.info("write_strobe=%s", dut.write_strobe.value)
    dut._log.info("write_request=%s", dut.write_request.value)
    dut._log.info("write_response=%s", dut.write_response.value)

##################################################################
#DEBUG

filename = os.environ.get("PROGRAM")
inst_memory = pyelf.load_memory(filename)

memory = [0]*65536 # 256kB

pc_and_instructions = []
mem_accesses = []
async def continuously_update_memory(dut):
    while True:
        await RisingEdge(dut.clock)
        
        #####################
        # Memory read logic #
        #####################
        if dut.read_response.value == 0 and dut.write_request.value == 0:
            if dut.read_request == 1:
                raw_addr = dut.rw_address.value.integer
                dut.read_response.value = 1

                # check if it is a instruction fetch
                if raw_addr >= 0x80000000:
                    request_addr = (raw_addr - 0x80000000) // 4
                    inst = inst_memory[request_addr]
                    dut.read_data.value = inst_memory[request_addr]
                    
                    pc_and_instructions.append((raw_addr, inst))

                # data fetch
                else:
                    request_addr = raw_addr // 4
                    dut.read_data.value = memory[request_addr]
                    
                    mem_wdata = 0
                    mem_accesses.append((raw_addr, mem_wdata)) # read access

        else:
            dut.read_response.value = 0


        ######################
        # Memory write logic #
        ######################
        if dut.write_response.value == 0 and dut.read_request.value == 0:
            if dut.write_request == 1:
                dut.write_response.value = 1
                
                raw_addr = dut.rw_address.value.integer
                request_addr = raw_addr// 4
                mem_wdata = 0 # default value
                
                # check data strobe to know which byte to write
                if (dut.write_strobe.value == 0b1111):
                    memory[request_addr] = dut.write_data.value.integer

                elif (dut.write_strobe.value == 0b0011):
                    mem_wdata = (dut.write_data.value.integer & 0x0000FFFF)
                    memory[request_addr] = (memory[request_addr] & 0xFFFF0000) | mem_wdata
                
                elif (dut.write_strobe.value == 0b1100):
                    mem_wdata = (dut.write_data.value.integer & 0xFFFF0000)
                    memory[request_addr] = (memory[request_addr] & 0x0000FFFF) | mem_wdata
                    mem_wdata >>= 16

                elif (dut.write_strobe.value == 0b0001):
                    mem_wdata = (dut.write_data.value.integer & 0x000000FF)
                    memory[request_addr] = (memory[request_addr] & 0xFFFFFF00) | mem_wdata
                
                elif (dut.write_strobe.value == 0b0010):
                    mem_wdata = (dut.write_data.value.integer & 0x0000FF00)
                    memory[request_addr] = (memory[request_addr] & 0xFFFF00FF) | mem_wdata
                    mem_wdata >>= 8

                elif (dut.write_strobe.value == 0b0100):
                    mem_wdata = (dut.write_data.value.integer & 0x00FF0000)
                    memory[request_addr] = (memory[request_addr] & 0xFF00FFFF) | mem_wdata
                    mem_wdata >>= 16

                elif (dut.write_strobe.value == 0b1000):
                    mem_wdata = (dut.write_data.value.integer & 0xFF000000)
                    memory[request_addr] = (memory[request_addr] & 0x00FFFFFF) | mem_wdata
                    mem_wdata >>= 24

                mem_accesses.append((raw_addr, mem_wdata)) # write access
        else:
            dut.write_response.value = 0


##############################################################################

@cocotb.test()
async def rvx_test(dut):
    dut._log.info("Initializing...")

    cocotb.start_soon(Clock(dut.clock, 1, units="ns").start())
    cocotb.start_soon(continuously_update_memory(dut))
    
    dut.halt.value = 0
    dut.read_data.value = 0

##############################################################################
    dut._log.info("\nReseting dut...")
    
    # paremeters
    reset = dut.reset
    reset_enable = 1
    
    # reset dut and registers
    reset.value = reset_enable
    for reg in dut.integer_file:
        reg.value = 0

    await Timer(5, units="ns")

    reset.value = 1 - reset_enable
    
    dut._log.info("dut finished reset.")

##############################################################################
        
    rd_addr_and_value = []    
        ###############
        ## MAIN LOOP ##
        ###############
    
    # this loop stores all the register file commits
    for i in range(30):
        await RisingEdge(dut.clock)

        show_signals_of_interest(dut)

        if dut.clock_enable.value == 1 and dut.integer_file_write_enable.value == 1 and dut.instruction_rd_address.value != 0:
            rd_addr_and_value.append((dut.instruction_rd_address.value.integer, dut.writeback_multiplexer_output.value.integer))


##############################################################################
###################
# TRACE GENERATION#
###################

    lines = tg.generate_trace(pc_and_instructions, rd_addr_and_value, mem_accesses)

#########################################################################

    with open("processor.trace", "w") as trace_file:
        for line in lines:
            trace_file.write(line)
        
                