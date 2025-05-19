$date
	Mon May 19 15:59:30 2025
$end
$version
	Icarus Verilog
$end
$timescale
	1ps
$end
$scope module rvx_core $end
$var wire 1 ! add $end
$var wire 1 " addi $end
$var wire 1 # andi $end
$var wire 1 $ clock $end
$var wire 1 % csr_file_write_enable $end
$var wire 1 & csr_file_write_request $end
$var wire 3 ' csr_operation [2:0] $end
$var wire 1 ( csrxxx $end
$var wire 1 ) ebreak $end
$var wire 1 * ecall $end
$var wire 1 + exception_pending $end
$var wire 1 , halt $end
$var wire 1 - illegal_branch $end
$var wire 1 . illegal_instruction $end
$var wire 1 / illegal_jalr $end
$var wire 1 0 illegal_load $end
$var wire 1 1 illegal_op $end
$var wire 1 2 illegal_op_imm $end
$var wire 1 3 illegal_store $end
$var wire 1 4 illegal_system $end
$var wire 1 5 integer_file_write_enable $end
$var wire 1 6 integer_file_write_request $end
$var wire 1 7 interrupt_pending $end
$var wire 1 8 irq_external $end
$var wire 1 9 irq_external_response $end
$var wire 16 : irq_fast [15:0] $end
$var wire 1 ; irq_software $end
$var wire 1 < irq_software_response $end
$var wire 1 = irq_timer $end
$var wire 1 > irq_timer_response $end
$var wire 1 ? is_and $end
$var wire 1 @ is_branch $end
$var wire 1 A is_jump $end
$var wire 1 B is_or $end
$var wire 1 C is_xor $end
$var wire 1 D load $end
$var wire 1 E load_commit_cycle $end
$var wire 1 F load_pending $end
$var wire 1 G load_request $end
$var wire 1 H misaligned $end
$var wire 1 I misaligned_address_exception $end
$var wire 1 J misaligned_half $end
$var wire 1 K misaligned_instruction_address $end
$var wire 1 L misaligned_load $end
$var wire 1 M misaligned_store $end
$var wire 1 N misaligned_word $end
$var wire 1 O mret $end
$var wire 1 P ori $end
$var wire 32 Q read_data [31:0] $end
$var wire 1 R read_response $end
$var wire 64 S real_time_clock [63:0] $end
$var wire 1 T reset $end
$var wire 1 U reset_internal $end
$var wire 1 V sll $end
$var wire 1 W slli $end
$var wire 1 X slt $end
$var wire 1 Y slti $end
$var wire 1 Z sltiu $end
$var wire 1 [ sltu $end
$var wire 1 \ sra $end
$var wire 1 ] srai $end
$var wire 1 ^ srl $end
$var wire 1 _ srli $end
$var wire 1 ` store $end
$var wire 1 a store_commit_cycle $end
$var wire 1 b store_pending $end
$var wire 1 c store_request $end
$var wire 1 d sub $end
$var wire 1 e take_trap $end
$var wire 1 f target_address_source $end
$var wire 1 g unknown_type $end
$var wire 1 h write_response $end
$var wire 1 i xori $end
$var wire 4 j write_strobe [3:0] $end
$var wire 1 k write_request $end
$var wire 32 l write_data [31:0] $end
$var wire 32 m trap_address [31:0] $end
$var wire 32 n target_address_adder [31:0] $end
$var wire 1 o take_branch $end
$var wire 1 p system_type $end
$var wire 1 q store_type $end
$var wire 32 r rw_address_internal [31:0] $end
$var wire 32 s rw_address [31:0] $end
$var wire 32 t rs2_data [31:0] $end
$var wire 32 u rs1_data [31:0] $end
$var wire 1 v read_request $end
$var wire 32 w program_counter_plus_4 [31:0] $end
$var wire 1 x op_type $end
$var wire 1 y op_imm_type $end
$var wire 32 z next_address [31:0] $end
$var wire 1 { misc_mem_type $end
$var wire 1 | lui_type $end
$var wire 1 } load_unsigned $end
$var wire 1 ~ load_type $end
$var wire 2 !" load_size [1:0] $end
$var wire 16 "" load_half_upper_bits [15:0] $end
$var wire 24 #" load_byte_upper_bits [23:0] $end
$var wire 1 $" jalr_type $end
$var wire 1 %" jal_type $end
$var wire 1 &" is_not_equal $end
$var wire 1 '" is_less_than_unsigned $end
$var wire 1 (" is_less_than $end
$var wire 1 )" is_greater_or_equal_than_unsigned $end
$var wire 1 *" is_greater_or_equal_than $end
$var wire 1 +" is_equal $end
$var wire 16 ," irq_fast_response [15:0] $end
$var wire 32 -" interrupt_address_offset [31:0] $end
$var wire 5 ." instruction_rs2_address [4:0] $end
$var wire 5 /" instruction_rs1_address [4:0] $end
$var wire 5 0" instruction_rd_address [4:0] $end
$var wire 7 1" instruction_opcode [6:0] $end
$var wire 7 2" instruction_funct7 [6:0] $end
$var wire 3 3" instruction_funct3 [2:0] $end
$var wire 12 4" instruction_csr_address [11:0] $end
$var wire 32 5" instruction_address [31:0] $end
$var wire 32 6" instruction [31:0] $end
$var wire 32 7" immediate_u_type [31:0] $end
$var wire 20 8" immediate_sign_extension [19:0] $end
$var wire 32 9" immediate_s_type [31:0] $end
$var wire 32 :" immediate_j_type [31:0] $end
$var wire 32 ;" immediate_i_type [31:0] $end
$var wire 32 <" immediate_csr_type [31:0] $end
$var wire 32 =" immediate_b_type [31:0] $end
$var wire 1 >" flush $end
$var wire 32 ?" csr_mstatus [31:0] $end
$var wire 32 @" csr_mip [31:0] $end
$var wire 32 A" csr_mie [31:0] $end
$var wire 32 B" csr_data_mask [31:0] $end
$var wire 1 C" clock_enable $end
$var wire 1 D" branch_type $end
$var wire 32 E" branch_target_address [31:0] $end
$var wire 1 F" auipc_type $end
$var wire 32 G" alu_srl_result [31:0] $end
$var wire 32 H" alu_sra_result [31:0] $end
$var wire 1 I" alu_sltu_result $end
$var wire 1 J" alu_slt_result $end
$var wire 32 K" alu_shift_right_mux [31:0] $end
$var wire 4 L" alu_operation_code [3:0] $end
$var wire 32 M" alu_minus_2nd_operand [31:0] $end
$var wire 32 N" alu_adder_2nd_operand_mux [31:0] $end
$var wire 1 O" alu_2nd_operand_source $end
$var wire 32 P" alu_2nd_operand [31:0] $end
$var reg 32 Q" alu_output [31:0] $end
$var reg 1 R" branch_condition_satisfied $end
$var reg 32 S" csr_data_out [31:0] $end
$var reg 32 T" csr_mcause [31:0] $end
$var reg 5 U" csr_mcause_code [4:0] $end
$var reg 1 V" csr_mcause_interrupt_flag $end
$var reg 64 W" csr_mcycle [63:0] $end
$var reg 32 X" csr_mepc [31:0] $end
$var reg 1 Y" csr_mie_meie $end
$var reg 16 Z" csr_mie_mfie [15:0] $end
$var reg 1 [" csr_mie_msie $end
$var reg 1 \" csr_mie_mtie $end
$var reg 64 ]" csr_minstret [63:0] $end
$var reg 1 ^" csr_mip_meip $end
$var reg 16 _" csr_mip_mfip [15:0] $end
$var reg 1 `" csr_mip_msip $end
$var reg 1 a" csr_mip_mtip $end
$var reg 32 b" csr_mscratch [31:0] $end
$var reg 1 c" csr_mstatus_mie $end
$var reg 1 d" csr_mstatus_mpie $end
$var reg 32 e" csr_mtval [31:0] $end
$var reg 32 f" csr_mtvec [31:0] $end
$var reg 64 g" csr_utime [63:0] $end
$var reg 32 h" csr_write_data [31:0] $end
$var reg 4 i" current_state [3:0] $end
$var reg 32 j" immediate [31:0] $end
$var reg 3 k" immediate_type [2:0] $end
$var reg 8 l" load_byte_data [7:0] $end
$var reg 32 m" load_data [31:0] $end
$var reg 16 n" load_half_data [15:0] $end
$var reg 32 o" next_program_counter [31:0] $end
$var reg 4 p" next_state [3:0] $end
$var reg 32 q" prev_instruction [31:0] $end
$var reg 32 r" prev_instruction_address [31:0] $end
$var reg 1 s" prev_load_request $end
$var reg 1 t" prev_read_request $end
$var reg 32 u" prev_rw_address [31:0] $end
$var reg 32 v" prev_write_data [31:0] $end
$var reg 1 w" prev_write_request $end
$var reg 4 x" prev_write_strobe [3:0] $end
$var reg 32 y" program_counter [31:0] $end
$var reg 2 z" program_counter_source [1:0] $end
$var reg 1 {" reset_reg $end
$var reg 32 |" store_byte_data [31:0] $end
$var reg 32 }" store_half_data [31:0] $end
$var reg 32 ~" write_data_internal [31:0] $end
$var reg 4 !# write_strobe_for_byte [3:0] $end
$var reg 4 "# write_strobe_for_half [3:0] $end
$var reg 4 ## write_strobe_internal [3:0] $end
$var reg 32 $# writeback_multiplexer_output [31:0] $end
$var reg 3 %# writeback_mux_selector [2:0] $end
$var integer 32 &# i [31:0] $end
$scope begin genblk1[0] $end
$upscope $end
$scope begin genblk1[1] $end
$upscope $end
$scope begin genblk1[2] $end
$upscope $end
$scope begin genblk1[3] $end
$upscope $end
$scope begin genblk1[4] $end
$upscope $end
$scope begin genblk1[5] $end
$upscope $end
$scope begin genblk1[6] $end
$upscope $end
$scope begin genblk1[7] $end
$upscope $end
$scope begin genblk1[8] $end
$upscope $end
$scope begin genblk1[9] $end
$upscope $end
$scope begin genblk1[10] $end
$upscope $end
$scope begin genblk1[11] $end
$upscope $end
$scope begin genblk1[12] $end
$upscope $end
$scope begin genblk1[13] $end
$upscope $end
$scope begin genblk1[14] $end
$upscope $end
$scope begin genblk1[15] $end
$upscope $end
$scope begin branch_condition_satisfied_mux $end
$upscope $end
$scope begin csr_data_out_mux $end
$upscope $end
$scope begin csr_write_data_mux $end
$upscope $end
$scope begin immediate_mux $end
$upscope $end
$scope begin immediate_type_decoding $end
$upscope $end
$scope begin load_byte_data_mux $end
$upscope $end
$scope begin load_half_data_mux $end
$upscope $end
$scope begin load_size_mux $end
$upscope $end
$scope begin m_mode_fsm_current_state_register $end
$upscope $end
$scope begin m_mode_fsm_next_state_logic $end
$upscope $end
$scope begin mcause_implementation $end
$upscope $end
$scope begin mcycle_implementation $end
$upscope $end
$scope begin mepc_implementation $end
$upscope $end
$scope begin mie_csr_fields_implementation $end
$upscope $end
$scope begin minstret_implementation $end
$upscope $end
$scope begin mip_csr_fields_implementation $end
$upscope $end
$scope begin mstatus_csr_fields_update $end
$upscope $end
$scope begin mtval_implementation $end
$upscope $end
$scope begin mtvec_implementation $end
$upscope $end
$scope begin next_program_counter_mux $end
$upscope $end
$scope begin operation_result_mux $end
$upscope $end
$scope begin program_counter_reg_implementation $end
$upscope $end
$scope begin program_counter_source_mux $end
$upscope $end
$scope begin trap_cause_implementation $end
$upscope $end
$scope begin utime_csr_implementation $end
$upscope $end
$scope begin writeback_selector_decoding $end
$upscope $end
$upscope $end
$enddefinitions $end
#0
$dumpvars
b100000 &#
b0 %#
b0 $#
b0 ##
b0 "#
b0 !#
b0 ~"
b0 }"
b0 |"
1{"
b0 z"
b10000000000000000000000000000000 y"
b0 x"
0w"
b0 v"
b0 u"
0t"
0s"
b10000000000000000000000000000000 r"
b10011 q"
b10 p"
b10000000000000000000000000000000 o"
b0 n"
b0 m"
b0 l"
b1 k"
b0 j"
b1 i"
b0 h"
bz g"
b0 f"
b0 e"
1d"
0c"
b0 b"
0a"
0`"
b0 _"
0^"
b0 ]"
0\"
0["
b0 Z"
0Y"
b0 X"
b0 W"
0V"
b0 U"
b0 T"
b0 S"
1R"
b0 Q"
b0 P"
0O"
b0 N"
b0 M"
b0 L"
b0 K"
0J"
0I"
b0 H"
b0 G"
0F"
b10000000000000000000000000000000 E"
0D"
1C"
b0 B"
b0 A"
b0 @"
b1100010000000 ?"
1>"
b0 ="
b0 <"
b0 ;"
b0 :"
b0 9"
b0 8"
b0 7"
b10011 6"
b10000000000000000000000000000000 5"
b0 4"
b0 3"
b0 2"
b10011 1"
b0 0"
b0 /"
b0 ."
b0 -"
b0 ,"
1+"
1*"
1)"
0("
0'"
0&"
0%"
0$"
b0 #"
b0 ""
b0 !"
0~
0}
0|
0{
b10000000000000000000000000000100 z
1y
0x
b10000000000000000000000000000100 w
0v
b0 u
b0 t
b0 s
b10000000000000000000000000000000 r
0q
0p
0o
b10000000000000000000000000000000 n
b0 m
b0 l
0k
b0 j
0i
0h
0g
0f
0e
0d
0c
0b
0a
0`
0_
0^
0]
0\
0[
0Z
0Y
0X
0W
0V
1U
1T
bz S
0R
b0 Q
0P
0O
0N
0M
0L
0K
0J
0I
0H
0G
0F
0E
0D
0C
0B
0A
0@
0?
0>
z=
0<
z;
bz :
09
z8
07
16
05
04
03
02
01
00
0/
0.
0-
0,
0+
0*
0)
0(
b0 '
0&
0%
1$
0#
1"
0!
$end
#500
0$
#1000
b100000 &#
1$
#1500
0$
#2000
b100000 &#
1$
#2500
0$
#3000
b100000 &#
1$
#3500
0$
#4000
b100000 &#
1$
#4500
0$
#5000
1v
b10000000000000000000000000000000 s
0U
0{"
b100000 &#
1$
0T
#5500
0$
#6000
b1 $#
b1 Q"
b1 N"
1J"
b10000000000000000000000000000001 n
b11111111111111111111111111111111 M"
1I"
b1 P"
b1 j"
b10000000000000000000000000000100 s
b1 ."
b1011 0"
b1 4"
b1 ;"
b1011 9"
b100000001010 ="
b100000000000000000000 7"
b100000000000 :"
b10000000000000000000000000000100 r
b10000000000000000000000000000100 5"
b0 #"
b101 m"
b101 l"
b10110010011 n"
b100000000010110010011 Q
1R
b10 p"
0e
0+
02
0.
16
0g
1"
1C"
b10000000000000000000000000000100 o"
15
1y
b10011 1"
b11 z"
b100000000010110010011 6"
b1 W"
z`"
za"
z^"
bz0000z000z000z000 @"
bz _"
0>"
b10 i"
1t"
b10000000000000000000000000000000 u"
1$
#6500
0$
#7000
0C"
0R
b10000000000000000000000000000100 s
b10000000000000000000000000000100 r
b10000000000000000000000000000100 5"
b10000000000000000000000000001000 o"
b10000000000000000000000000000100 E"
b10000000000000000000000000001000 z
b10000000000000000000000000000101 n
b1 ]"
b10 W"
b10000000000000000000000000001000 w
b10000000000000000000000000000100 y"
b100000000010110010011 q"
b10000000000000000000000000000100 u"
b10000000000000000000000000000100 r"
1$
#7500
0$
#8000
b10 $#
b10 Q"
b10000000000000000000000000000110 E"
b10 N"
b10000000000000000000000000000110 n
b11111111111111111111111111111110 M"
b10 P"
b10 j"
b10000000000000000000000000001000 s
b10 ."
b1100 0"
b10 4"
b10 ;"
b1100 9"
b1100 ="
b1000000000000000000000 7"
b10 :"
b1000000000011000010011 6"
b10000000000000000000000000001000 r
b10000000000000000000000000001000 5"
1C"
b100000 m"
b100000 l"
b100000 n"
b1000000000011000010011 Q
1R
b11 W"
1$
#8500
0$
#9000
0C"
0R
b10000000000000000000000000001000 s
b10000000000000000000000000001000 r
b10000000000000000000000000001000 5"
b10000000000000000000000000001100 o"
b10000000000000000000000000001010 E"
b10000000000000000000000000001100 z
b10000000000000000000000000001010 n
b10 ]"
b100 W"
b10000000000000000000000000001100 w
b10000000000000000000000000001000 y"
b1000000000011000010011 q"
b10000000000000000000000000001000 u"
b10000000000000000000000000001000 r"
1$
#9500
0$
#10000
b10 p"
0e
0+
0.
b10000000000000000000000000101000 o"
b10000000000000000000000000101000 z
05
b10 l
b1111111111111111 ""
1o
06
0g
b1 h"
b10 ~"
b10000000000000000000000000101000 E"
b1 B"
0*"
1("
b10 |"
b10 }"
b100 $#
b10000000000000000000000000101000 n
1@
b11 k"
1O"
0"
b1 !"
b100 Q"
b1 u
0)"
1'"
1&"
0+"
b10 t
b100000 j"
b10000000000000000000000000101000 s
1D"
0y
b1100011 1"
b1 '
b1 L"
b1 3"
b1 2"
b1011 /"
b1100 ."
b0 0"
b101100 4"
b101100 ;"
b100000 9"
b100000 ="
b10110001011001000000000000 7"
b1011001000000101100 :"
b1011 <"
b10110001011001000001100011 6"
b10000000000000000000000000101000 r
b10000000000000000000000000101000 5"
b0 #"
1C"
b11111111111111111001000001100011 m"
b1100011 l"
b1001000001100011 n"
b10110001011001000001100011 Q
1R
b101 W"
1$
#10500
0$
#11000
0C"
0R
b10000000000000000000000000101000 s
b10000000000000000000000000101000 r
b10000000000000000000000000101000 5"
b10000000000000000000000001001000 o"
b10000000000000000000000001001000 z
b10000000000000000000000001001000 E"
b10000000000000000000000001001000 n
b11 ]"
b110 W"
b10000000000000000000000000101100 w
b10000000000000000000000000101000 y"
b10110001011001000001100011 q"
b10 v"
b10000000000000000000000000101000 u"
b10000000000000000000000000101000 r"
1$
#11500
0$
#12000
b10 p"
0e
0+
15
b0 l
b10000000000000000000000000101100 o"
b0 #"
0o
b10000000000000000000000000101100 z
16
0.
b1111 N"
b0 ~"
b10000000000000000000000000110110 E"
b0 B"
b11111111111111111111111111110001 M"
b1111 P"
1*"
0("
b0 }"
b0 |"
b1111 $#
b10000000000000000000000000110111 n
0@
02
b1 k"
0O"
1"
b0 !"
b0 h"
b1111 Q"
0&"
1+"
b0 u
1)"
0'"
b0 t
b1111 j"
b10000000000000000000000000101100 s
0D"
1y
b10011 1"
b0 '
b0 L"
b0 3"
b0 2"
b0 /"
b1111 ."
b1110 0"
b1111 4"
b1111 ;"
b1110 9"
b1110 ="
b111100000000000000000000 7"
b100000001110 :"
b0 <"
b111100000000011100010011 6"
b10000000000000000000000000101100 r
b10000000000000000000000000101100 5"
b0 ""
1C"
b0 m"
b0 l"
b11110000 n"
b111100000000011100010011 Q
1R
b111 W"
1$
#12500
0$
#13000
0C"
0R
b10000000000000000000000000101100 s
b10000000000000000000000000101100 r
b10000000000000000000000000101100 5"
b10000000000000000000000000110000 o"
b10000000000000000000000000111010 E"
b10000000000000000000000000110000 z
b10000000000000000000000000111011 n
b100 ]"
b1000 W"
b10000000000000000000000000110000 w
b10000000000000000000000000101100 y"
b111100000000011100010011 q"
b0 v"
b10000000000000000000000000101100 u"
b10000000000000000000000000101100 r"
1$
#13500
0$
#14000
b10 p"
0e
0+
15
b10 l
0.
b110011 m"
b11 K"
16
0g
b10001 $#
b10 ~"
b10000000000000000000000000111000 E"
b110011 l"
b10 N"
b11 H"
b11 G"
1!
b1111 B"
0J"
b10001 Q"
0R"
b10 |"
b10 }"
b10000000000000000000000000111000 n
b11111111111111111111111111111110 M"
b10 P"
01
0"
1O"
0I"
b1111 u
1)"
0'"
1&"
0+"
b10 t
b1100 j"
b10000000000000000000000000110000 s
1x
0y
b110011 1"
b1110 /"
b1100 ."
b1100 4"
b1100 ;"
b110001110000000000000000 7"
b1110000000000001100 :"
b1110 <"
b110001110000011100110011 6"
b10000000000000000000000000110000 r
b10000000000000000000000000110000 5"
1C"
b11100110011 n"
b110001110000011100110011 Q
1R
b1001 W"
1$
#14500
0$
#15000
0C"
0R
b10000000000000000000000000110000 s
b10000000000000000000000000110000 r
b10000000000000000000000000110000 5"
b10011 $#
b10000000000000000000000000110100 o"
b10000000000000000000000000111100 E"
b10001 B"
b100 K"
b10011 Q"
b10000000000000000000000000110100 z
b10000000000000000000000000111100 n
b100 H"
b100 G"
b10001 u
b101 ]"
b1010 W"
b10000000000000000000000000110100 w
b10000000000000000000000000110000 y"
b110001110000011100110011 q"
b10 v"
b10000000000000000000000000110000 u"
b10000000000000000000000000110000 r"
1$
#15500
0$
#16000
b10 p"
0e
0+
0.
05
b1 l
0H
06
0g
0J
b11111111111111111111111111111111 N"
b1 ~"
b10000000000000000000000000010100 E"
b1 B"
b0 K"
b11111111111111111111111111111111 M"
b1 P"
b1 |"
b1 }"
b10 $#
b10000000000000000000000000010100 n
1@
b11 k"
b1 !"
b1 h"
b10 Q"
0!
b0 H"
b0 G"
0I"
0&"
1+"
b1 u
b1 t
b11111111111111111111111111100100 j"
b10000000000000000000000000110100 s
1D"
0x
b1100011 1"
b1 '
b1001 L"
b1 3"
b1111111 2"
b1011 /"
b1011 ."
b101 0"
b111111101011 4"
b11111111111111111111 8"
b11111111111111111111111111101011 ;"
b11111111111111111111111111100101 9"
b11111111111111111111111111100100 ="
b11111110101101011001000000000000 7"
b11111111111101011001111111101010 :"
b1011 <"
b11111110101101011001001011100011 6"
b10000000000000000000000000110100 r
b10000000000000000000000000110100 5"
b111111111111111111111111 #"
b1111111111111111 ""
1C"
b11111111111111111001001011100011 m"
b11100011 l"
b1001001011100011 n"
b11111110101101011001001011100011 Q
1R
b1011 W"
1$
#16500
0$
#17000
0C"
0R
b10000000000000000000000000110100 s
b10000000000000000000000000110100 r
b10000000000000000000000000110100 5"
b10000000000000000000000000111000 o"
b10000000000000000000000000011000 E"
b10000000000000000000000000111000 z
b10000000000000000000000000011000 n
b110 ]"
b1100 W"
b10000000000000000000000000111000 w
b10000000000000000000000000110100 y"
b11111110101101011001001011100011 q"
b1 v"
b10000000000000000000000000110100 u"
b10000000000000000000000000110100 r"
1$
#17500
0$
#18000
b1111 j
b11 "#
b1 !#
b1111 ##
0v
1k
1c
b10001 l
b0 h"
b10001 N"
b111100 E"
1f
1b
b0 B"
1J"
b11111111111111111111111111101111 M"
b10001 P"
0*"
1("
b10001 }"
b10001 |"
b1 $#
b111100 n
0@
1`
b10 k"
b10 !"
b1 Q"
b10001 ~"
1I"
b0 u
0)"
1'"
1&"
0+"
b10001 t
b111100 j"
b111100 s
0D"
1q
b100011 1"
b10 '
b10 L"
b10 3"
b1 2"
b0 /"
b1110 ."
b11100 0"
b101110 4"
b0 8"
b101110 ;"
b111100 9"
b111100 ="
b10111000000010000000000000 7"
b10000000101110 :"
b0 <"
b10111000000010111000100011 6"
b111100 r
b10000000000000000000000000111000 5"
b0 #"
b0 ""
1C"
b10111000000010111000100011 m"
b100011 l"
b10111000100011 n"
b10111000000010111000100011 Q
1R
b1101 W"
1$
#18500
0$
#19000
b0 j
b10000000000000000000000000111000 s
b0 !#
b0 "#
b0 ##
1v
b10000000000000000000000000111000 r
0k
0c
0b
1a
1h
0R
1C"
b111 ]"
b1110 W"
b10111000000010111000100011 q"
b1111 x"
1w"
b10001 v"
0t"
b111100 u"
b10000000000000000000000000111000 r"
1$
#19500
0$
#20000
b10 p"
0e
0+
0.
15
0g
16
b0 l
1o
b0 N"
0J"
b0 ~"
b10000000000000000000000000111000 E"
0f
b0 M"
0I"
b0 P"
1*"
0("
b0 |"
b0 }"
b10000000000000000000000000111100 $#
b10000000000000000000000000111000 n
1A
b101 %#
0`
b101 k"
b0 !"
b0 Q"
1R"
1)"
0'"
0&"
1+"
b0 t
b0 j"
1%"
0q
b1101111 1"
b0 '
b0 L"
b0 3"
b0 2"
b0 ."
b0 0"
b0 4"
b0 ;"
b0 9"
b0 ="
b0 7"
b0 :"
b0 j
b1101111 6"
b0 "#
b0 !#
b0 ##
b10000000000000000000000000111000 5"
1v
b10000000000000000000000000111000 s
0k
b1101111 l"
b1101111 n"
b1101111 m"
0h
b1101111 Q
1R
b10000000000000000000000000111000 r
0c
1C"
b10000000000000000000000000111000 o"
0b
b10000000000000000000000000111000 z
0a
b1000 ]"
b1111 W"
b10000000000000000000000000111100 w
b10000000000000000000000000111000 y"
b0 x"
0w"
1t"
b10000000000000000000000000111000 u"
1$
#20500
0$
#21000
0C"
0R
b1001 ]"
b10000 W"
b1101111 q"
b0 v"
1$
#21500
0$
#22000
1C"
1R
b10001 W"
1$
#22500
0$
#23000
0C"
0R
b1010 ]"
b10010 W"
1$
#23500
0$
#24000
1C"
1R
b10011 W"
1$
#24500
0$
#25000
0C"
0R
b1011 ]"
b10100 W"
1$
#25500
0$
#26000
1C"
1R
b10101 W"
1$
#26500
0$
#27000
0C"
0R
b1100 ]"
b10110 W"
1$
#27500
0$
#28000
1C"
1R
b10111 W"
1$
#28500
0$
#29000
0C"
0R
b1101 ]"
b11000 W"
1$
#29500
0$
#30000
1C"
1R
b11001 W"
1$
#30500
0$
#31000
0C"
0R
b1110 ]"
b11010 W"
1$
#31500
0$
#32000
1C"
1R
b11011 W"
1$
#32500
0$
#33000
0C"
0R
b1111 ]"
b11100 W"
1$
#33500
0$
#34000
b11101 W"
1$
#34001
