# Makefile

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

VERILOG_INCLUDE_DIRS = $(PWD)/AUK-V-Aethia/rtl/wishbone/

# VERILOG_SOURCES += simple_verilog.v
VERILOG_SOURCES += $(PWD)/AUK-V-Aethia/rtl/core/aukv_alu.v
VERILOG_SOURCES += $(PWD)/AUK-V-Aethia/rtl/core/aukv_csr_regfile.v
VERILOG_SOURCES += $(PWD)/AUK-V-Aethia/rtl/core/aukv_decode.v
VERILOG_SOURCES += $(PWD)/AUK-V-Aethia/rtl/core/aukv_execute.v
VERILOG_SOURCES += $(PWD)/AUK-V-Aethia/rtl/core/aukv_fetch.v
VERILOG_SOURCES += $(PWD)/AUK-V-Aethia/rtl/core/aukv_gpr_regfilie.v
VERILOG_SOURCES += $(PWD)/AUK-V-Aethia/rtl/core/aukv_mem.v
VERILOG_SOURCES += $(PWD)/AUK-V-Aethia/rtl/core/aukv.v

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = aukv
# TOPLEVEL = top

# MODULE is the basename of the Python test file(s)
MODULE = cocotb_test


# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim