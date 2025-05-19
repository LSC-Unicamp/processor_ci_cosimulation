# Makefile

# defaults
SIM ?= icarus
# SIM ?= verilator
TOPLEVEL_LANG ?= verilog

# VERILOG_INCLUDE_DIRS = $(PWD)/tinyriscv/rtl/core/

# VERILOG_SOURCES += simple_verilog.v
VERILOG_SOURCES += $(PWD)/rvx/hardware/rvx_core.v

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = rvx_core

# MODULE is the basename of the Python test file(s)
MODULE = cocotb_test



# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim