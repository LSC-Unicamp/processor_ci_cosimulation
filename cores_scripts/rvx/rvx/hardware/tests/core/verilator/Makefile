# ----------------------------------------------------------------------------
# Copyright (c) 2020-2025 RVX contributors
#
# This work is licensed under the MIT License, see LICENSE file for details.
# SPDX-License-Identifier: MIT
# ----------------------------------------------------------------------------

ifeq ($(VERILATOR_ROOT),)
VERILATOR = verilator
else
export VERILATOR_ROOT
VERILATOR = $(VERILATOR_ROOT)/bin/verilator
endif

VERILATOR_OPTS ?= -f vargs.vc --trace-fst -cc --exe --build --trace \
                  unit_tests.v vcfg.vlt main.cpp argparse.cpp \
                  ram_init.cpp \
                  -o unit_tests

default:
	$(VERILATOR) $(VERILATOR_OPTS)

clean:
	-rm -rf obj_dir *.log *.dmp *.vpd core dump
