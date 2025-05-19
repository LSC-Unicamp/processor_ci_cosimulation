# Makefile

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

# VERILOG_INCLUDE_DIRS = $(PWD)/AUK-V-Aethia/rtl/wishbone/

# VERILOG_SOURCES += simple_verilog.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/ALU.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/control_unit.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/core_wb.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/core.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/csr_unit.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/forwarding_unit.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/hazard_detection_unit.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/imm_decoder.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/load_store_unit.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/muldiv/divider_32.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/muldiv/MUL_DIV_out.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/muldiv/MULDIV_ctrl.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/muldiv/MULDIV_in.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/muldiv/MULDIV_top.v
VERILOG_SOURCES += $(PWD)/RISC-V/core/muldiv/multiplier_32.v

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = core
# TOPLEVEL = top

# MODULE is the basename of the Python test file(s)
MODULE = cocotb_test


# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim