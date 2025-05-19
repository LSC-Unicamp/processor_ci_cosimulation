module cocotb_iverilog_dump();
initial begin
    $dumpfile("sim_build/aukv.fst");
    $dumpvars(0, aukv);
end
endmodule
