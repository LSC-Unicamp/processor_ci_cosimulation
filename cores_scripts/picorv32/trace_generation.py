def generate_trace(pc_and_instructions, rd_addr_and_value, mem_accesses):
# For each PC and instruction the corresponding commit is associated. For example:
# If the instruction writes to a register, the register number and write value are logged
# if the instruction is a branch, only the PC is logged
#
# The inputs are lists of tuples:
# pc_and_instructions.append((raw_addr, inst))
# rd_addr_and_value.append((rd_addr, rd_value))
# mem_accesses.append((raw_addr, mem_wdata))

    lines = []
    i = 0 # rd_addr_and_value index
    j = 0 # mem_accesses index
    for item in pc_and_instructions:
        pc, inst = item
        
        line = f"{pc:#010x} ({inst:#010x})"

        # if the instruction is not a branch, not a store and does not write to zero,
        # there is a commit in the register file
        if ( (inst & 0b1111111) != 0b1100011 and # branch
            (inst & 0b1111111) != 0b0100011 and # store
            (inst & 0b111110000000) != 0 # rd_addr == 0
            ):
            rd_address, rd_value = rd_addr_and_value[i]
            line += f" x{rd_address:<2} {rd_value:#010x}"
            i+= 1


        # if it is a store or a load
        if ((inst & 0b1111111) == 0b0100011 or # store
            (inst & 0b1111111) == 0b0000011 # load
        ):
            
            # just like with the register file, it is possible that
            # the memory accesses have finished
            # if j < len(mem_accesses):
            raw_addr, mem_wdata = mem_accesses[j]

            line += f" mem {raw_addr:#010x}"
            
            # if it is a store, we need to add the data that was written
            # the data must not have leading zeros if is is a byte or half
            if (inst & 0b1111111) == 0b0100011: # store
                
                if  inst & 0b111000000000000 == 0b010000000000000: # store word
                    line += f" {mem_wdata:#010x}"
                elif inst & 0b111000000000000 == 0b001000000000000: # store half
                    line += f" {mem_wdata:#06x}"
                elif inst & 0b111000000000000 == 0b000000000000000: # store byte
                    line += f" {mem_wdata:#04x}"

            j += 1

        line += "\n"

        lines.append(line)
            
        if (inst == 0x6f): # finish in infinite loop
            break

    return lines