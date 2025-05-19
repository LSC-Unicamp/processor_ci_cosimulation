# Makefile

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

VERILOG_INCLUDE_DIRS = $(PWD)/fedar-f1-rv64im/src/

# VERILOG_SOURCES += simple_verilog.v
VERILOG_SOURCES += $(PWD)/fedar-f1-rv64im/src/CPU.v

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = CPU

# MODULE is the basename of the Python test file(s)
MODULE = cocotb_test


# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim