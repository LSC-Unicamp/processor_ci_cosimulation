import trace_comparator_utils as utils
import subprocess

programs = utils.list_files_without_extension("../programs/")
programs = ["012-jal"]
for program in programs:

    print(f"\033[34mCOMPARING TRACES FOR {program}...\033[0m")
    subprocess.run([f"spike --isa=rv32i --log-commits -m0x7ffff000:0x3000,0:0x1000 -l --instructions 100  ../programs/{program}.elf 2>traces/spike.{program}.trace"], shell=True, cwd="../spike")
    subprocess.run(["python3", "parse_trace_regfile.py", f"traces/spike.{program}.trace", f"traces/spike.{program}.parsed"],cwd="../spike")
    trace1 = utils.dictionarize_trace(f"../spike/traces/spike.{program}.parsed")

    subprocess.run(["make", f"PROGRAM=../programs/{program}.elf", "COCOTB_LOG_LEVEL=WARNING"], cwd="../fedar_trace") # "COCOTB_LOG_LEVEL=WARNING"
    trace2 = utils.dictionarize_trace("../fedar_trace/processor.trace")

    diffs = utils.compare_traces(trace1, trace2)

    if not diffs:
        print(f"\033[32mCOMPARISON FINISHED ({program}): No differences found between the traces.\033[0m")
    else:
        print(f"\033[31mCOMPARISON FINISHED ({program}): Differences found between the traces.\033[0m")