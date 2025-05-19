$date
	Mon May 19 14:37:28 2025
$end
$version
	Icarus Verilog
$end
$timescale
	1ps
$end
$scope module core $end
$var wire 2 ! addr_bits_MEM [1:0] $end
$var wire 32 " aluout_MEM [31:0] $end
$var wire 32 # aluout_WB [31:0] $end
$var wire 1 $ clk_i $end
$var wire 12 % csr_addr_EX [11:0] $end
$var wire 12 & csr_addr_MEM [11:0] $end
$var wire 12 ' csr_addr_WB [11:0] $end
$var wire 1 ( csr_stall $end
$var wire 1 ) csr_wen_ID $end
$var wire 32 * data1_EX [31:0] $end
$var wire 32 + data2_EX [31:0] $end
$var wire 32 , data2_MEM [31:0] $end
$var wire 1 - data_err_i $end
$var wire 32 . data_i [31:0] $end
$var wire 1 / data_req_o $end
$var wire 1 0 data_stall_i $end
$var wire 1 1 data_wen_o $end
$var wire 21 2 ex_EX [20:0] $end
$var wire 16 3 fast_irq_i [15:0] $end
$var wire 32 4 imm_EX [31:0] $end
$var wire 32 5 imm_MEM [31:0] $end
$var wire 32 6 imm_WB [31:0] $end
$var wire 1 7 instr_access_fault_i $end
$var wire 1 8 instr_addr_misaligned $end
$var wire 32 9 instr_addr_o [31:0] $end
$var wire 32 : instr_i [31:0] $end
$var wire 1 ; meip_i $end
$var wire 3 < mem_EX [2:0] $end
$var wire 3 = mem_MEM [2:0] $end
$var wire 32 > memout_WB [31:0] $end
$var wire 1 ? mret_WB $end
$var wire 1 @ msip_i $end
$var wire 1 A mtip_i $end
$var wire 1 B muldiv_stall_EX $end
$var wire 1 C mux2_ctrl_IF $end
$var wire 1 D mux3_ctrl_IF $end
$var wire 1 E mux_ctrl_ID $end
$var wire 32 F pc_EX [31:0] $end
$var wire 32 G pc_ID [31:0] $end
$var wire 32 H pc_MEM [31:0] $end
$var wire 5 I rd_EX [4:0] $end
$var wire 5 J rd_MEM [4:0] $end
$var wire 5 K rd_WB [4:0] $end
$var wire 1 L reset_i $end
$var wire 5 M rs1_EX [4:0] $end
$var wire 5 N rs2_EX [4:0] $end
$var wire 1 O stall_EX $end
$var wire 1 P stall_ID $end
$var wire 1 Q stall_IF $end
$var wire 1 R take_branch $end
$var wire 7 S wb_EX [6:0] $end
$var wire 7 T wb_MEM [6:0] $end
$var wire 7 U wb_WB [6:0] $end
$var wire 5 V rs2_ID [4:0] $end
$var wire 5 W rs1_ID [4:0] $end
$var wire 1 X rf_wen_WB $end
$var wire 5 Y rd_ID [4:0] $end
$var wire 32 Z pc_i [31:0] $end
$var wire 2 [ op_mul [1:0] $end
$var wire 2 \ op_div [1:0] $end
$var wire 2 ] mux_ctrl_WB [1:0] $end
$var wire 32 ^ mux8_o_EX [31:0] $end
$var wire 1 _ mux8_ctrl_EX $end
$var wire 32 ` mux7_o_EX [31:0] $end
$var wire 1 a mux7_ctrl_EX $end
$var wire 32 b mux6_o_EX [31:0] $end
$var wire 2 c mux6_ctrl_EX [1:0] $end
$var wire 32 d mux5_o_EX [31:0] $end
$var wire 1 e mux5_ctrl_EX $end
$var wire 32 f mux4_o_IF [31:0] $end
$var wire 32 g mux4_o_EX [31:0] $end
$var wire 1 h mux4_ctrl_IF $end
$var wire 2 i mux4_ctrl_EX [1:0] $end
$var wire 32 j mux3_o_IF [31:0] $end
$var wire 21 k mux3_o_ID [20:0] $end
$var wire 32 l mux3_o_EX [31:0] $end
$var wire 1 m mux3_ctrl_EX $end
$var wire 32 n mux2_o_IF [31:0] $end
$var wire 3 o mux2_o_ID [2:0] $end
$var wire 32 p mux2_o_EX [31:0] $end
$var wire 2 q mux2_ctrl_EX [1:0] $end
$var wire 32 r mux1_o_IF [31:0] $end
$var wire 7 s mux1_o_ID [6:0] $end
$var wire 32 t mux1_o_EX [31:0] $end
$var wire 1 u mux1_ctrl_IF $end
$var wire 1 v mux1_ctrl_EX $end
$var wire 1 w muldiv_start $end
$var wire 1 x muldiv_sel $end
$var wire 1 y muldiv_done_EX $end
$var wire 1 z mret_ID $end
$var wire 1 { misaligned_access $end
$var wire 32 | mepc [31:0] $end
$var wire 32 } memout [31:0] $end
$var wire 1 ~ mem_wen_EX $end
$var wire 2 !" mem_length_WB [1:0] $end
$var wire 2 "" mem_length_EX [1:0] $end
$var wire 1 #" load_sign $end
$var wire 32 $" irq_addr [31:0] $end
$var wire 1 %" irq_ack_o $end
$var wire 32 &" imm_dec_o [31:0] $end
$var wire 30 '" imm_dec_i [29:0] $end
$var wire 1 (" hazard_stall $end
$var wire 4 )" data_wmask_o [3:0] $end
$var wire 32 *" data_o [31:0] $end
$var wire 32 +" data_addr_o [31:0] $end
$var wire 1 ," ctrl_unit_wb_sign $end
$var wire 1 -" ctrl_unit_wb_rf_wen $end
$var wire 2 ." ctrl_unit_wb_mux [1:0] $end
$var wire 1 /" ctrl_unit_wb_csr_wen $end
$var wire 2 0" ctrl_unit_op_mul [1:0] $end
$var wire 2 1" ctrl_unit_op_div [1:0] $end
$var wire 1 2" ctrl_unit_muldiv_start $end
$var wire 1 3" ctrl_unit_muldiv_sel $end
$var wire 1 4" ctrl_unit_mem_wen $end
$var wire 2 5" ctrl_unit_mem_len [1:0] $end
$var wire 1 6" ctrl_unit_illegal_instr $end
$var wire 1 7" ctrl_unit_ex_mux8 $end
$var wire 1 8" ctrl_unit_ex_mux7 $end
$var wire 2 9" ctrl_unit_ex_mux6 [1:0] $end
$var wire 1 :" ctrl_unit_ex_mux5 $end
$var wire 1 ;" ctrl_unit_ex_mux3 $end
$var wire 1 <" ctrl_unit_ex_mux1 $end
$var wire 1 =" ctrl_unit_ecall $end
$var wire 1 >" ctrl_unit_ebreak $end
$var wire 2 ?" ctrl_unit_csr_alu_func [1:0] $end
$var wire 4 @" ctrl_unit_alu_func [3:0] $end
$var wire 1 A" ctrl_unit_J $end
$var wire 1 B" ctrl_unit_B $end
$var wire 1 C" csr_wen_WB $end
$var wire 1 D" csr_wen_MEM $end
$var wire 1 E" csr_wen_EX $end
$var wire 32 F" csr_reg_out [31:0] $end
$var wire 32 G" csr_pcin_mux2_o [31:0] $end
$var wire 32 H" csr_pcin_mux1_o [31:0] $end
$var wire 1 I" csr_mem_flush $end
$var wire 1 J" csr_if_flush $end
$var wire 1 K" csr_id_flush $end
$var wire 1 L" csr_ex_flush $end
$var wire 32 M" csr_alu_out [31:0] $end
$var wire 2 N" csr_alu_func [1:0] $end
$var wire 12 O" csr_addr_ID [11:0] $end
$var wire 32 P" branch_target_addr [31:0] $end
$var wire 32 Q" branch_addr_calc [31:0] $end
$var wire 32 R" aluout_EX [31:0] $end
$var wire 4 S" alu_func [3:0] $end
$var wire 32 T" R_EX [31:0] $end
$var wire 1 U" L $end
$var wire 1 V" J $end
$var wire 1 W" B $end
$var reg 2 X" EXMEM_preg_addr_bits [1:0] $end
$var reg 32 Y" EXMEM_preg_aluout [31:0] $end
$var reg 12 Z" EXMEM_preg_csr_addr [11:0] $end
$var reg 32 [" EXMEM_preg_data2 [31:0] $end
$var reg 1 \" EXMEM_preg_dummy $end
$var reg 32 ]" EXMEM_preg_imm [31:0] $end
$var reg 3 ^" EXMEM_preg_mem [2:0] $end
$var reg 1 _" EXMEM_preg_misaligned $end
$var reg 1 `" EXMEM_preg_mret $end
$var reg 32 a" EXMEM_preg_pc [31:0] $end
$var reg 5 b" EXMEM_preg_rd [4:0] $end
$var reg 7 c" EXMEM_preg_wb [6:0] $end
$var reg 12 d" IDEX_preg_csr_addr [11:0] $end
$var reg 32 e" IDEX_preg_data1 [31:0] $end
$var reg 32 f" IDEX_preg_data2 [31:0] $end
$var reg 1 g" IDEX_preg_dummy $end
$var reg 21 h" IDEX_preg_ex [20:0] $end
$var reg 32 i" IDEX_preg_imm [31:0] $end
$var reg 3 j" IDEX_preg_mem [2:0] $end
$var reg 1 k" IDEX_preg_misaligned $end
$var reg 1 l" IDEX_preg_mret $end
$var reg 32 m" IDEX_preg_pc [31:0] $end
$var reg 5 n" IDEX_preg_rd [4:0] $end
$var reg 5 o" IDEX_preg_rs1 [4:0] $end
$var reg 5 p" IDEX_preg_rs2 [4:0] $end
$var reg 7 q" IDEX_preg_wb [6:0] $end
$var reg 1 r" IFID_preg_dummy $end
$var reg 32 s" IFID_preg_instr [31:0] $end
$var reg 32 t" IFID_preg_pc [31:0] $end
$var reg 32 u" MEMWB_preg_aluout [31:0] $end
$var reg 12 v" MEMWB_preg_csr_addr [11:0] $end
$var reg 32 w" MEMWB_preg_imm [31:0] $end
$var reg 32 x" MEMWB_preg_memout [31:0] $end
$var reg 1 y" MEMWB_preg_misaligned $end
$var reg 1 z" MEMWB_preg_mret $end
$var reg 5 {" MEMWB_preg_rd [4:0] $end
$var reg 7 |" MEMWB_preg_wb [6:0] $end
$var reg 32 }" csr_pc_input [31:0] $end
$var reg 32 ~" mux_o_WB [31:0] $end
$var reg 32 !# pc_o [31:0] $end
$var integer 32 "# i [31:0] $end
$scope module ALU $end
$var wire 4 ## func [3:0] $end
$var wire 32 $# src1 [31:0] $end
$var wire 32 %# src2 [31:0] $end
$var wire 5 &# shamt [4:0] $end
$var reg 32 '# alu_out [31:0] $end
$upscope $end
$scope module CSR_UNIT $end
$var wire 1 $ clk_i $end
$var wire 1 (# csr_ex_flush $end
$var wire 1 L" csr_ex_flush_o $end
$var wire 1 )# csr_id_flush $end
$var wire 1 K" csr_id_flush_o $end
$var wire 1 *# csr_if_flush $end
$var wire 1 J" csr_if_flush_o $end
$var wire 1 +# csr_mem_flush $end
$var wire 1 I" csr_mem_flush_o $end
$var wire 12 ,# csr_r_addr_i [11:0] $end
$var wire 32 -# csr_reg_i [31:0] $end
$var wire 12 .# csr_w_addr_i [11:0] $end
$var wire 1 C" csr_wen_i $end
$var wire 1 - data_err_i $end
$var wire 32 /# direct_mode_addr [31:0] $end
$var wire 1 g" ex_dummy_i $end
$var wire 16 0# fast_irq_i [15:0] $end
$var wire 1 7 instr_access_fault_i $end
$var wire 1 8 instr_addr_misaligned_i $end
$var wire 32 1# masked_irq [31:0] $end
$var wire 1 ; meip_i $end
$var wire 1 \" mem_dummy_i $end
$var wire 1 2# mem_wen_i $end
$var wire 32 3# mepc_o [31:0] $end
$var wire 1 k" misaligned_ex $end
$var wire 1 ? mret_wb_i $end
$var wire 1 @ msip_i $end
$var wire 1 A mtip_i $end
$var wire 1 u mux1_ctrl_o $end
$var wire 32 4# pc_i [31:0] $end
$var wire 1 5# pending_exception $end
$var wire 1 L reset_i $end
$var wire 1 R take_branch_i $end
$var wire 32 6# vector_mode_addr [31:0] $end
$var wire 1 7# pending_irq $end
$var wire 1 h mux2_ctrl_o $end
$var wire 1 z mret_id_i $end
$var wire 32 8# irq_addr_o [31:0] $end
$var wire 1 6" illegal_instr_i $end
$var wire 1 =" ecall_i $end
$var wire 1 >" ebreak_i $end
$var reg 1 9# PE_valid $end
$var reg 1 :# STATE $end
$var reg 1 %" ack_o $end
$var reg 32 ;# csr_reg_o [31:0] $end
$var reg 5 <# fast_irq_index [4:0] $end
$var reg 32 =# mcause [31:0] $end
$var reg 32 ># mepc [31:0] $end
$var reg 32 ?# mie [31:0] $end
$var reg 32 @# mip [31:0] $end
$var reg 32 A# mscratch [31:0] $end
$var reg 32 B# mstatus [31:0] $end
$var reg 32 C# mtvec [31:0] $end
$var integer 32 D# i [31:0] $end
$upscope $end
$scope module CTRL_UNIT $end
$var wire 1 >" ebreak_o $end
$var wire 1 =" ecall_o $end
$var wire 32 E# instr_i [31:0] $end
$var wire 1 z mret_o $end
$var wire 7 F# opcode [6:0] $end
$var wire 1 G# mret $end
$var wire 7 H# funct7 [6:0] $end
$var wire 3 I# funct3 [2:0] $end
$var wire 1 J# ecall $end
$var wire 1 K# ebreak $end
$var reg 4 L# ALU_func [3:0] $end
$var reg 1 B" B $end
$var reg 2 M# CSR_ALU_func [1:0] $end
$var reg 1 <" EX_mux1 $end
$var reg 1 ;" EX_mux3 $end
$var reg 1 :" EX_mux5 $end
$var reg 2 N# EX_mux6 [1:0] $end
$var reg 1 8" EX_mux7 $end
$var reg 1 7" EX_mux8 $end
$var reg 1 A" J $end
$var reg 2 O# MEM_len [1:0] $end
$var reg 1 4" MEM_wen $end
$var reg 1 /" WB_csr_wen $end
$var reg 2 P# WB_mux [1:0] $end
$var reg 1 -" WB_rf_wen $end
$var reg 1 ," WB_sign $end
$var reg 1 6" illegal_instr $end
$var reg 1 3" muldiv_sel $end
$var reg 1 2" muldiv_start $end
$var reg 2 Q# op_div [1:0] $end
$var reg 2 R# op_mul [1:0] $end
$upscope $end
$scope module FWD_UNIT $end
$var wire 5 S# exmem_rd [4:0] $end
$var wire 1 T# exmem_wb $end
$var wire 5 U# memwb_rd [4:0] $end
$var wire 1 X memwb_wb $end
$var wire 5 V# rs1 [4:0] $end
$var wire 5 W# rs2 [4:0] $end
$var reg 2 X# mux1_ctrl [1:0] $end
$var reg 2 Y# mux2_ctrl [1:0] $end
$upscope $end
$scope module HZRD_DET_UNIT $end
$var wire 1 U" L_EX $end
$var wire 1 Z# funct3 $end
$var wire 5 [# opcode [4:0] $end
$var wire 5 \# rd_EX [4:0] $end
$var wire 5 ]# rs1 [4:0] $end
$var wire 5 ^# rs2 [4:0] $end
$var wire 1 _# uses_rs1 $end
$var wire 1 `# uses_rs2 $end
$var reg 1 (" hazard_stall $end
$upscope $end
$scope module IMM_DEC $end
$var wire 30 a# instr_in [29:0] $end
$var reg 32 b# imm_out [31:0] $end
$upscope $end
$scope module LS_UNIT $end
$var wire 32 c# addr_i [31:0] $end
$var wire 2 d# addr_offset_i [1:0] $end
$var wire 1 $ clk_i $end
$var wire 32 e# data_i [31:0] $end
$var wire 2 f# length_EX_i [1:0] $end
$var wire 2 g# length_MEM_i [1:0] $end
$var wire 1 U" load_i $end
$var wire 24 h# memout_WB_i [23:0] $end
$var wire 1 k" misaligned_EX_i $end
$var wire 1 _" misaligned_MEM_i $end
$var wire 1 { misaligned_access_o $end
$var wire 32 i# read_data_i [31:0] $end
$var wire 1 L reset_i $end
$var wire 1 ~ wen_i $end
$var wire 32 j# addr_o [31:0] $end
$var wire 1 k# addr_misaligned $end
$var reg 32 l# addr_i_reg [31:0] $end
$var reg 32 m# data_o [31:0] $end
$var reg 32 n# memout_o [31:0] $end
$var reg 4 o# wmask_o [3:0] $end
$upscope $end
$scope module MULDIV $end
$var wire 1 $ clk $end
$var wire 32 p# in_A [31:0] $end
$var wire 32 q# in_B [31:0] $end
$var wire 1 x muldiv_sel $end
$var wire 2 r# op_div [1:0] $end
$var wire 2 s# op_mul [1:0] $end
$var wire 1 L reset $end
$var wire 1 w start $end
$var wire 1 t# reg_muldiv_en $end
$var wire 1 u# reg_AB_en $end
$var wire 32 v# out_mul [31:0] $end
$var wire 32 w# out_div [31:0] $end
$var wire 32 x# out_B_2C [31:0] $end
$var wire 32 y# out_B [31:0] $end
$var wire 32 z# out_A_2C [31:0] $end
$var wire 32 {# out_A [31:0] $end
$var wire 1 |# mux_muldiv_sel $end
$var wire 1 }# mux_muldiv_out_sel $end
$var wire 1 ~# mux_fastres_sel $end
$var wire 32 !$ muldiv_out [31:0] $end
$var wire 1 y muldiv_done $end
$var wire 64 "$ muldiv2 [63:0] $end
$var wire 64 #$ muldiv1 [63:0] $end
$var wire 32 $$ fastres [31:0] $end
$var wire 1 %$ div_start $end
$var wire 1 &$ div_rdy $end
$var wire 32 '$ R [31:0] $end
$var wire 64 ($ QR [63:0] $end
$var wire 64 )$ P [63:0] $end
$var wire 6 *$ AB_status [5:0] $end
$var wire 64 +$ AB [63:0] $end
$var reg 64 ,$ reg_AB [63:0] $end
$var reg 64 -$ reg_muldiv [63:0] $end
$scope module DIV $end
$var wire 32 .$ R [31:0] $end
$var wire 1 $ clk $end
$var wire 32 /$ dividend [31:0] $end
$var wire 32 0$ divisor [31:0] $end
$var wire 1 L reset $end
$var wire 1 %$ start $end
$var wire 1 1$ reg_Rin_en $end
$var wire 1 2$ reg_Q_en $end
$var wire 1 &$ rdy $end
$var wire 1 3$ mux_Rin_sel $end
$var wire 5 4$ mux_A_sel [4:0] $end
$var wire 64 5$ div_out [63:0] $end
$var wire 32 6$ Rout [31:0] $end
$var wire 32 7$ Rin [31:0] $end
$var wire 32 8$ Q32 [31:0] $end
$var wire 1 9$ Q $end
$var wire 1 :$ A $end
$var reg 32 ;$ reg_Q [31:0] $end
$var reg 32 <$ reg_R [31:0] $end
$scope module div_block $end
$var wire 1 :$ A $end
$var wire 32 =$ B [31:0] $end
$var wire 32 >$ Rin [31:0] $end
$var wire 32 ?$ Rout [31:0] $end
$var wire 1 9$ Q $end
$scope module row_0 $end
$var wire 32 @$ a [31:0] $end
$var wire 32 A$ b [31:0] $end
$var wire 1 9$ q $end
$var wire 1 B$ q_temp $end
$var wire 33 C$ r_temp [32:0] $end
$var wire 32 D$ r [31:0] $end
$upscope $end
$upscope $end
$scope module div_control $end
$var wire 1 $ clk $end
$var wire 1 L reset $end
$var wire 1 %$ start $end
$var reg 1 E$ current_state $end
$var reg 5 F$ mux_A_sel [4:0] $end
$var reg 1 3$ mux_Rin_sel $end
$var reg 1 G$ next_state $end
$var reg 1 &$ rdy $end
$var reg 1 H$ rdy_b4_delay $end
$var reg 1 2$ reg_Q_en $end
$var reg 1 1$ reg_Rin_en $end
$var reg 5 I$ round_count [4:0] $end
$var reg 1 J$ start_count $end
$upscope $end
$upscope $end
$scope module DIVout $end
$var wire 1 K$ Dividend32 $end
$var wire 1 L$ Divisor32 $end
$var wire 32 M$ Q [31:0] $end
$var wire 32 N$ R [31:0] $end
$var wire 2 O$ op_div [1:0] $end
$var wire 2 P$ signs [1:0] $end
$var wire 32 Q$ out_div [31:0] $end
$var wire 32 R$ out_Rs [31:0] $end
$var wire 32 S$ out_R [31:0] $end
$var wire 32 T$ out_Qs [31:0] $end
$var wire 32 U$ out_Q [31:0] $end
$var wire 32 V$ R_2C [31:0] $end
$var wire 32 W$ Q_2C [31:0] $end
$var wire 32 X$ Divisor_2C [31:0] $end
$upscope $end
$scope module MUL $end
$var wire 32 Y$ M_inA [31:0] $end
$var wire 32 Z$ M_inB [31:0] $end
$var wire 1 $ clk $end
$var wire 1 L reset $end
$var wire 64 [$ P [63:0] $end
$var wire 32 \$ MLLs2 [31:0] $end
$var wire 32 ]$ MLHs2 [31:0] $end
$var wire 32 ^$ MHLs2 [31:0] $end
$var wire 32 _$ MHHs2 [31:0] $end
$scope module PPHH0 $end
$var wire 8 `$ a [7:0] $end
$var wire 8 a$ b [7:0] $end
$var wire 16 b$ f [15:0] $end
$upscope $end
$scope module PPHH1 $end
$var wire 8 c$ a [7:0] $end
$var wire 8 d$ b [7:0] $end
$var wire 16 e$ f [15:0] $end
$upscope $end
$scope module PPHH2 $end
$var wire 8 f$ a [7:0] $end
$var wire 8 g$ b [7:0] $end
$var wire 16 h$ f [15:0] $end
$upscope $end
$scope module PPHH3 $end
$var wire 8 i$ a [7:0] $end
$var wire 8 j$ b [7:0] $end
$var wire 16 k$ f [15:0] $end
$upscope $end
$scope module PPHL0 $end
$var wire 8 l$ a [7:0] $end
$var wire 8 m$ b [7:0] $end
$var wire 16 n$ f [15:0] $end
$upscope $end
$scope module PPHL1 $end
$var wire 8 o$ a [7:0] $end
$var wire 8 p$ b [7:0] $end
$var wire 16 q$ f [15:0] $end
$upscope $end
$scope module PPHL2 $end
$var wire 8 r$ a [7:0] $end
$var wire 8 s$ b [7:0] $end
$var wire 16 t$ f [15:0] $end
$upscope $end
$scope module PPHL3 $end
$var wire 8 u$ a [7:0] $end
$var wire 8 v$ b [7:0] $end
$var wire 16 w$ f [15:0] $end
$upscope $end
$scope module PPLH0 $end
$var wire 8 x$ a [7:0] $end
$var wire 8 y$ b [7:0] $end
$var wire 16 z$ f [15:0] $end
$upscope $end
$scope module PPLH1 $end
$var wire 8 {$ a [7:0] $end
$var wire 8 |$ b [7:0] $end
$var wire 16 }$ f [15:0] $end
$upscope $end
$scope module PPLH2 $end
$var wire 8 ~$ a [7:0] $end
$var wire 8 !% b [7:0] $end
$var wire 16 "% f [15:0] $end
$upscope $end
$scope module PPLH3 $end
$var wire 8 #% a [7:0] $end
$var wire 8 $% b [7:0] $end
$var wire 16 %% f [15:0] $end
$upscope $end
$scope module PPLL0 $end
$var wire 8 &% a [7:0] $end
$var wire 8 '% b [7:0] $end
$var wire 16 (% f [15:0] $end
$upscope $end
$scope module PPLL1 $end
$var wire 8 )% a [7:0] $end
$var wire 8 *% b [7:0] $end
$var wire 16 +% f [15:0] $end
$upscope $end
$scope module PPLL2 $end
$var wire 8 ,% a [7:0] $end
$var wire 8 -% b [7:0] $end
$var wire 16 .% f [15:0] $end
$upscope $end
$scope module PPLL3 $end
$var wire 8 /% a [7:0] $end
$var wire 8 0% b [7:0] $end
$var wire 16 1% f [15:0] $end
$upscope $end
$upscope $end
$scope module MULDIV_ctrl $end
$var wire 32 2% A [31:0] $end
$var wire 32 3% B [31:0] $end
$var wire 1 $ clk $end
$var wire 1 &$ div_rdy $end
$var wire 1 x muldiv_sel $end
$var wire 1 4% op_div1 $end
$var wire 2 5% op_mul [1:0] $end
$var wire 1 L reset $end
$var wire 1 w start $end
$var wire 1 6% Bm1 $end
$var wire 32 7% B_2C [31:0] $end
$var wire 1 8% B1 $end
$var wire 1 9% B0 $end
$var wire 1 :% Am1 $end
$var wire 32 ;% A_2C [31:0] $end
$var wire 6 <% AB_status [5:0] $end
$var wire 1 =% A1 $end
$var wire 1 >% A0 $end
$var reg 3 ?% current_state [2:0] $end
$var reg 1 %$ div_start $end
$var reg 32 @% fastres [31:0] $end
$var reg 1 y muldiv_done $end
$var reg 1 ~# mux_fastres_sel $end
$var reg 1 A% mux_fastres_sel_temp $end
$var reg 1 }# mux_muldiv_out_sel $end
$var reg 1 |# mux_muldiv_sel $end
$var reg 3 B% next_state [2:0] $end
$var reg 1 u# reg_AB_en $end
$var reg 1 t# reg_muldiv_en $end
$upscope $end
$scope module MULDIV_in $end
$var wire 32 C% in_A [31:0] $end
$var wire 32 D% in_B [31:0] $end
$var wire 1 x muldiv_sel $end
$var wire 1 E% op_div0 $end
$var wire 2 F% op_mul [1:0] $end
$var wire 32 G% out_A_2C [31:0] $end
$var wire 32 H% out_B_2C [31:0] $end
$var wire 32 I% out_B [31:0] $end
$var wire 32 J% out_A [31:0] $end
$var wire 32 K% M_inB [31:0] $end
$var wire 32 L% M_inA [31:0] $end
$var wire 32 M% Divisor [31:0] $end
$var wire 32 N% Dividend [31:0] $end
$var wire 32 O% B_s [31:0] $end
$var wire 32 P% B_2C [31:0] $end
$var wire 32 Q% A_s [31:0] $end
$var wire 32 R% A_2C [31:0] $end
$var wire 6 S% AB_status [5:0] $end
$var reg 1 T% A0 $end
$var reg 1 U% A1 $end
$var reg 1 V% Am1 $end
$var reg 1 W% B0 $end
$var reg 1 X% B1 $end
$var reg 1 Y% Bm1 $end
$upscope $end
$scope module MULout $end
$var wire 1 Z% M_inA32 $end
$var wire 1 [% M_inB32 $end
$var wire 64 \% P [63:0] $end
$var wire 2 ]% op_mul [1:0] $end
$var wire 2 ^% signs [1:0] $end
$var wire 32 _% out_mul [31:0] $end
$var wire 64 `% P_su [63:0] $end
$var wire 64 a% P_s [63:0] $end
$var wire 64 b% P_2C [63:0] $end
$upscope $end
$upscope $end
$upscope $end
$enddefinitions $end
#0
$dumpvars
b0 b%
b0 a%
b0 `%
b0 _%
b0 ^%
b0 ]%
b0 \%
0[%
0Z%
0Y%
0X%
1W%
0V%
0U%
1T%
b1001 S%
b0 R%
b0 Q%
b0 P%
b0 O%
b0 N%
b0 M%
b0 L%
b0 K%
b0 J%
b0 I%
b0 H%
b0 G%
b0 F%
0E%
b0 D%
b0 C%
b0 B%
1A%
b0 @%
b0 ?%
0>%
1=%
b1001 <%
b0 ;%
0:%
09%
18%
b0 7%
06%
b0 5%
04%
b0 3%
b0 2%
b0 1%
b0 0%
b0 /%
b0 .%
b0 -%
b0 ,%
b0 +%
b0 *%
b0 )%
b0 (%
b0 '%
b0 &%
b0 %%
b0 $%
b0 #%
b0 "%
b0 !%
b0 ~$
b0 }$
b0 |$
b0 {$
b0 z$
b0 y$
b0 x$
b0 w$
b0 v$
b0 u$
b0 t$
b0 s$
b0 r$
b0 q$
b0 p$
b0 o$
b0 n$
b0 m$
b0 l$
b0 k$
b0 j$
b0 i$
b0 h$
b0 g$
b0 f$
b0 e$
b0 d$
b0 c$
b0 b$
b0 a$
b0 `$
b0 _$
b0 ^$
b0 ]$
b0 \$
b0 [$
b0 Z$
b0 Y$
b0 X$
b0 W$
b0 V$
b0 U$
b0 T$
b0 S$
b0 R$
b0 Q$
b0 P$
b0 O$
b0 N$
b0 M$
0L$
0K$
0J$
b0 I$
0H$
0G$
b0 F$
0E$
b0 D$
b0 C$
1B$
b0 A$
b0 @$
b0 ?$
b0 >$
b0 =$
b0 <$
b0 ;$
0:$
19$
b0 8$
b0 7$
b0 6$
b0 5$
b0 4$
03$
02$
01$
b0 0$
b0 /$
b0 .$
b0 -$
b0 ,$
b0 +$
b1001 *$
b0 )$
b0 ($
b0 '$
0&$
0%$
b0 $$
b0 #$
b0 "$
b0 !$
1~#
0}#
0|#
b0 {#
b0 z#
b0 y#
b0 x#
b0 w#
b0 v#
0u#
0t#
b0 s#
b0 r#
b0 q#
b0 p#
b1 o#
b0zzzzzzzz n#
b0 m#
b0 l#
0k#
b0 j#
bz i#
b0 h#
b0 g#
b0 f#
b0 e#
b0 d#
b0 c#
b0 b#
b100 a#
0`#
1_#
b0 ^#
b0 ]#
b0 \#
b100 [#
0Z#
b10 Y#
b0 X#
b0 W#
b0 V#
b0 U#
1T#
b0 S#
b0 R#
b0 Q#
b0 P#
b0 O#
b0 N#
b0 M#
b0 L#
0K#
0J#
b0 I#
b0 H#
0G#
b10011 F#
b10011 E#
bx D#
b0 C#
b1100000000000 B#
b0 A#
b0 @#
b0 ?#
b0 >#
b0 =#
b11111 <#
b0 ;#
0:#
09#
b0 8#
07#
b0 6#
05#
b0 4#
b0 3#
12#
b0 1#
b0 0#
b0 /#
b0 .#
b0 -#
b0 ,#
0+#
0*#
0)#
0(#
b0 '#
b0 &#
b0 %#
b0 $#
b0 ##
b100000 "#
b10000000000000000000000000000000 !#
b0 ~"
b0 }"
b1100 |"
b0 {"
0z"
0y"
b0 x"
b0 w"
b0 v"
b0 u"
b0 t"
b10011 s"
0r"
b1100 q"
b0 p"
b0 o"
b0 n"
b0 m"
0l"
0k"
b1 j"
b0 i"
b0 h"
0g"
b0 f"
b0 e"
b0 d"
b1100 c"
b0 b"
b0 a"
0`"
0_"
b1 ^"
b0 ]"
0\"
b0 ["
b0 Z"
b0 Y"
b0 X"
0W"
0V"
0U"
b0 T"
b0 S"
b0 R"
b0 Q"
b0 P"
b0 O"
b0 N"
b0 M"
0L"
0K"
0J"
0I"
b0 H"
b0 G"
b0 F"
1E"
1D"
1C"
0B"
0A"
b0 @"
b0 ?"
0>"
0="
0<"
1;"
0:"
b0 9"
18"
07"
06"
b0 5"
14"
03"
02"
b0 1"
b0 0"
1/"
b0 ."
0-"
0,"
b0 +"
b0 *"
b1 )"
0("
b100 '"
b0 &"
0%"
b0 $"
0#"
b0 ""
b0 !"
1~
b0zzzzzzzz }
b0 |
0{
0z
0y
0x
0w
0v
0u
b0 t
b100 s
b0 r
b0 q
b0 p
b1 o
b10000000000000000000000000000100 n
0m
b0 l
b100010000000 k
b10000000000000000000000000000100 j
b10 i
1h
b0 g
b10000000000000000000000000000100 f
0e
b0 d
b0 c
b0 b
0a
b0 `
0_
b0 ^
b0 ]
b0 \
b0 [
b10000000000000000000000000000000 Z
b0 Y
1X
b0 W
b0 V
b1100 U
b1100 T
b1100 S
0R
0Q
0P
0O
b0 N
b0 M
0L
b0 K
b0 J
b0 I
b0 H
b0 G
b0 F
0E
0D
0C
0B
0A
0@
0?
b0 >
b1 =
b1 <
0;
bz :
b10000000000000000000000000000000 9
08
07
b0 6
b0 5
b0 4
b0 3
b0 2
11
00
0/
bz .
0-
b0 ,
b0 +
b0 *
1)
0(
b0 '
b0 &
b0 %
1$
b0 #
b0 "
b0 !
$end
#1
b100000000010110010011 :
#500
b10000000000000000000000000000100 Z
0$
1L
#1000
b10000000000000000000000000001000 Z
b10000000000000000000000000001000 f
b10000000000000000000000000001000 j
b10000000000000000000000000000000 G"
b1 &"
b1 b#
b0zzzzzzzz h#
1m
1a
b10000000000000000000000000001000 n
b10000000000000000000000000000000 H"
b1 ,#
b1 V
b1 ^#
b1011 Y
b1000000000101100100 '"
b1000000000101100100 a#
b1 O"
b0zzzzzzzz >
b0zzzzzzzz x"
b100 S
b100 q"
b100010000000 2
b100010000000 h"
b10000000000000000000000000000100 9
b10000000000000000000000000000100 !#
b10000000000000000000000000000000 G
b10000000000000000000000000000000 t"
b100000000010110010011 s"
b100000000010110010011 E#
b100000 D#
1$
#1001
b1000000000011000010011 :
#1500
0$
#2000
b10000000000000000000000000001100 Z
b1 b
b10000000000000000000000000001100 f
b10 )"
b10 o#
b10000000000000000000000000001100 j
b10000000000000000000000000000100 G"
b10 &"
b10 b#
b1 R"
b1 '#
b1 c#
b1 &#
b1 P"
b10000000000000000000000000001100 n
b10000000000000000000000000000100 H"
b10 ,#
b10 V
b10 ^#
b1100 Y
b10000000000110000100 '"
b10000000000110000100 a#
b10 O"
b1 l
b1 %#
b1 `
0T#
b10000000000000000000000000000000 }"
b10000000000000000000000000000000 4#
b10000000000000000000000000001000 9
b10000000000000000000000000001000 !#
b10000000000000000000000000000100 G
b10000000000000000000000000000100 t"
b1000000000011000010011 s"
b1000000000011000010011 E#
b1 %
b1 d"
b10000000000000000000000000000000 F
b10000000000000000000000000000000 m"
b1 N
b1 W#
b1 p"
b1011 I
b1011 \#
b1011 n"
b1 Q"
b1 4
b1 i"
b100 T
b100 c"
b100000 D#
1$
#2001
b10101101011000000001100011 :
#2500
0$
#3000
b10 b
b10000000000000000000000000010000 Z
1_#
b100 )"
b100 o#
b10000000000000000000000000010000 f
1`#
b100100100001010 k
b1100 s
b10 R"
b10 '#
b10 c#
b10 &#
b10000000000000000000000000010000 j
b10000000000000000000000000001000 G"
b100000 &"
b100000 b#
b1010 @"
b1010 L#
0;"
1:"
1B"
1-"
0X
b10 l
b10 %#
b10 `
b10 P"
b10000000000000000000000000010000 n
b10000000000000000000000000001000 H"
b101011 ,#
b1011 W
b1011 ]#
b1011 V
b1011 ^#
b0 Y
b101011010110000000011000 '"
b101011010110000000011000 a#
b101011 O"
b11000 [#
b1100011 F#
b1 H#
b100 U
b100 |"
b1 !
b1 X"
b1 d#
b1 &
b1 Z"
b1 "
b1 Y"
b10000000000000000000000000000000 H
b10000000000000000000000000000000 a"
b1011 J
b1011 S#
b1011 b"
b1 5
b1 ]"
b10 %
b10 d"
b10000000000000000000000000000100 F
b10000000000000000000000000000100 m"
b10 N
b10 W#
b10 p"
b1100 I
b1100 \#
b1100 n"
b10 Q"
b10 4
b10 i"
b10000000000000000000000000001100 9
b10000000000000000000000000001100 !#
b10000000000000000000000000001000 G
b10000000000000000000000000001000 t"
b10101101011000000001100011 s"
b10101101011000000001100011 E#
b10000000000000000000000000000100 }"
b10000000000000000000000000000100 4#
b1 l#
b100000 D#
1$
#3001
b101000000000011010010011 :
#3500
0$
#4000
1D
1R
b1 T"
b1 '$
b1 {#
b1 J%
b1 y#
b1 X$
b1 I%
b1 M"
1>%
0=%
b1 $$
b1 @%
b1 N%
b1 L%
b10000000000000000000000000101000 Z
b1 b
19%
08%
b1 M%
b1 K%
b1 ^
b11111111111111111111111111111111 z#
b11111111111111111111111111111111 ;%
b11111111111111111111111111111111 G%
b11111111111111111111111111111111 R%
1U%
0T%
b1 Q%
b1 t
b1 $#
b10000000000000000000000000101000 f
0`#
b100010000000 k
b100 s
b100000000 *"
b100000000 m#
b10 )"
b10 o#
b11111111111111111111111111111111 x#
b11111111111111111111111111111111 7%
b11111111111111111111111111111111 H%
b11111111111111111111111111111111 P%
1X%
b10010 *$
b10010 <%
b10010 S%
0W%
b1 O%
b1 p
b1 p#
b1 2%
b1 C%
b10000000000000000000000000101000 j
b10000000000000000000000000001100 G"
b1010 &"
b1010 b#
b0 @"
b0 L#
1;"
0:"
0B"
0-"
b10000000000000000000000000001000 d
b1 R"
b1 '#
b1 c#
b1 &#
b1 g
b1 e#
b1 q#
b1 3%
b1 D%
b10000000000000000000000000010100 n
b10000000000000000000000000001100 H"
b1010 ,#
b0 W
b0 ]#
b1010 V
b1010 ^#
b1101 Y
b1010000000000110100100 '"
b1010000000000110100100 a#
b1010 O"
b100 [#
b10011 F#
b0 H#
b1010 S"
b1010 ##
0m
1e
1W"
b1 l
b1 %#
b100000 `
b10000000000000000000000000101000 P"
b1 ~"
b1 i
b1 Y#
b1 q
b1 X#
b10 l#
b10000000000000000000000000001000 }"
b10000000000000000000000000001000 4#
b10000000000000000000000000010000 9
b10000000000000000000000000010000 !#
b10000000000000000000000000001100 G
b10000000000000000000000000001100 t"
b101000000000011010010011 s"
b101000000000011010010011 E#
b101011 %
b101011 d"
b1100 S
b1100 q"
b100100100001010 2
b100100100001010 h"
b10000000000000000000000000001000 F
b10000000000000000000000000001000 m"
b1011 M
b1011 V#
b1011 o"
b1011 N
b1011 W#
b1011 p"
b0 I
b0 \#
b0 n"
b10000000000000000000000000101000 Q"
b100000 4
b100000 i"
b10 !
b10 X"
b10 d#
b10 &
b10 Z"
b10 "
b10 Y"
b10000000000000000000000000000100 H
b10000000000000000000000000000100 a"
b1100 J
b1100 S#
b1100 b"
b10 5
b10 ]"
b1 #
b1 u"
b1 6
b1 -#
b1 w"
b1 '
b1 v"
b1 .#
b1011 K
b1011 U#
b1011 {"
b100000 D#
1$
#4001
b10110100000010111000100011 :
#4500
0$
#5000
b0 {#
b0 J%
b0 y#
b0 X$
b0 I%
b0 M"
0>%
1=%
b0 N%
b0 L%
b10000000000000000000000000101100 Z
b0 T"
b0 '$
09%
18%
b0 M%
b0 K%
b0 &#
b0 ^
b0 z#
b0 ;%
b0 G%
b0 R%
0U%
1T%
b0 Q%
b0 t
b0 $#
b0 b
b10000000000000000000000000101100 f
b0 $$
b0 @%
b0 x#
b0 7%
b0 H%
b0 P%
0X%
b1001 *$
b1001 <%
b1001 S%
1W%
b0 O%
b0 l
b0 %#
b0 p
b0 p#
b0 2%
b0 C%
b0 *"
b0 m#
b1 )"
b1 o#
0D
0R
b10000000000000000000000000101100 j
b0 g
b0 e#
b0 q#
b0 3%
b0 D%
b0 R"
b0 '#
b0 c#
b0 G"
b0 &"
b0 b#
b10 ~"
1T#
b0 `
b0 P"
b10 i
b10 Y#
b0 q
b0 X#
b0 d
b0 S"
b0 ##
0e
0a
0W"
b10000000000000000000000000101100 n
b0 H"
b0 ,#
b0 V
b0 ^#
b0 Y
b100 '"
b100 a#
b0 O"
b10 #
b10 u"
b10 6
b10 -#
b10 w"
b10 '
b10 v"
b10 .#
b1100 K
b1100 U#
b1100 {"
b1 !
b1 X"
b1 d#
b101011 &
b101011 Z"
b1100 T
b1100 c"
b1 "
b1 Y"
b1 ,
b1 ["
b10000000000000000000000000001000 H
b10000000000000000000000000001000 a"
b0 J
b0 S#
b0 b"
b100000 5
b100000 ]"
1g"
b0 Q"
b0 4
b0 i"
b0 M
b0 V#
b0 o"
b0 N
b0 W#
b0 p"
b0 F
b0 m"
b0 2
b0 h"
b0 %
b0 d"
1r"
b10000000000000000000000000101000 9
b10000000000000000000000000101000 !#
b0 G
b0 t"
b10011 s"
b10011 E#
b10000000000000000000000000001100 }"
b10000000000000000000000000001100 4#
b1 l#
b100000 D#
1$
#5001
b111100000000011100010011 :
#5500
0$
#6000
b10000000000000000000000000110000 Z
b10000000000000000000000000110000 f
b10000000000000000000000000110000 j
b10000000000000000000000000101000 G"
b1111 &"
b1111 b#
b10000000000000000000000000110000 n
b10000000000000000000000000101000 H"
b1111 ,#
b1111 V
b1111 ^#
b1110 Y
b1111000000000111000100 '"
b1111000000000111000100 a#
b1111 O"
1m
1a
b1 ~"
1X
b0 l#
b0 }"
b0 4#
b10000000000000000000000000101100 9
b10000000000000000000000000101100 !#
0r"
b10000000000000000000000000101000 G
b10000000000000000000000000101000 t"
b111100000000011100010011 s"
b111100000000011100010011 E#
b100 S
b100 q"
b100010000000 2
b100010000000 h"
b0 !
b0 X"
b0 d#
1\"
b0 &
b0 Z"
b0 "
b0 Y"
b0 ,
b0 ["
b0 H
b0 a"
b0 5
b0 ]"
b1 #
b1 u"
b100000 6
b100000 -#
b100000 w"
b101011 '
b101011 v"
b101011 .#
b0 K
b0 U#
b0 {"
b1100 U
b1100 |"
b100000 D#
1$
#6001
b110001110000011100110011 :
#6500
0$
#7000
b1100 +"
b1100 j#
b1111 b
b10000000000000000000000000110100 Z
b1000 )"
b1000 o#
b10000000000000000000000000110100 f
b100000000000 k
b1111 R"
b1111 '#
b1111 c#
b1111 &#
b10000000000000000000000000110100 j
b10000000000000000000000000101100 G"
b0 &"
b0 b#
1`#
0;"
b0 ~"
0T#
b1111 l
b1111 %#
b1111 `
b1111 P"
b10000000000000000000000000110100 n
b10000000000000000000000000101100 H"
b1100 ,#
b1110 W
b1110 ]#
b1100 V
b1100 ^#
b1100011100000111001100 '"
b1100011100000111001100 a#
b1100 O"
b1100 [#
b110011 F#
b0 #
b0 u"
b0 6
b0 -#
b0 w"
b0 '
b0 v"
b0 .#
b100 T
b100 c"
0g"
b1111 %
b1111 d"
b10000000000000000000000000101000 F
b10000000000000000000000000101000 m"
b1111 N
b1111 W#
b1111 p"
b1110 I
b1110 \#
b1110 n"
b1111 Q"
b1111 4
b1111 i"
b10000000000000000000000000110000 9
b10000000000000000000000000110000 !#
b10000000000000000000000000101100 G
b10000000000000000000000000101100 t"
b110001110000011100110011 s"
b110001110000011100110011 E#
b10000000000000000000000000101000 }"
b10000000000000000000000000101000 4#
b100000 D#
1$
#7001
b11111110110001011000001011100011 :
#7500
0$
#8000
0~#
b1111 {#
b1111 J%
b10000000000000000000000000111000 Z
b10 y#
b10 X$
b10 I%
b10000 +"
b10000 j#
b10001 b
b1111 M"
0=%
0A%
b1111 N%
b1111 L%
b10000000000000000000000000111000 f
1_#
b100100100001010 k
b1100 s
08%
b10 M%
b10 K%
b10 )"
b10 o#
b1111 d
b1111 ^
b11111111111111111111111111110001 z#
b11111111111111111111111111110001 ;%
b11111111111111111111111111110001 G%
b11111111111111111111111111110001 R%
0T%
b1111 Q%
b1111 t
b1111 $#
b10000000000000000000000000111000 j
b10000000000000000000000000110000 G"
b11111111111111111111111111100100 &"
b11111111111111111111111111100100 b#
1`#
b1010 @"
b1010 L#
1:"
1B"
1-"
b11111111111111111111111111111110 x#
b11111111111111111111111111111110 7%
b11111111111111111111111111111110 H%
b11111111111111111111111111111110 P%
b0 *$
b0 <%
b0 S%
0W%
b10 O%
b10001 R"
b10001 '#
b10001 c#
b10 &#
b1111 p
b1111 p#
b1111 2%
b1111 C%
b1000000000 *"
b1000000000 m#
b10000000000000000000000000111000 n
b10000000000000000000000000110000 H"
b111111101100 ,#
b1011 W
b1011 ]#
b101 Y
b111111101100010110000010111000 '"
b111111101100010110000010111000 a#
b111111101100 O"
b11000 [#
b1100011 F#
b1111111 H#
b10 g
b10 e#
b10 q#
b10 3%
b10 D%
0m
b10 l
b10 %#
b0 `
b1111 P"
b10 q
b10 X#
0X
b1111 l#
b10000000000000000000000000101100 }"
b10000000000000000000000000101100 4#
b10000000000000000000000000110100 9
b10000000000000000000000000110100 !#
b10000000000000000000000000110000 G
b10000000000000000000000000110000 t"
b11111110110001011000001011100011 s"
b11111110110001011000001011100011 E#
b10 +
b10 f"
b1100 %
b1100 d"
b100000000000 2
b100000000000 h"
b10000000000000000000000000101100 F
b10000000000000000000000000101100 m"
b1110 M
b1110 V#
b1110 o"
b1100 N
b1100 W#
b1100 p"
b1111 Q"
b0 4
b0 i"
b11 !
b11 X"
b11 d#
0\"
b1111 &
b1111 Z"
b1111 "
b1111 Y"
b10000000000000000000000000101000 H
b10000000000000000000000000101000 a"
b1110 J
b1110 S#
b1110 b"
b1111 5
b1111 ]"
b100 U
b100 |"
b100000 D#
1$
#8001
b10111000000010111000100011 :
#8500
0$
#9000
0J"
0*#
05#
0K"
0)#
0L"
0(#
b10 T"
b10 '$
b1 {#
b1 J%
b0 +"
b0 j#
b0 b
08
b10000000000000000000000000111100 Z
b1 M"
1~#
1>%
b1 N%
b1 L%
b10 *"
b10 m#
b1 )"
b1 o#
0D
0R
b10000000000000000000000000111100 f
b1110 s
b100010000000 k
b100 o
b1 ^
1A%
b10 $$
b10 @%
b11111111111111111111111111111111 z#
b11111111111111111111111111111111 ;%
b11111111111111111111111111111111 G%
b11111111111111111111111111111111 R%
b10 *$
b10 <%
b10 S%
1U%
b1 Q%
b1 t
b1 $#
b0 R"
b0 '#
b0 c#
b10000000000000000000000000110000 d
b10000000000000000000000000111100 j
b10000000000000000000000000110100 G"
b111100 &"
b111100 b#
b10 5"
b10 O#
b0 @"
b0 L#
1;"
0:"
0B"
04"
b1111 ~"
b1 p
b1 p#
b1 2%
b1 C%
b1010 S"
b1010 ##
1e
1W"
b0 q
b0 X#
b11111111111111111111111111100100 `
b10000000000000000000000000010100 P"
b10000000000000000000000000111100 n
b10000000000000000000000000110100 H"
b101110 ,#
b0 W
b0 ]#
b1110 V
b1110 ^#
b11100 Y
b101110000000101110001000 '"
b101110000000101110001000 a#
b101110 O"
b1000 [#
b100011 F#
b10 I#
b1 H#
b1111 #
b1111 u"
b1111 6
b1111 -#
b1111 w"
b1111 '
b1111 v"
b1111 .#
b1110 K
b1110 U#
b1110 {"
b1 !
b1 X"
b1 d#
b1100 &
b1100 Z"
b10001 "
b10001 Y"
b10 ,
b10 ["
b10000000000000000000000000101100 H
b10000000000000000000000000101100 a"
b0 5
b0 ]"
b1 *
b1 e"
b111111101100 %
b111111101100 d"
b1100 S
b1100 q"
b100100100001010 2
b100100100001010 h"
b10000000000000000000000000110000 F
b10000000000000000000000000110000 m"
b1011 M
b1011 V#
b1011 o"
b101 I
b101 \#
b101 n"
b10000000000000000000000000010100 Q"
b11111111111111111111111111100100 4
b11111111111111111111111111100100 i"
b10000000000000000000000000111000 9
b10000000000000000000000000111000 !#
b10000000000000000000000000110100 G
b10000000000000000000000000110100 t"
b10111000000010111000100011 s"
b10111000000010111000100011 E#
b10000000000000000000000000110000 }"
b10000000000000000000000000110000 4#
b10001 l#
b100000 D#
1$
#9001
b1101111 :
#9500
0$
#10000
0_#
b0 {#
b0 J%
1/
0k#
b10000000000000000000000001000000 Z
b10001 y#
b10001 X$
b10001 I%
b0 M"
0>%
1=%
b0 N%
b0 L%
b111100 +"
b111100 j#
b111100 b
b10000000000000000000000001000000 f
0`#
b10100101001110 k
b1 o
b100 s
b0 T"
b0 '$
b10001 M%
b10001 K%
b0 ^
b0 z#
b0 ;%
b0 G%
b0 R%
0U%
b1 *$
b1 <%
b1 S%
1T%
b0 Q%
b0 t
b0 $#
01
0~
b11100 &#
b10000000000000000000000001000000 j
b10000000000000000000000000111000 G"
b0 &"
b0 b#
1:"
b1110 @"
b1110 L#
1<"
0;"
1A"
14"
b0 5"
b0 O#
0-"
b0 $$
b0 @%
b11111111111111111111111111101111 x#
b11111111111111111111111111101111 7%
b11111111111111111111111111101111 H%
b11111111111111111111111111101111 P%
b10001 O%
b0 p
b0 p#
b0 2%
b0 C%
b111100 R"
b111100 '#
b111100 c#
b111100 l
b111100 %#
b10001 *"
b10001 m#
b1111 )"
b1111 o#
b10000000000000000000000001000000 n
b10000000000000000000000000111000 H"
b0 ,#
b0 V
b0 ^#
b0 Y
b11011 '"
b11011 a#
b0 O"
b11011 [#
b1101111 F#
b0 I#
b0 H#
b10001 g
b10001 e#
b10001 q#
b10001 3%
b10001 D%
b10 ""
b10 f#
b0 S"
b0 ##
1m
0e
0W"
b0 d
b111100 `
b111100 P"
1T#
b1 i
b1 Y#
b10001 ~"
b0 l#
b10000000000000000000000000110100 }"
b10000000000000000000000000110100 4#
b10000000000000000000000000111100 9
b10000000000000000000000000111100 !#
b10000000000000000000000000111000 G
b10000000000000000000000000111000 t"
b1101111 s"
b1101111 E#
b1111 +
b1111 f"
b0 *
b0 e"
b101110 %
b101110 d"
b1110 S
b1110 q"
b100 <
b100 j"
b100010000000 2
b100010000000 h"
b10000000000000000000000000110100 F
b10000000000000000000000000110100 m"
b0 M
b0 V#
b0 o"
b1110 N
b1110 W#
b1110 p"
b11100 I
b11100 \#
b11100 n"
b111100 Q"
b111100 4
b111100 i"
b0 !
b0 X"
b0 d#
b111111101100 &
b111111101100 Z"
b1100 T
b1100 c"
b0 "
b0 Y"
b10000000000000000000000000110000 H
b10000000000000000000000000110000 a"
b101 J
b101 S#
b101 b"
b11111111111111111111111111100100 5
b11111111111111111111111111100100 ]"
b10001 #
b10001 u"
b0 6
b0 -#
b0 w"
b1100 '
b1100 v"
b1100 .#
b100000 D#
1$
#10001
b10011 :
#10500
0$
#11000
0/
b0 y#
b0 X$
b0 I%
18%
b0 M%
b0 K%
b10000000000000000000000000111100 +"
b10000000000000000000000000111100 j#
b10000000000000000000000000111100 b
b10000000000000000000000000111000 Z
1_#
11
1~
b0 x#
b0 7%
b0 H%
b0 P%
b1001 *$
b1001 <%
b1001 S%
1W%
b0 O%
b10000000000000000000000000111000 f
b100010000000 k
bz }
bz n#
b0 *"
b0 m#
b1 )"
b1 o#
b10000000000000000000000000111000 t
b10000000000000000000000000111000 $#
b10000000000000000000000000111000 d
1D
1R
b0 g
b0 e#
b0 q#
b0 3%
b0 D%
b10000000000000000000000000111100 R"
b10000000000000000000000000111100 '#
b10000000000000000000000000111100 c#
b0 &#
b10000000000000000000000000111000 j
b10000000000000000000000000111100 G"
b0 @"
b0 L#
1;"
0<"
0:"
0A"
b0 ~"
1X
02#
b10 g#
b0 ""
b0 f#
b1110 S"
b1110 ##
1v
0m
1e
1V"
b10 i
b10 Y#
b0 l
b0 %#
b0 `
b10000000000000000000000000111000 P"
b10000000000000000000000001000100 n
b10000000000000000000000000111100 H"
b100 '"
b100 a#
b100 [#
b10011 F#
b0 #
b0 u"
b11111111111111111111111111100100 6
b11111111111111111111111111100100 -#
b11111111111111111111111111100100 w"
b111111101100 '
b111111101100 v"
b111111101100 .#
b101 K
b101 U#
b101 {"
b1100 U
b1100 |"
b101110 &
b101110 Z"
b1110 T
b1110 c"
b100 =
b100 ^"
b111100 "
b111100 Y"
b10001 ,
b10001 ["
b10000000000000000000000000110100 H
b10000000000000000000000000110100 a"
b11100 J
b11100 S#
b11100 b"
b111100 5
b111100 ]"
b0 +
b0 f"
b0 %
b0 d"
b100 S
b100 q"
b1 <
b1 j"
b10100101001110 2
b10100101001110 h"
b10000000000000000000000000111000 F
b10000000000000000000000000111000 m"
b0 N
b0 W#
b0 p"
b0 I
b0 \#
b0 n"
b10000000000000000000000000111000 Q"
b0 4
b0 i"
b10000000000000000000000001000000 9
b10000000000000000000000001000000 !#
b10000000000000000000000000111100 G
b10000000000000000000000000111100 t"
b10011 s"
b10011 E#
b10000000000000000000000000111000 }"
b10000000000000000000000000111000 4#
b111100 l#
b100000 D#
1$
#11500
0$
#12000
b10000000000000000000000000111100 Z
b0 +"
b0 j#
b0 b
b10000000000000000000000000111100 f
b10000000000000000000000000111100 j
b0 G"
b0 P"
b0 R"
b0 '#
b0 c#
0D
0R
b0zzzzzzzz }
b0zzzzzzzz n#
b10000000000000000000000000111100 n
b0 H"
b0 t
b0 $#
b0 Q"
b0 d
b0 S"
b0 ##
0v
0e
0a
0V"
0T#
12#
b0 g#
bz h#
b111100 ~"
b10 !"
b10000000000000000000000000111100 l#
b10000000000000000000000000111100 }"
b10000000000000000000000000111100 4#
1r"
b10000000000000000000000000111000 9
b10000000000000000000000000111000 !#
b0 G
b0 t"
1g"
b0 F
b0 m"
b0 2
b0 h"
b1100 S
b1100 q"
b0 &
b0 Z"
b100 T
b100 c"
b1 =
b1 ^"
b10000000000000000000000000111100 "
b10000000000000000000000000111100 Y"
b0 ,
b0 ["
b10000000000000000000000000111000 H
b10000000000000000000000000111000 a"
b0 J
b0 S#
b0 b"
b0 5
b0 ]"
bz >
bz x"
b111100 #
b111100 u"
b111100 6
b111100 -#
b111100 w"
b101110 '
b101110 v"
b101110 .#
b11100 K
b11100 U#
b11100 {"
b1110 U
b1110 |"
b100000 D#
1$
#12001
b1101111 :
#12500
0$
#13000
b10000000000000000000000001000000 Z
0_#
b10000000000000000000000001000000 f
b10100101001110 k
b10000000000000000000000001000000 j
b10000000000000000000000000111000 G"
1:"
b1110 @"
b1110 L#
1<"
0;"
1A"
b0zzzzzzzz h#
b10000000000000000000000000111100 ~"
b0 !"
0X
1T#
1m
1a
b10000000000000000000000001000000 n
b10000000000000000000000000111000 H"
b11011 '"
b11011 a#
b11011 [#
b1101111 F#
b0zzzzzzzz >
b0zzzzzzzz x"
b10000000000000000000000000111100 #
b10000000000000000000000000111100 u"
b0 6
b0 -#
b0 w"
b0 '
b0 v"
b0 .#
b0 K
b0 U#
b0 {"
b100 U
b100 |"
1\"
b1100 T
b1100 c"
b0 "
b0 Y"
b0 H
b0 a"
b100 S
b100 q"
b100010000000 2
b100010000000 h"
b10000000000000000000000000111100 9
b10000000000000000000000000111100 !#
0r"
b10000000000000000000000000111000 G
b10000000000000000000000000111000 t"
b1101111 s"
b1101111 E#
b0 }"
b0 4#
b0 l#
b100000 D#
1$
#13001
b10011 :
#13500
0$
#14000
b10000000000000000000000000111000 Z
1_#
b10000000000000000000000000111100 +"
b10000000000000000000000000111100 j#
b10000000000000000000000000111100 b
b10000000000000000000000000111000 f
b100010000000 k
b10000000000000000000000000111000 P"
b10000000000000000000000000111000 j
b10000000000000000000000000111100 G"
b0 @"
b0 L#
1;"
0<"
0:"
0A"
b10000000000000000000000000111100 R"
b10000000000000000000000000111100 '#
b10000000000000000000000000111100 c#
b10000000000000000000000000111000 t
b10000000000000000000000000111000 $#
b10000000000000000000000000111000 Q"
b10000000000000000000000000111000 d
1D
1R
b10000000000000000000000001000100 n
b10000000000000000000000000111100 H"
b100 '"
b100 a#
b100 [#
b10011 F#
b1110 S"
b1110 ##
1v
0m
1e
1V"
0T#
b0 ~"
1X
b10000000000000000000000000111000 }"
b10000000000000000000000000111000 4#
b10000000000000000000000001000000 9
b10000000000000000000000001000000 !#
b10000000000000000000000000111100 G
b10000000000000000000000000111100 t"
b10011 s"
b10011 E#
0g"
b10100101001110 2
b10100101001110 h"
b10000000000000000000000000111000 F
b10000000000000000000000000111000 m"
b100 T
b100 c"
b0 #
b0 u"
b1100 U
b1100 |"
b100000 D#
1$
#14500
0$
#15000
b10000000000000000000000000111100 Z
b0 +"
b0 j#
b0 b
b10000000000000000000000000111100 f
b10000000000000000000000000111100 j
b0 P"
b0 R"
b0 '#
b0 c#
0D
0R
b0 G"
0X
b0 t
b0 $#
b0 Q"
b0 d
b0 S"
b0 ##
0v
0e
0a
0V"
b10000000000000000000000000111100 n
b0 H"
b100 U
b100 |"
0\"
b10000000000000000000000000111100 "
b10000000000000000000000000111100 Y"
b10000000000000000000000000111000 H
b10000000000000000000000000111000 a"
1g"
b0 F
b0 m"
b0 2
b0 h"
b1100 S
b1100 q"
1r"
b10000000000000000000000000111000 9
b10000000000000000000000000111000 !#
b0 G
b0 t"
b10000000000000000000000000111100 }"
b10000000000000000000000000111100 4#
b10000000000000000000000000111100 l#
b100000 D#
1$
#15001
b1101111 :
#15500
0$
#16000
b10000000000000000000000001000000 Z
0_#
b10000000000000000000000001000000 f
b10100101001110 k
b10000000000000000000000001000000 j
b10000000000000000000000000111000 G"
1:"
b1110 @"
b1110 L#
1<"
0;"
1A"
b10000000000000000000000001000000 n
b10000000000000000000000000111000 H"
b11011 '"
b11011 a#
b11011 [#
b1101111 F#
1m
1a
1T#
b10000000000000000000000000111100 ~"
b0 l#
b0 }"
b0 4#
b10000000000000000000000000111100 9
b10000000000000000000000000111100 !#
0r"
b10000000000000000000000000111000 G
b10000000000000000000000000111000 t"
b1101111 s"
b1101111 E#
b100 S
b100 q"
b100010000000 2
b100010000000 h"
1\"
b1100 T
b1100 c"
b0 "
b0 Y"
b0 H
b0 a"
b10000000000000000000000000111100 #
b10000000000000000000000000111100 u"
b100000 D#
1$
#16001
b10011 :
#16500
0$
#17000
b10000000000000000000000000111100 +"
b10000000000000000000000000111100 j#
b10000000000000000000000000111100 b
b10000000000000000000000000111000 Z
1_#
b10000000000000000000000000111000 P"
b10000000000000000000000000111000 f
b100010000000 k
b10000000000000000000000000111100 R"
b10000000000000000000000000111100 '#
b10000000000000000000000000111100 c#
b10000000000000000000000000111000 t
b10000000000000000000000000111000 $#
b10000000000000000000000000111000 Q"
b10000000000000000000000000111000 d
1D
1R
b10000000000000000000000000111000 j
b10000000000000000000000000111100 G"
b0 @"
b0 L#
1;"
0<"
0:"
0A"
b0 ~"
1X
0T#
b1110 S"
b1110 ##
1v
0m
1e
1V"
b10000000000000000000000001000100 n
b10000000000000000000000000111100 H"
b100 '"
b100 a#
b100 [#
b10011 F#
b0 #
b0 u"
b1100 U
b1100 |"
b100 T
b100 c"
0g"
b10100101001110 2
b10100101001110 h"
b10000000000000000000000000111000 F
b10000000000000000000000000111000 m"
b10000000000000000000000001000000 9
b10000000000000000000000001000000 !#
b10000000000000000000000000111100 G
b10000000000000000000000000111100 t"
b10011 s"
b10011 E#
b10000000000000000000000000111000 }"
b10000000000000000000000000111000 4#
b100000 D#
1$
#17500
0$
#18000
b10000000000000000000000000111100 Z
b0 +"
b0 j#
b0 b
b10000000000000000000000000111100 f
b10000000000000000000000000111100 j
b0 G"
b0 P"
b0 R"
b0 '#
b0 c#
0D
0R
b10000000000000000000000000111100 n
b0 H"
b0 t
b0 $#
b0 Q"
b0 d
b0 S"
b0 ##
0v
0e
0a
0V"
0X
b10000000000000000000000000111100 l#
b10000000000000000000000000111100 }"
b10000000000000000000000000111100 4#
1r"
b10000000000000000000000000111000 9
b10000000000000000000000000111000 !#
b0 G
b0 t"
1g"
b0 F
b0 m"
b0 2
b0 h"
b1100 S
b1100 q"
0\"
b10000000000000000000000000111100 "
b10000000000000000000000000111100 Y"
b10000000000000000000000000111000 H
b10000000000000000000000000111000 a"
b100 U
b100 |"
b100000 D#
1$
#18001
b1101111 :
#18500
0$
#19000
b10000000000000000000000001000000 Z
0_#
b10000000000000000000000001000000 f
b10100101001110 k
b10000000000000000000000001000000 j
b10000000000000000000000000111000 G"
1:"
b1110 @"
b1110 L#
1<"
0;"
1A"
b10000000000000000000000000111100 ~"
1T#
1m
1a
b10000000000000000000000001000000 n
b10000000000000000000000000111000 H"
b11011 '"
b11011 a#
b11011 [#
b1101111 F#
b10000000000000000000000000111100 #
b10000000000000000000000000111100 u"
1\"
b1100 T
b1100 c"
b0 "
b0 Y"
b0 H
b0 a"
b100 S
b100 q"
b100010000000 2
b100010000000 h"
b10000000000000000000000000111100 9
b10000000000000000000000000111100 !#
0r"
b10000000000000000000000000111000 G
b10000000000000000000000000111000 t"
b1101111 s"
b1101111 E#
b0 }"
b0 4#
b0 l#
b100000 D#
1$
#19001
b10011 :
#19500
0$
#20000
b10000000000000000000000000111000 Z
1_#
b10000000000000000000000000111100 +"
b10000000000000000000000000111100 j#
b10000000000000000000000000111100 b
b10000000000000000000000000111000 f
b100010000000 k
b10000000000000000000000000111000 P"
b10000000000000000000000000111000 j
b10000000000000000000000000111100 G"
b0 @"
b0 L#
1;"
0<"
0:"
0A"
b10000000000000000000000000111100 R"
b10000000000000000000000000111100 '#
b10000000000000000000000000111100 c#
b10000000000000000000000000111000 t
b10000000000000000000000000111000 $#
b10000000000000000000000000111000 Q"
b10000000000000000000000000111000 d
1D
1R
b10000000000000000000000001000100 n
b10000000000000000000000000111100 H"
b100 '"
b100 a#
b100 [#
b10011 F#
b1110 S"
b1110 ##
1v
0m
1e
1V"
0T#
b0 ~"
1X
b10000000000000000000000000111000 }"
b10000000000000000000000000111000 4#
b10000000000000000000000001000000 9
b10000000000000000000000001000000 !#
b10000000000000000000000000111100 G
b10000000000000000000000000111100 t"
b10011 s"
b10011 E#
0g"
b10100101001110 2
b10100101001110 h"
b10000000000000000000000000111000 F
b10000000000000000000000000111000 m"
b100 T
b100 c"
b0 #
b0 u"
b1100 U
b1100 |"
b100000 D#
1$
#20500
0$
#21000
b10000000000000000000000000111100 Z
b0 +"
b0 j#
b0 b
b10000000000000000000000000111100 f
b10000000000000000000000000111100 j
b0 P"
b0 R"
b0 '#
b0 c#
0D
0R
b0 G"
0X
b0 t
b0 $#
b0 Q"
b0 d
b0 S"
b0 ##
0v
0e
0a
0V"
b10000000000000000000000000111100 n
b0 H"
b100 U
b100 |"
0\"
b10000000000000000000000000111100 "
b10000000000000000000000000111100 Y"
b10000000000000000000000000111000 H
b10000000000000000000000000111000 a"
1g"
b0 F
b0 m"
b0 2
b0 h"
b1100 S
b1100 q"
1r"
b10000000000000000000000000111000 9
b10000000000000000000000000111000 !#
b0 G
b0 t"
b10000000000000000000000000111100 }"
b10000000000000000000000000111100 4#
b10000000000000000000000000111100 l#
b100000 D#
1$
#21001
b1101111 :
#21500
0$
#22000
b10000000000000000000000001000000 Z
0_#
b10000000000000000000000001000000 f
b10100101001110 k
b10000000000000000000000001000000 j
b10000000000000000000000000111000 G"
1:"
b1110 @"
b1110 L#
1<"
0;"
1A"
b10000000000000000000000001000000 n
b10000000000000000000000000111000 H"
b11011 '"
b11011 a#
b11011 [#
b1101111 F#
1m
1a
1T#
b10000000000000000000000000111100 ~"
b0 l#
b0 }"
b0 4#
b10000000000000000000000000111100 9
b10000000000000000000000000111100 !#
0r"
b10000000000000000000000000111000 G
b10000000000000000000000000111000 t"
b1101111 s"
b1101111 E#
b100 S
b100 q"
b100010000000 2
b100010000000 h"
1\"
b1100 T
b1100 c"
b0 "
b0 Y"
b0 H
b0 a"
b10000000000000000000000000111100 #
b10000000000000000000000000111100 u"
b100000 D#
1$
#22001
