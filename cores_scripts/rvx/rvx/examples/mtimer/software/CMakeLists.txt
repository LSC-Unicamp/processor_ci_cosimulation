# -----------------------------------------------------------------------------
# Copyright (c) 2020-2025 RVX contributors
#
# This work is licensed under the MIT License, see LICENSE file for details.
# SPDX-License-Identifier: MIT
# -----------------------------------------------------------------------------

# Minimal CMake version required
cmake_minimum_required(VERSION 3.15)

# Name of the executable to be generated
set(APP_NAME "mtimer_demo")

# Inform the same value provided for the MEMORY_SIZE parameter of rvx
set(MEMORY_SIZE 8K)

# Space reserved for the stack (in bytes)
set(STACK_SIZE 0K)

# Space reserved for the heap (in bytes)
set(HEAP_SIZE 0K)

# Path to RVX linker script
set(LINKER_SCRIPT ${CMAKE_SOURCE_DIR}/link.ld)

# RISC-V ISA features present in RVX
set(APP_ARCH rv32izicsr)

# Application Binary Interface in use: 32-bit Generic ELF, Soft Floating-Point
set(APP_ABI ilp32)

# C++ standard in use
set(CMAKE_CXX_STANDARD 11)

# C++ optimization level
set(CMAKE_CXX_FLAGS "-O2")

# C standard in use
set(CMAKE_C_STANDARD 11)

# C optimization level
set(CMAKE_C_FLAGS "-O2")

# Cross-Compiling for a generic microcontroller
set(CMAKE_SYSTEM_NAME Generic)

# Tell CMake not to try to link executables during its checks
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# The suffix for executables on this platform.
set(CMAKE_EXECUTABLE_SUFFIX ".elf")

# Get more verbose output from Makefile builds
set(CMAKE_VERBOSE_MAKEFILE OFF)

# Do not show target completion messages
set(CMAKE_TARGET_MESSAGES OFF)

# Give TOOLCHAIN_PREFIX a default value if its definition is missing
if(NOT DEFINED TOOLCHAIN_PREFIX)
  set(TOOLCHAIN_PREFIX riscv32-unknown-elf-)
endif()

# RISC-V Assembler
set(CMAKE_ASM_COMPILER ${TOOLCHAIN_PREFIX}gcc)

# RISC-V C Compiler
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc)

# RISC-V C++ Compiler
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++)

# RISC-V Object Copy
set(CMAKE_OBJCOPY ${TOOLCHAIN_PREFIX}objcopy)

# RISC-V Object Dump
set(CMAKE_OBJDUMP ${TOOLCHAIN_PREFIX}objdump)

# Find GCC
find_program(PATH_CMAKE_C_COMPILER
  ${CMAKE_C_COMPILER}
  PATHS ENV PATH
  REQUIRED
)

# Print whether GCC was found
if(NOT PATH_CMAKE_C_COMPILER)
  message(FATAL_ERROR "[ERROR] Could not find CMAKE_C_COMPILER: " ${PATH_CMAKE_C_COMPILER})
else()
  message(STATUS "Using RISC-V GCC: " ${PATH_CMAKE_C_COMPILER})
endif()

# Create the project and set languages used
project(${APP_NAME} LANGUAGES C CXX ASM)

# Obtain LibSteel
include(FetchContent)

FetchContent_Declare(steel
  GIT_REPOSITORY https://github.com/rafaelcalcada/libsteel.git
  GIT_TAG v2.0
)

FetchContent_MakeAvailable(steel)

# Set compiler definitions
add_compile_definitions(NO_STARTUP_FILES=1)

# Source files
set(SOURCES
  ${CMAKE_SOURCE_DIR}/bootstrap.S
  ${CMAKE_SOURCE_DIR}/main.c
)

# The executable
add_executable(${APP_NAME}.elf ${SOURCES})

# Set GCC flags
target_compile_options(${APP_NAME}.elf
  PRIVATE

  # Enables all the warnings about constructions that some users consider questionable
  -Wall

  # Enables some extra warning flags that are not enabled by -Wall
  -Wextra

  # Issue all the warnings demanded by strict ISO C and ISO C++
  -Wpedantic

  # Do not generate unaligned memory accesses (RVX does not support unaligned accesses)
  -mstrict-align

  # Specify the supported RISC-V features present in RVX
  -march=${APP_ARCH}

  # Specify the Application Binary Interface supported by RVX
  -mabi=${APP_ABI}

  # Tells GCC that this project does not run on top of an operating system
  -ffreestanding

  # Create sections for functions
  -ffunction-sections

  # Create sections for data
  -fdata-sections
)

# Set GNU ld flags
target_link_options(${APP_NAME}.elf
  PRIVATE

  # Linker script for this project
  -T${LINKER_SCRIPT}

  # Enable garbage colletion (removal of sections never used)
  -Wl,--gc-sections

  # Generate a Map file with linking information
  -Wl,-Map=${APP_NAME}.map

  # Do not generate unaligned memory accesses (RVX does not support it)
  -mstrict-align

  # Specify the supported RISC-V features present in RVX
  -march=${APP_ARCH}

  # Specify the Application Binary Interface supported by RVX
  -mabi=${APP_ABI}

  # Set symbol needed by FreeRTOS
  -Wl,--defsym=__memory_size=${MEMORY_SIZE}

  # Set symbol needed by FreeRTOS
  -Wl,--defsym=__stack_size=${STACK_SIZE}

  # Set symbol needed by FreeRTOS
  -Wl,--defsym=__heap_size=${HEAP_SIZE}

  # Do not link to standard libs such as libc and crt0
  -nostdlib
)

# Set compiler definitions
add_compile_definitions(CPU_FREQUENCY=${CLOCK_FREQUENCY})

# Link to libsteel
target_link_libraries(${APP_NAME}.elf steel)

# Set dependency on linker script
set_target_properties(${APP_NAME}.elf PROPERTIES
  LINK_DEPENDS "${LINKER_SCRIPT}"
)

# Set additional files that needs to be removed when cleaning
set_property(TARGET ${APP_NAME}.elf
  APPEND PROPERTY ADDITIONAL_CLEAN_FILES
  ${APP_NAME}.bin
  ${APP_NAME}.hex
  ${APP_NAME}.objdump
  ${APP_NAME}.map
)

# Generate Memory Init File (.hex) and disassembly after build
add_custom_target(rvx_mem_file_generation ALL
  COMMAND ${CMAKE_OBJCOPY} -O binary ${APP_NAME}.elf ${APP_NAME}.bin
  COMMAND ${CMAKE_OBJCOPY} -O verilog ${APP_NAME}.elf --verilog-data-width=4 ${APP_NAME}.hex
  COMMAND ${CMAKE_OBJDUMP} -D ${APP_NAME}.elf > ${APP_NAME}.objdump
  COMMAND echo ""
  COMMAND echo "Memory init file:   build/${APP_NAME}.hex"
  COMMAND echo "Binary executable:  build/${APP_NAME}.elf"
  COMMAND echo "Disassembly:        build/${APP_NAME}.objdump"
  COMMAND echo ""
  COMMAND echo 'Memory usage report \(MEMORY_SIZE = ${MEMORY_SIZE}\)'
  COMMAND ${TOOLCHAIN_PREFIX}size -G ${APP_NAME}.elf
  COMMAND echo ""
  DEPENDS ${APP_NAME}.elf
)
