# Makefile

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

# VERILOG_INCLUDE_DIRS = $(PWD)/

# VERILOG_SOURCES += simple_verilog.v
VERILOG_SOURCES += $(PWD)/riskow/cpu/alu.v
VERILOG_SOURCES += $(PWD)/riskow/cpu/comp.v
VERILOG_SOURCES += $(PWD)/riskow/cpu/instruction_decoder.v
VERILOG_SOURCES += $(PWD)/riskow/cpu/program_counter.v
VERILOG_SOURCES += $(PWD)/riskow/cpu/register_bank.v
VERILOG_SOURCES += $(PWD)/riskow/cpu/cpu.v

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = CPU
# TOPLEVEL = top

# MODULE is the basename of the Python test file(s)
MODULE = cocotb_test


# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim