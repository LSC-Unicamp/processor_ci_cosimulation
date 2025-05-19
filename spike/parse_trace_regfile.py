import sys
import argparse
import re

# Create the parser
parser = argparse.ArgumentParser(description="Spike Trace Parser")

# Add arguments
parser.add_argument("program", help="program path")
parser.add_argument("output", help="output file path")
args = parser.parse_args()

program = args.program
with open (f"{program}", "r") as read_file:
    lines = read_file.readlines()

# remove lines that are not used
filtered_lines = []
found_0x6f = False
for line in lines:
    if ("warning" not in line and
        ": 0x00002" not in line and 
        "3 0x00002" not in line and
        "core   0: 0x" not in line
        ):
        if "0x0000006f" in line:
            if not found_0x6f:
                filtered_lines.append(line)
                found_0x6f = True
        else:
            filtered_lines.append(line)

# remove mem and everything after it
cleaned_lines = [re.sub(r'\s*mem\s+0x[0-9a-fA-F]+.*', '', line) for line in filtered_lines]
filtered_lines = cleaned_lines

# remove core  0: 3
stripped_lines = []
for line in filtered_lines:
    line = line.replace("core   0: 3", "").lstrip()
    stripped_lines.append(line)

# remove last 6 lines, tohost code
# for i in range(6):
#     stripped_lines.pop()
output = args.output
with open (output, "w") as write_file:
    for line in stripped_lines:
        write_file.write(line)
