import re
import os

def dictionarize_trace(file_path):

    with open(file_path, "r") as file:
        trace = file.read()

    # Storage for parsed instructions
    parsed = []

    # Regular expression patterns
    pattern = re.compile(
        r"(?P<pc>0x[0-9a-fA-F]+)\s+\((?P<inst>0x[0-9a-fA-F]+)\)(?:\s+(?P<target>[xmem\d]+)\s+(?P<data>0x[0-9a-fA-F]+)(?:\s+(?P<extra_target>[xmem\d]+)\s+(?P<extra_data>0x[0-9a-fA-F]+)?)?)?"
    )

    # Process each line
    for line in trace.strip().splitlines():
        match = pattern.match(line)
        if match:
            pc = int(match.group("pc"), 16)
            inst = int(match.group("inst"), 16)
            target = None
            data = None
            mem_addr = None
            mem_data = None

            first_target = match.group("target")
            first_data = match.group("data")
            second_target = match.group("extra_target")
            second_data = match.group("extra_data")

            if first_target:
                if first_target.startswith('x'):
                    target = int(first_target[1:])
                    data = int(first_data, 16)
                elif first_target == 'mem':
                    mem_addr = int(first_data, 16)
                    if second_data:  # If there is a memory value after address
                        mem_data = int(second_data, 16)

            if second_target:
                if second_target.startswith('x'):
                    target = int(second_target[1:])
                    data = int(second_data, 16)
                elif second_target == 'mem':
                    mem_addr = int(second_data, 16)

            parsed.append({
                "pc": pc,
                "instruction": inst,
                "target_register": target,
                "register_data": data,
                "memory_address": mem_addr,
                "memory_data": mem_data
            })
    return parsed

def compare_traces(trace1, trace2):
    differences = []

    # Compare traces element-by-element
    for idx, (instr1, instr2) in enumerate(zip(trace1, trace2)):
        diff = {"index": idx, "pc": instr1["pc"], "differences": {}}

        # Compare each field
        for key in ["instruction", "target_register", "register_data", "memory_address", "memory_data"]:
            val1 = instr1.get(key)
            val2 = instr2.get(key)
            if key == "memory_address" and val1 is not None and val2 is not None:
                # Allow memory addresses to differ by multiples of 4
                if val1 // 4 != val2 // 4:
                    diff["differences"][key] = (val1, val2)
            elif val1 != val2:
                diff["differences"][key] = (val1, val2)

        if diff["differences"]:
            differences.append(diff)
            instr1_hex = {key: hex(value) if isinstance(value, int) else value for key, value in instr1.items()}
            instr2_hex = {key: hex(value) if isinstance(value, int) else value for key, value in instr2.items()}
    
            print(f"  Trace1: {instr1_hex}")
            print(f"  Trace2: {instr2_hex}")
            for field, (v1, v2) in diff["differences"].items():
                print(f"  {field}: {v1 if v1 is None else f'{v1:#x}'} != {v2 if v2 is None else f'{v2:#x}'}")

    # Handle if traces have different lengths
    if len(trace1) != len(trace2):
        print(f"Warning: trace lengths differ: {len(trace1)} vs {len(trace2)}")

    return differences

def list_files_without_extension(folder_path, extension=".elf"):
    file_list = []
    for filename in os.listdir(folder_path):
        if filename.endswith(extension):
            name_without_extension = filename[:-len(extension)]
            file_list.append(name_without_extension)
    return file_list
