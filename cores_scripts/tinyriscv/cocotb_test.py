import cocotb
from cocotb.triggers import Timer, RisingEdge
from cocotb.clock import Clock
from cocotb.binary import BinaryValue

import os

# gabriel
import pyelf
###############################################################################
# import debugpy
# listen_host, listen_port = debugpy.listen(("localhost", 5678))
# cocotb.log.info("Waiting for Python debugger attach on {}:{}".format(listen_host, listen_port))
# # Suspend execution until debugger attaches
# debugpy.wait_for_client()
# # Break into debugger for user control
# breakpoint()  # or debugpy.breakpoint() on 3.6 and below
###############################################################################

# global variable to simulate memory
filename = os.environ.get("PROGRAM")
inst_memory = pyelf.load_memory(filename)
for padding in range(2):
    inst_memory.append(0)

async def continuously_update_pc(dut):
    while True:
        await RisingEdge(dut.clk)
        await Timer(0.001,units="ns") # making sure it will evaluate after the simulation
        
        if dut.rib_pc_addr_o.value != "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx": # checking signal validity
            simulated_addr = (dut.rib_pc_addr_o.value.integer - 0x80000000) // 4 # each position in inst_memory has 4 bytes
            dut.rib_pc_data_i.value = inst_memory[simulated_addr]

memory = [0]*65536 # 256kB
async def continuously_update_memory(dut):
    while True:
        await RisingEdge(dut.clk)
        await Timer(0.001,units="ns") # making sure it will evaluate after the simulation
        
            
        simulated_addr = dut.rib_ex_addr_o.value.integer // 4
        simulated_addr = simulated_addr % 65536
            
        if dut.rib_ex_req_o.value == 1:
            if dut.rib_ex_we_o == 1:
                memory[simulated_addr] = dut.rib_ex_data_o.value

        dut.rib_ex_data_i.value = memory[simulated_addr]
            

@cocotb.test()
async def tinyrisc_test(dut):
    dut._log.info("Initializing...")
    
    # Define register file interface
    rd_addr = dut.u_regs.waddr_i
    rd_data = dut.u_regs.wdata_i
    rd_we = dut.u_regs.we_i

    # Define PC and instruction interface
    current_pc = dut.rib_pc_addr_o
    current_inst = dut.rib_pc_data_i

    # initialize variable pipeline as zero
    delayed_pc_1 = 0
    delayed_pc_2 = 0
    delayed_inst_1 = 0
    delayed_inst_2 = 0

    # degine memory interface
    mem_addr = dut.rib_ex_addr_o
    mem_data_i = dut.rib_ex_data_i
    mem_data_o = dut.rib_ex_data_o
    mem_req = dut.rib_ex_req_o
    mem_we = dut.rib_ex_we_o

    cocotb.start_soon(Clock(dut.clk, 1, units="ns").start())
    cocotb.start_soon(continuously_update_pc(dut))
    cocotb.start_soon(continuously_update_memory(dut))

    dut._log.info("\nReseting dut...")
    dut.rst.value = 0

    # jtag (not used)
    dut.jtag_reg_addr_i.value = 0
    dut.jtag_reg_data_i.value = 0
    dut.jtag_reg_we_i.value = 0
    # dut.jtag_reg_data_o

    for reg in dut.u_regs.regs:
        reg.value = 0

    await Timer(4, units="ns")

    # reset changes value at faling adge
    await Timer(0.5, units="ns")
    dut.rst.value = 1
    await Timer(0.5, units="ns")
    
    dut._log.info("\ndut finished reset.")

    lines = []
    with open("processor.trace", "w") as trace_file:
        
        for i in range(30):
            await RisingEdge(dut.clk)
            # await Timer(0.001, units="ns")

            # print(f"mem_addr:{dut.rib_ex_addr_o.value}\n"
            #       f"mem_data_o:{dut.rib_ex_data_o.value}\n"
            #       f"mem_data_i:{dut.rib_ex_data_i.value}\n"
            #       f"mem_req_o:{dut.rib_ex_req_o.value}\n"
            #       f"mem_we_o:{dut.rib_ex_we_o.value}\n"
            #       f"pc:{dut.rib_pc_addr_o.value.integer:x}\n"
            #       f"inst:{dut.rib_pc_data_i.value.integer:x}\n")


            #############################
            # branches are an exception #
            #############################
            if delayed_inst_2 & 0b1111111 == 0b1100011: # branch instruction opcode
                
                # we need to detect if the brach is an instruction that will be cancelled
                # the way to do this is detecting a jump, which means a PC change different than 4
                if (current_pc.value.integer - delayed_pc_1 == 4 and
                    delayed_pc_1 - delayed_pc_2 == 4
                ):
                    line = f"{delayed_pc_2:#010x} ({delayed_inst_2:#010x})\n"
                    lines.append(line)

            # if there is a commit in the register file or a memory access
            if rd_we.value == 1 or mem_req.value == 1:
                
                line = f"{delayed_pc_2:#010x} ({delayed_inst_2:#010x})"
                
                # tinyriscv writes to the register file even if addr is zero
                if rd_we.value == 1 and rd_addr.value != 0:
                    line += f" x{rd_addr.value.integer:<2} {rd_data.value.integer:#010x}"

                if mem_req.value == 1:
                    line += f" mem {mem_addr.value.integer:#010x} "
                    if mem_we.value == 1:
                        line += f"{mem_data_o.value.integer:#010x}"
                
                line += "\n"
                lines.append(line)

                if delayed_inst_2 == 0x6f:
                    break
        
            delayed_pc_2 = delayed_pc_1
            delayed_pc_1 = current_pc.value.integer

            delayed_inst_2 = delayed_inst_1
            delayed_inst_1 = current_inst.value.integer


        for line in lines:
            trace_file.write(line)

    await Timer(1, units="ns") # fill last column of waveform viewer
                