module cocotb_iverilog_dump();
initial begin
    $dumpfile("sim_build/rvx_core.fst");
    $dumpvars(0, rvx_core);
end
endmodule
