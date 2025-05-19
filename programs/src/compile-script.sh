#!/bin/bash

# Create the build directory if it doesn't exist
mkdir -p build

# Compile each .s file
for file in *.s; do
    # Get the base name (without extension)
    base_name=$(basename "$file" .s)

    # Compile using riscv32-unknown-elf-gcc
    riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 -nostdlib -ffreestanding -Ttext=0x80000000 -o "build/${base_name}.elf" "$file"
    
    # Check if compilation was successful
    if [ $? -eq 0 ]; then
        echo "Compiled $file -> build/${base_name}.elf"
    else
        echo "Failed to compile $file"
    fi
done
