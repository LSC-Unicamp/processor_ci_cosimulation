module cocotb_iverilog_dump();
initial begin
    $dumpfile("sim_build/CPU.fst");
    $dumpvars(0, CPU);
end
endmodule
