import trace_comparator_utils as utils
import subprocess
import argparse

parser = argparse.ArgumentParser(description="Trace comparison script.")

parser.add_argument(
    "-c",
    "--core",
    type=str,
    help="Specify the core to use.")
parser.add_argument(
    "-p",
    "--path",
    type=str,
    help="Specify the path to the repository.",
    default="/eda/processor_ci_cosimulation"
)    
args = parser.parse_args()
core = args.core
path = args.path


programs = utils.list_files_without_extension(f"{path}/programs/")
# programs = ["013-jalr"]
for program in programs:

    print(f"\033[34mCOMPARING TRACES FOR {program}...\033[0m")
    subprocess.run([f"spike --isa=rv32i --log-commits -m0x7ffff000:0x3000,0:0x1000 -l --instructions 100  {path}/programs/{program}.elf 2>traces/spike.{program}.trace"], shell=True, cwd=f"{path}/spike")
    
    # exeptions because they do not have write strobe to indicate memory accesses
    if core == "riskow" or core == "fedar-f1-rv64im":
        subprocess.run(["python3", "parse_trace_regfile.py", f"traces/spike.{program}.trace", f"traces/spike.{program}.parsed"],cwd=f"{path}/spike")
    else:
        subprocess.run(["python3", "parse_trace.py", f"traces/spike.{program}.trace", f"traces/spike.{program}.parsed"],cwd=f"{path}/spike")
    
    
    trace1 = utils.dictionarize_trace(f"{path}/spike/traces/spike.{program}.parsed")


    subprocess.run(
    ["bash", "-c", f"source {path}/venv/bin/activate && make PROGRAM={path}/programs/{program}.elf COCOTB_LOG_LEVEL=WARNING"], # "COCOTB_LOG_LEVEL=WARNING"
    cwd=f"{path}/cores_scripts/{core}")

    trace2 = utils.dictionarize_trace(f"{path}/cores_scripts/{core}/processor.trace")

    diffs = utils.compare_traces(trace1, trace2)

    if not diffs:
        print(f"\033[32mCOMPARISON FINISHED ({program}): No differences found between the traces.\033[0m")
    else:
        print(f"\033[31mCOMPARISON FINISHED ({program}): Differences found between the traces.\033[0m")