# Makefile

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

VERILOG_INCLUDE_DIRS = $(PWD)/tinyriscv/rtl/core/

# VERILOG_SOURCES += simple_verilog.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/clint.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/csr_reg.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/ctrl.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/div.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/ex.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/id_ex.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/id.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/if_id.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/pc_reg.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/regs.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/rib.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/core/tinyriscv.v
VERILOG_SOURCES += $(PWD)/tinyriscv/rtl/utils/gen_dff.v

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = tinyriscv
# TOPLEVEL = top

# MODULE is the basename of the Python test file(s)
MODULE = cocotb_test



# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim