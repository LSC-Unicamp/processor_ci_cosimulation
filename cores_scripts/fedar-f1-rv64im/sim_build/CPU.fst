$date
	Mon May 19 15:44:22 2025
$end
$version
	Icarus Verilog
$end
$timescale
	1ps
$end
$scope module CPU $end
$var wire 1 ! B_beq $end
$var wire 1 " B_bge $end
$var wire 1 # B_bgeu $end
$var wire 1 $ B_blt $end
$var wire 1 % B_bltu $end
$var wire 1 & B_bne $end
$var wire 1 ' CLK $end
$var wire 1 ( CONTROL_HAZARD_STALL $end
$var wire 1 ) DATA_DEPENDENCY_HAZARD_R1 $end
$var wire 1 * DATA_DEPENDENCY_HAZARD_R1_WRITEBACK $end
$var wire 1 + DATA_DEPENDENCY_HAZARD_R2 $end
$var wire 1 , DATA_DEPENDENCY_HAZARD_R2_WRITEBACK $end
$var wire 32 - INSTRUCTION [31:0] $end
$var wire 1 . I_TYPE $end
$var wire 1 / I_addi $end
$var wire 1 0 I_addiw $end
$var wire 1 1 I_andi $end
$var wire 1 2 I_jalr $end
$var wire 1 3 I_lb $end
$var wire 1 4 I_ld $end
$var wire 1 5 I_lh $end
$var wire 1 6 I_lw $end
$var wire 1 7 I_ori $end
$var wire 1 8 I_slli $end
$var wire 1 9 I_slliw $end
$var wire 1 : I_slti $end
$var wire 1 ; I_sltiu $end
$var wire 1 < I_srai $end
$var wire 1 = I_sraiw $end
$var wire 1 > I_srli $end
$var wire 1 ? I_srliw $end
$var wire 1 @ I_xori $end
$var wire 1 A LOAD_STALL $end
$var wire 1 B PC_ALU_SEL $end
$var wire 64 C R1_DATA_UNSIGNED [63:0] $end
$var wire 64 D R2_DATA_UNSIGNED [63:0] $end
$var wire 64 E RAM_READ_DATA [63:0] $end
$var wire 1 F REG_WRITE_ENABLE $end
$var wire 1 G R_add $end
$var wire 1 H R_addw $end
$var wire 1 I R_and $end
$var wire 1 J R_div $end
$var wire 1 K R_divw $end
$var wire 1 L R_mul $end
$var wire 1 M R_mulh $end
$var wire 1 N R_mulw $end
$var wire 1 O R_or $end
$var wire 1 P R_rem $end
$var wire 1 Q R_remw $end
$var wire 1 R R_sll $end
$var wire 1 S R_sllw $end
$var wire 1 T R_slt $end
$var wire 1 U R_sltu $end
$var wire 1 V R_sra $end
$var wire 1 W R_sraw $end
$var wire 1 X R_srl $end
$var wire 1 Y R_srlw $end
$var wire 1 Z R_sub $end
$var wire 1 [ R_subw $end
$var wire 1 \ R_xor $end
$var wire 1 ] S_sb $end
$var wire 1 ^ S_sd $end
$var wire 1 _ S_sh $end
$var wire 1 ` S_sw $end
$var wire 1 a U_TYPE $end
$var wire 1 b U_auipc $end
$var wire 1 c U_jal $end
$var wire 1 d U_lui $end
$var wire 1 e WB_I_TYPE $end
$var wire 1 f WB_U_TYPE $end
$var wire 4 g regWritebackSelectionInputs [3:0] $end
$var wire 1 h isALUEqual $end
$var wire 8 i immediateSelectionInputs [7:0] $end
$var wire 4 j aluX2SelectionInputs [3:0] $end
$var wire 4 k aluX1SelectionInputs [3:0] $end
$var wire 16 l aluOpEncoderInputs [15:0] $end
$var wire 1 m WB_U_TYPE_LOAD $end
$var wire 1 n WB_U_TYPE_JUMP $end
$var wire 1 o WB_U_TYPE_AUIPC $end
$var wire 1 p WB_R_TYPE_64 $end
$var wire 1 q WB_R_TYPE $end
$var wire 1 r WB_I_TYPE_OTHER $end
$var wire 1 s WB_I_TYPE_LOAD $end
$var wire 1 t WB_I_TYPE_JUMP $end
$var wire 1 u WB_I_TYPE_64 $end
$var wire 1 v U_TYPE_LOAD $end
$var wire 1 w U_TYPE_JUMP $end
$var wire 1 x U_TYPE_AUIPC $end
$var wire 1 y S_TYPE $end
$var wire 1 z R_TYPE_64 $end
$var wire 1 { R_TYPE $end
$var wire 64 | REG_WRITE_DATA [63:0] $end
$var wire 2 } REG_WRITEBACK_SELECTION [1:0] $end
$var wire 5 ~ RD [4:0] $end
$var wire 1 !" RAM_WRITE_ENABLE $end
$var wire 10 "" RAM_ADDR [9:0] $end
$var wire 64 #" R2_DATA_EXECUTE_3 [63:0] $end
$var wire 64 $" R2_DATA [63:0] $end
$var wire 5 %" R2 [4:0] $end
$var wire 64 &" R1_DATA_EXECUTE_3 [63:0] $end
$var wire 64 '" R1_DATA [63:0] $end
$var wire 5 (" R1 [4:0] $end
$var wire 7 )" OPCODE_WRITEBACK_5 [6:0] $end
$var wire 7 *" OPCODE [6:0] $end
$var wire 1 +" I_TYPE_OTHER $end
$var wire 1 ," I_TYPE_LOAD $end
$var wire 1 -" I_TYPE_JUMP $end
$var wire 1 ." I_TYPE_64 $end
$var wire 10 /" INSTRUCTION_ADDR [9:0] $end
$var wire 64 0" IMMEDIATE_VALUE [63:0] $end
$var wire 3 1" IMMEDIATE_SELECTION [2:0] $end
$var wire 7 2" FUNCT7 [6:0] $end
$var wire 3 3" FUNCT3 [2:0] $end
$var wire 1 4" B_TYPE $end
$var wire 2 5" ALU_X2_SEL [1:0] $end
$var wire 2 6" ALU_X1_SEL [1:0] $end
$var wire 64 7" ALU_OUT [63:0] $end
$var wire 4 8" ALU_OP [3:0] $end
$var reg 64 9" ALU_OUT_MEMORY_4 [63:0] $end
$var reg 64 :" ALU_X1 [63:0] $end
$var reg 64 ;" ALU_X2 [63:0] $end
$var reg 32 <" INSTRUCTION_DECODE_2 [31:0] $end
$var reg 32 =" INSTRUCTION_EXECUTE_3 [31:0] $end
$var reg 32 >" INSTRUCTION_MEMORY_4 [31:0] $end
$var reg 32 ?" INSTRUCTION_WRITEBACK_5 [31:0] $end
$var reg 10 @" PC [9:0] $end
$var reg 10 A" PC_DECODE_2 [9:0] $end
$var reg 10 B" PC_EXECUTE_3 [9:0] $end
$var reg 10 C" PC_MEMORY_4 [9:0] $end
$var reg 64 D" RAM_READ_DATA_WRITEBACK_5 [63:0] $end
$var reg 64 E" RAM_WRITE_DATA [63:0] $end
$var reg 64 F" REG_WRITE_DATA_WRITEBACK_5 [63:0] $end
$var integer 32 G" DECODE [31:0] $end
$var integer 32 H" EXECUTE [31:0] $end
$var integer 32 I" MEMORY [31:0] $end
$var integer 32 J" OP_B_TYPE [31:0] $end
$var integer 32 K" OP_I_TYPE_64 [31:0] $end
$var integer 32 L" OP_I_TYPE_JUMP [31:0] $end
$var integer 32 M" OP_I_TYPE_LOAD [31:0] $end
$var integer 32 N" OP_I_TYPE_OTHER [31:0] $end
$var integer 32 O" OP_R_TYPE [31:0] $end
$var integer 32 P" OP_R_TYPE_64 [31:0] $end
$var integer 32 Q" OP_S_TYPE [31:0] $end
$var integer 32 R" OP_U_TYPE_AUIPC [31:0] $end
$var integer 32 S" OP_U_TYPE_JUMP [31:0] $end
$var integer 32 T" OP_U_TYPE_LOAD [31:0] $end
$var integer 32 U" TYPE_BRANCH [31:0] $end
$var integer 32 V" TYPE_IMMEDIATE [31:0] $end
$var integer 32 W" TYPE_LOAD [31:0] $end
$var integer 32 X" TYPE_REGISTER [31:0] $end
$var integer 32 Y" TYPE_STORE [31:0] $end
$var integer 32 Z" TYPE_UPPERIMMEDIATE [31:0] $end
$var integer 32 [" WRITEBACK [31:0] $end
$scope begin PIPELINE[0] $end
$var wire 5 \" R1 [4:0] $end
$var wire 5 ]" R2 [4:0] $end
$var wire 5 ^" RD [4:0] $end
$var wire 3 _" TYPE [2:0] $end
$upscope $end
$scope begin PIPELINE[1] $end
$var wire 5 `" R1 [4:0] $end
$var wire 5 a" R2 [4:0] $end
$var wire 5 b" RD [4:0] $end
$var wire 3 c" TYPE [2:0] $end
$upscope $end
$scope begin PIPELINE[2] $end
$var wire 5 d" R1 [4:0] $end
$var wire 5 e" R2 [4:0] $end
$var wire 5 f" RD [4:0] $end
$var wire 3 g" TYPE [2:0] $end
$upscope $end
$scope begin PIPELINE[3] $end
$var wire 5 h" R1 [4:0] $end
$var wire 5 i" R2 [4:0] $end
$var wire 5 j" RD [4:0] $end
$var wire 3 k" TYPE [2:0] $end
$upscope $end
$scope module alu $end
$var wire 64 l" X [63:0] $end
$var wire 64 m" X_signed [63:0] $end
$var wire 64 n" Y [63:0] $end
$var wire 64 o" Y_signed [63:0] $end
$var wire 1 h isEqual $end
$var wire 64 p" OUTPUT [63:0] $end
$var wire 4 q" OP [3:0] $end
$var reg 128 r" RESULT [127:0] $end
$upscope $end
$scope module aluOpEncoder $end
$var wire 16 s" in [15:0] $end
$var reg 4 t" out [3:0] $end
$upscope $end
$scope module aluX1SelectionEncoder $end
$var wire 4 u" in [3:0] $end
$var reg 2 v" out [1:0] $end
$upscope $end
$scope module aluX2SelectionEncoder $end
$var wire 4 w" in [3:0] $end
$var reg 2 x" out [1:0] $end
$upscope $end
$scope module immediateExtractor $end
$var wire 32 y" INSTRUCTION [31:0] $end
$var wire 3 z" SELECTION [2:0] $end
$var wire 64 {" Imm_UJ [63:0] $end
$var wire 64 |" Imm_U [63:0] $end
$var wire 64 }" Imm_S [63:0] $end
$var wire 64 ~" Imm_I [63:0] $end
$var wire 64 !# Imm_B [63:0] $end
$var wire 4 "# IMM_4_1 [3:0] $end
$var wire 5 ## IMM_4_0 [4:0] $end
$var wire 20 $# IMM_31_12 [19:0] $end
$var wire 1 %# IMM_20 $end
$var wire 8 &# IMM_19_12 [7:0] $end
$var wire 1 '# IMM_12 $end
$var wire 1 (# IMM_11_J $end
$var wire 1 )# IMM_11_B $end
$var wire 7 *# IMM_11_5 [6:0] $end
$var wire 12 +# IMM_11_0 [11:0] $end
$var wire 6 ,# IMM_10_5 [5:0] $end
$var wire 10 -# IMM_10_1 [9:0] $end
$var reg 64 .# VALUE [63:0] $end
$upscope $end
$scope module immediateSelectionEncoder $end
$var wire 8 /# in [7:0] $end
$var reg 3 0# out [2:0] $end
$upscope $end
$scope module regFile $end
$var wire 5 1# R1 [4:0] $end
$var wire 64 2# R1_DATA [63:0] $end
$var wire 5 3# R2 [4:0] $end
$var wire 64 4# R2_DATA [63:0] $end
$var wire 5 5# RD [4:0] $end
$var wire 64 6# RD_DATA [63:0] $end
$var wire 1 F WRITE_ENABLE $end
$var integer 32 7# i [31:0] $end
$scope begin REG_DATAS[1] $end
$var wire 64 8# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[2] $end
$var wire 64 9# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[3] $end
$var wire 64 :# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[4] $end
$var wire 64 ;# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[5] $end
$var wire 64 <# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[6] $end
$var wire 64 =# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[7] $end
$var wire 64 ># R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[8] $end
$var wire 64 ?# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[9] $end
$var wire 64 @# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[10] $end
$var wire 64 A# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[11] $end
$var wire 64 B# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[12] $end
$var wire 64 C# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[13] $end
$var wire 64 D# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[14] $end
$var wire 64 E# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[15] $end
$var wire 64 F# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[16] $end
$var wire 64 G# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[17] $end
$var wire 64 H# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[18] $end
$var wire 64 I# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[19] $end
$var wire 64 J# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[20] $end
$var wire 64 K# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[21] $end
$var wire 64 L# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[22] $end
$var wire 64 M# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[23] $end
$var wire 64 N# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[24] $end
$var wire 64 O# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[25] $end
$var wire 64 P# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[26] $end
$var wire 64 Q# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[27] $end
$var wire 64 R# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[28] $end
$var wire 64 S# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[29] $end
$var wire 64 T# R_DATA [63:0] $end
$upscope $end
$scope begin REG_DATAS[30] $end
$var wire 64 U# R_DATA [63:0] $end
$upscope $end
$upscope $end
$scope module writeBackSelectionEncoder $end
$var wire 4 V# in [3:0] $end
$var reg 2 W# out [1:0] $end
$upscope $end
$upscope $end
$enddefinitions $end
#0
$dumpvars
b0 W#
b0 V#
b0 U#
b0 T#
b0 S#
b0 R#
b0 Q#
b0 P#
b0 O#
b0 N#
b0 M#
b0 L#
b0 K#
b0 J#
b0 I#
b0 H#
b0 G#
b0 F#
b0 E#
b0 D#
b0 C#
b0 B#
b0 A#
b0 @#
b0 ?#
b0 >#
b0 =#
b0 <#
b0 ;#
b0 :#
b0 9#
b0 8#
b100000 7#
b0 6#
b0 5#
b0 4#
b0 3#
b0 2#
b0 1#
b0 0#
b0 /#
b0 .#
b0 -#
b0 ,#
b0 +#
b0 *#
0)#
0(#
0'#
b0 &#
0%#
b0 $#
b0 ##
b0 "#
b0 !#
b0 ~"
b0 }"
b0 |"
b0 {"
b0 z"
b0 y"
b0 x"
b1 w"
b0 v"
b1 u"
b0 t"
b0 s"
b0 r"
b0 q"
b0 p"
b0 o"
b0 n"
b0 m"
b0 l"
bx k"
b0 j"
b0 i"
b0 h"
bx g"
b0 f"
b0 e"
b0 d"
bx c"
b0 b"
b0 a"
b0 `"
b11 _"
b0 ^"
b0 ]"
b0 \"
b11 ["
b100 Z"
b10 Y"
b0 X"
b1 W"
b11 V"
b101 U"
b110111 T"
b1100111 S"
b10111 R"
b100011 Q"
b111011 P"
b110011 O"
b10011 N"
b11 M"
b1101111 L"
b11011 K"
b1100011 J"
b10 I"
b1 H"
b0 G"
b0 F"
b0 E"
bz D"
b0 C"
b0 B"
b0 A"
b100 @"
b0 ?"
b0 >"
b0 ="
b10011 <"
b0 ;"
b0 :"
b0 9"
b0 8"
b0 7"
b0 6"
b0 5"
04"
b0 3"
b0 2"
b0 1"
b0 0"
b1 /"
0."
0-"
0,"
0+"
b0 *"
b0 )"
b0 ("
b0 '"
b0 &"
b0 %"
b0 $"
b0 #"
b0 ""
0!"
b0 ~
b0 }
b0 |
0{
0z
0y
0x
0w
0v
0u
0t
0s
0r
0q
0p
0o
0n
0m
b0 l
b1 k
b1 j
b0 i
1h
b0 g
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
0U
0T
0S
0R
0Q
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
bz E
b0 D
b0 C
0B
0A
0@
0?
0>
0=
0<
0;
0:
09
08
07
06
05
04
03
02
01
00
0/
0.
b10011 -
0,
0+
0*
0)
0(
1'
0&
0%
0$
0#
0"
0!
$end
#1
b0 E
b1010010011 -
#500
0'
#1000
b1 5"
b1 x"
b11 j
b11 w"
b1 l
b1 s"
b1 1"
b1 z"
b1 0#
b10 i
b10 /#
1.
1/
1+"
b10011 *"
b10 /"
b0 D"
b10011 ="
b10011 y"
b11 c"
b100 A"
b1010010011 <"
b101 ^"
b1000 @"
1'
#1001
b1010101000000000010100010011 -
#1500
0'
#2000
b101 }"
b100000000100 !#
b11 /"
b101 ##
1)#
b10 "#
b1010 ^"
b1010 ]"
b1100 @"
b101 b"
b1000 A"
b1010101000000000010100010011 <"
b11 g"
b1010010011 ="
b1010010011 y"
b100 B"
b10011 >"
1'
#2001
b1100000000000000011101111 -
#2500
0'
#3000
b10101010 7"
b10101010 p"
b10101010 r"
b10101010 o"
0h
b10101010 ;"
b10101010 n"
1F
b1 }
b1 W#
b10 g
b10 V#
1e
b10101010 0"
b10101010 .#
b10101010 ~"
b1010101000000000000000000000 |"
b10101010 }"
b10101010 !#
b10101010 {"
1r
b10011 )"
b1010 %"
b1010 3#
b101 2"
b10101010 +#
b1010101000000000 $#
b1010 ##
b101 *#
0)#
b101 "#
b101 ,#
b1010101 -#
b100 /"
b10011 ?"
b11 k"
b100 C"
b1010010011 >"
b101 f"
b1010101000000000010100010011 ="
b1010101000000000010100010011 y"
b1000 B"
b1010 b"
b1010 a"
b1100 A"
b1100000000000000011101111 <"
b1 ^"
b11000 ]"
b10000 @"
1'
#3001
b1011101100000000010110010011 -
#3500
0'
#4000
b100100 7"
b100100 p"
b100100 r"
b11000 o"
b11000 ;"
b11000 n"
b1100 m"
b1100 :"
b1100 l"
b0 l
b0 s"
b1 6"
b1 v"
1B
b11000 0"
b11000 .#
0/
b11 k
b11 u"
b11000 ~"
b1100000000000000000000000 |"
b1 }"
b100000000000 !#
b11000 {"
b101 /"
0+"
12
1-"
b1101111 *"
b11000 %"
b11000 3#
b0 2"
b11000 +#
b1100000000000 $#
b1 ##
b0 *#
1)#
b0 "#
b0 ,#
b1100 -#
b10101010 ""
b101 ~
b101 5#
b1011 ^"
b11011 ]"
b10100 @"
b1 b"
b11000 a"
b10000 A"
b1011101100000000010110010011 <"
b1010 f"
b1010 e"
b1100000000000000011101111 ="
b1100000000000000011101111 y"
b1100 B"
b101 j"
b10101010 9"
b1000 C"
b1010101000000000010100010011 >"
b1010010011 ?"
1'
#4001
b1100110000000000011000010011 -
#4500
0'
#5000
b10111011 7"
b10111011 p"
b10111011 r"
b10111011 o"
b10111011 ;"
b10111011 n"
b10101010 A#
b0 m"
b0 :"
b0 l"
b1 l
b1 s"
b0 6"
b0 v"
0B
b10111011 0"
b10111011 .#
1/
b1 k
b1 u"
b10111011 ~"
b1011101100000000000000000000 |"
b10101011 }"
b100010101010 !#
b100010111010 {"
b10101010 |
b10101010 6#
b1010 ~
b1010 5#
b100100 ""
1+"
02
0-"
b10011 *"
b11011 %"
b11011 3#
b101 2"
b10111011 +#
b1011101100000000 $#
b1011 ##
b101 *#
b101 "#
b101 ,#
1(#
b1011101 -#
b1001 /"
b10101010 F"
b1010101000000000010100010011 ?"
b1010 j"
b1010 i"
b100100 9"
b1100 C"
b1100000000000000011101111 >"
b1 f"
b11000 e"
b1011101100000000010110010011 ="
b1011101100000000010110010011 y"
b10000 B"
b1011 b"
b11011 a"
b10100 A"
b1100110000000000011000010011 <"
b1100 ^"
b1100 ]"
b100100 @"
1'
#5001
b1010010011 -
#5500
0'
#6000
b11001100 7"
b11001100 p"
b11001100 r"
b11001100 o"
b11001100 ;"
b11001100 n"
b100100 8#
b11001100 0"
b11001100 .#
b10 }
b10 W#
b11001100 ~"
b1100110000000000000000000000 |"
b11001100 }"
b11001100 !#
b11001100 {"
b100 g
b100 V#
b1010 /"
b1100 %"
b1100 3#
b110 2"
b11001100 +#
b1100110000000000 $#
b1100 ##
b110 *#
0)#
b110 "#
b110 ,#
0(#
b1100110 -#
b10111011 ""
b100100 |
b100100 6#
b1 ~
b1 5#
0r
1t
b1101111 )"
b101 ^"
b0 ]"
b101000 @"
b1100 b"
b1100 a"
b100100 A"
b1010010011 <"
b1011 f"
b11011 e"
b1100110000000000011000010011 ="
b1100110000000000011000010011 y"
b10100 B"
b1 j"
b11000 i"
b10111011 9"
b10000 C"
b1011101100000000010110010011 >"
b100100 F"
b1100000000000000011101111 ?"
1'
#6001
b100000000001100010011 -
#6500
0'
#7000
b0 7"
b0 p"
b0 r"
b0 o"
1h
b0 ;"
b0 n"
b10100 B#
b1 }
b1 W#
b0 0"
b0 .#
b10 g
b10 V#
b0 ~"
b0 |"
b101 }"
b100000000100 !#
b0 {"
b10100 |
b10100 6#
b1011 ~
b1011 5#
1r
0t
b10011 )"
b11001100 ""
b0 %"
b0 3#
b0 2"
b0 +#
b0 $#
b101 ##
b0 *#
1)#
b10 "#
b0 ,#
b0 -#
b1011 /"
b10100 F"
b1011101100000000010110010011 ?"
b1011 j"
b11011 i"
b11001100 9"
b10100 C"
b1100110000000000011000010011 >"
b1100 f"
b1100 e"
b1010010011 ="
b1010010011 y"
b100100 B"
b101 b"
b0 a"
b101000 A"
b100000000001100010011 <"
b110 ^"
b1 ]"
b101100 @"
1'
#7001
b1000000000001110010011 -
#7500
0'
#8000
b1 7"
b1 p"
b1 r"
b1 o"
0h
b1 ;"
b1 n"
b11001100 C#
b100100 D
b100100 $"
b1 0"
b1 .#
b1 ~"
b100000000000000000000 |"
b110 }"
b110 !#
b100000000000 {"
b1100 /"
b100100 #"
b100100 4#
b1 %"
b1 3#
b1 +#
b100000000 $#
b110 ##
0)#
b11 "#
1(#
b0 ""
b11001100 |
b11001100 6#
b1100 ~
b1100 5#
b111 ^"
b10 ]"
b110000 @"
b110 b"
b1 a"
b101100 A"
b1000000000001110010011 <"
b101 f"
b0 e"
b100000000001100010011 ="
b100000000001100010011 y"
b101000 B"
b1100 j"
b1100 i"
b0 9"
b100100 C"
b1010010011 >"
b11001100 F"
b1100110000000000011000010011 ?"
1'
#8001
b1100000000111000010011 -
#8500
0'
#9000
b10 7"
b10 p"
b10 r"
b10 o"
b10 ;"
b10 n"
b0 D
b0 $"
b10 0"
b10 .#
b10 ~"
b1000000000000000000000 |"
b111 }"
b100000000110 !#
b10 {"
b0 |
b0 6#
b101 ~
b101 5#
b1 ""
b0 #"
b0 4#
b10 %"
b10 3#
b10 +#
b1000000000 $#
b111 ##
1)#
0(#
b1 -#
b1101 /"
b0 F"
b1010010011 ?"
b101 j"
b0 i"
b100100 E"
b1 9"
b101000 C"
b100000000001100010011 >"
b110 f"
b1 e"
b1000000000001110010011 ="
b1000000000001110010011 y"
b101100 B"
b111 b"
b10 a"
b110000 A"
b1100000000111000010011 <"
b11100 ^"
b11 ]"
b110100 @"
1'
#9001
b1101111 -
#9500
0'
#10000
b11 7"
b11 p"
b11 r"
b11 o"
b11 ;"
b11 n"
b1 =#
b11 0"
b11 .#
b11 ~"
b1100000000000000000000 |"
b11100 }"
b11100 !#
b100000000010 {"
b1110 /"
b11 %"
b11 3#
b11 +#
b1100000000 $#
b11100 ##
0)#
b1110 "#
1(#
b10 ""
b1 |
b1 6#
b110 ~
b110 5#
b0 ^"
b0 ]"
b111000 @"
b11100 b"
b11 a"
b110100 A"
b1101111 <"
b111 f"
b10 e"
b1100000000111000010011 ="
b1100000000111000010011 y"
b110000 B"
b110 j"
b1 i"
b0 E"
b10 9"
b101100 C"
b1000000000001110010011 >"
b1 F"
b100000000001100010011 ?"
1'
#10001
b0 -
#10500
0'
#11000
b110100 7"
b110100 p"
b110100 r"
b0 o"
b0 ;"
b0 n"
b110100 m"
b110100 :"
b110100 l"
b10 >#
b0 l
b0 s"
b1 6"
b1 v"
1B
b0 0"
b0 .#
0/
b11 k
b11 u"
b0 ~"
b0 |"
b0 }"
b0 !#
b0 {"
b10 |
b10 6#
b111 ~
b111 5#
b11 ""
0+"
12
1-"
b1101111 *"
b0 %"
b0 3#
b0 +#
b0 $#
b0 ##
b0 "#
0(#
b0 -#
b1111 /"
b10 F"
b1000000000001110010011 ?"
b111 j"
b10 i"
b11 9"
b110000 C"
b1100000000111000010011 >"
b11100 f"
b11 e"
b1101111 ="
b1101111 y"
b110100 B"
b0 b"
b0 a"
b111000 A"
b0 <"
b111100 @"
1'
#11500
0'
#12000
b0 7"
b0 p"
b0 r"
1h
b11 S#
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b1101 /"
02
0-"
b0 *"
b110100 ""
b11 |
b11 6#
b11100 ~
b11100 5#
b110100 @"
b111100 A"
b0 f"
b0 e"
b0 ="
b0 y"
b111000 B"
b11100 j"
b11 i"
b110100 9"
b110100 C"
b1101111 >"
b11 F"
b1100000000111000010011 ?"
1'
#12001
b1101111 -
#12500
0'
#13000
b10 }
b10 W#
b100 g
b100 V#
b110100 |
b110100 6#
b0 ~
b0 5#
0r
1t
b1101111 )"
b0 ""
b1110 /"
b110100 F"
b1101111 ?"
b0 j"
b0 i"
b0 9"
b111000 C"
b0 >"
b111100 B"
b110100 A"
b1101111 <"
b111000 @"
1'
#13001
b0 -
#13500
0'
#14000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
b10 i
b10 /#
1.
0e
b1 6"
b1 v"
1B
b0 }
b0 W#
b11 k
b11 u"
b0 g
b0 V#
b1111 /"
12
1-"
b1101111 *"
b111100 |
b111100 6#
0t
b0 )"
b111100 @"
b111000 A"
b0 <"
b1101111 ="
b1101111 y"
b110100 B"
b111100 C"
b111100 F"
b0 ?"
1'
#14500
0'
#15000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b110100 ""
02
0-"
b0 *"
b1101 /"
b110100 9"
b110100 C"
b1101111 >"
b0 ="
b0 y"
b111000 B"
b111100 A"
b110100 @"
1'
#15001
b1101111 -
#15500
0'
#16000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
b1110 /"
b0 ""
1t
b1101111 )"
b111000 @"
b110100 A"
b1101111 <"
b111100 B"
b0 9"
b111000 C"
b0 >"
b1101111 ?"
1'
#16001
b0 -
#16500
0'
#17000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
0e
b10 i
b10 /#
1.
b0 }
b0 W#
b1 6"
b1 v"
1B
b0 g
b0 V#
b11 k
b11 u"
0t
b0 )"
12
1-"
b1101111 *"
b1111 /"
b0 ?"
b111100 C"
b1101111 ="
b1101111 y"
b110100 B"
b111000 A"
b0 <"
b111100 @"
1'
#17500
0'
#18000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b1101 /"
02
0-"
b0 *"
b110100 ""
b110100 @"
b111100 A"
b0 ="
b0 y"
b111000 B"
b110100 9"
b110100 C"
b1101111 >"
1'
#18001
b1101111 -
#18500
0'
#19000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
1t
b1101111 )"
b0 ""
b1110 /"
b1101111 ?"
b0 9"
b111000 C"
b0 >"
b111100 B"
b110100 A"
b1101111 <"
b111000 @"
1'
#19001
b0 -
#19500
0'
#20000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
b10 i
b10 /#
1.
0e
b1 6"
b1 v"
1B
b0 }
b0 W#
b11 k
b11 u"
b0 g
b0 V#
b1111 /"
12
1-"
b1101111 *"
0t
b0 )"
b111100 @"
b111000 A"
b0 <"
b1101111 ="
b1101111 y"
b110100 B"
b111100 C"
b0 ?"
1'
#20500
0'
#21000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b110100 ""
02
0-"
b0 *"
b1101 /"
b110100 9"
b110100 C"
b1101111 >"
b0 ="
b0 y"
b111000 B"
b111100 A"
b110100 @"
1'
#21001
b1101111 -
#21500
0'
#22000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
b1110 /"
b0 ""
1t
b1101111 )"
b111000 @"
b110100 A"
b1101111 <"
b111100 B"
b0 9"
b111000 C"
b0 >"
b1101111 ?"
1'
#22001
b0 -
#22500
0'
#23000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
0e
b10 i
b10 /#
1.
b0 }
b0 W#
b1 6"
b1 v"
1B
b0 g
b0 V#
b11 k
b11 u"
0t
b0 )"
12
1-"
b1101111 *"
b1111 /"
b0 ?"
b111100 C"
b1101111 ="
b1101111 y"
b110100 B"
b111000 A"
b0 <"
b111100 @"
1'
#23500
0'
#24000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b1101 /"
02
0-"
b0 *"
b110100 ""
b110100 @"
b111100 A"
b0 ="
b0 y"
b111000 B"
b110100 9"
b110100 C"
b1101111 >"
1'
#24001
b1101111 -
#24500
0'
#25000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
1t
b1101111 )"
b0 ""
b1110 /"
b1101111 ?"
b0 9"
b111000 C"
b0 >"
b111100 B"
b110100 A"
b1101111 <"
b111000 @"
1'
#25001
b0 -
#25500
0'
#26000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
b10 i
b10 /#
1.
0e
b1 6"
b1 v"
1B
b0 }
b0 W#
b11 k
b11 u"
b0 g
b0 V#
b1111 /"
12
1-"
b1101111 *"
0t
b0 )"
b111100 @"
b111000 A"
b0 <"
b1101111 ="
b1101111 y"
b110100 B"
b111100 C"
b0 ?"
1'
#26500
0'
#27000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b110100 ""
02
0-"
b0 *"
b1101 /"
b110100 9"
b110100 C"
b1101111 >"
b0 ="
b0 y"
b111000 B"
b111100 A"
b110100 @"
1'
#27001
b1101111 -
#27500
0'
#28000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
b1110 /"
b0 ""
1t
b1101111 )"
b111000 @"
b110100 A"
b1101111 <"
b111100 B"
b0 9"
b111000 C"
b0 >"
b1101111 ?"
1'
#28001
b0 -
#28500
0'
#29000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
0e
b10 i
b10 /#
1.
b0 }
b0 W#
b1 6"
b1 v"
1B
b0 g
b0 V#
b11 k
b11 u"
0t
b0 )"
12
1-"
b1101111 *"
b1111 /"
b0 ?"
b111100 C"
b1101111 ="
b1101111 y"
b110100 B"
b111000 A"
b0 <"
b111100 @"
1'
#29500
0'
#30000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b1101 /"
02
0-"
b0 *"
b110100 ""
b110100 @"
b111100 A"
b0 ="
b0 y"
b111000 B"
b110100 9"
b110100 C"
b1101111 >"
1'
#30001
b1101111 -
#30500
0'
#31000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
1t
b1101111 )"
b0 ""
b1110 /"
b1101111 ?"
b0 9"
b111000 C"
b0 >"
b111100 B"
b110100 A"
b1101111 <"
b111000 @"
1'
#31001
b0 -
#31500
0'
#32000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
b10 i
b10 /#
1.
0e
b1 6"
b1 v"
1B
b0 }
b0 W#
b11 k
b11 u"
b0 g
b0 V#
b1111 /"
12
1-"
b1101111 *"
0t
b0 )"
b111100 @"
b111000 A"
b0 <"
b1101111 ="
b1101111 y"
b110100 B"
b111100 C"
b0 ?"
1'
#32500
0'
#33000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b110100 ""
02
0-"
b0 *"
b1101 /"
b110100 9"
b110100 C"
b1101111 >"
b0 ="
b0 y"
b111000 B"
b111100 A"
b110100 @"
1'
#33001
b1101111 -
#33500
0'
#34000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
b1110 /"
b0 ""
1t
b1101111 )"
b111000 @"
b110100 A"
b1101111 <"
b111100 B"
b0 9"
b111000 C"
b0 >"
b1101111 ?"
1'
#34001
b0 -
#34500
0'
#35000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
0e
b10 i
b10 /#
1.
b0 }
b0 W#
b1 6"
b1 v"
1B
b0 g
b0 V#
b11 k
b11 u"
0t
b0 )"
12
1-"
b1101111 *"
b1111 /"
b0 ?"
b111100 C"
b1101111 ="
b1101111 y"
b110100 B"
b111000 A"
b0 <"
b111100 @"
1'
#35500
0'
#36000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b1101 /"
02
0-"
b0 *"
b110100 ""
b110100 @"
b111100 A"
b0 ="
b0 y"
b111000 B"
b110100 9"
b110100 C"
b1101111 >"
1'
#36001
b1101111 -
#36500
0'
#37000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
1t
b1101111 )"
b0 ""
b1110 /"
b1101111 ?"
b0 9"
b111000 C"
b0 >"
b111100 B"
b110100 A"
b1101111 <"
b111000 @"
1'
#37001
b0 -
#37500
0'
#38000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
b10 i
b10 /#
1.
0e
b1 6"
b1 v"
1B
b0 }
b0 W#
b11 k
b11 u"
b0 g
b0 V#
b1111 /"
12
1-"
b1101111 *"
0t
b0 )"
b111100 @"
b111000 A"
b0 <"
b1101111 ="
b1101111 y"
b110100 B"
b111100 C"
b0 ?"
1'
#38500
0'
#39000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b110100 ""
02
0-"
b0 *"
b1101 /"
b110100 9"
b110100 C"
b1101111 >"
b0 ="
b0 y"
b111000 B"
b111100 A"
b110100 @"
1'
#39001
b1101111 -
#39500
0'
#40000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
b1110 /"
b0 ""
1t
b1101111 )"
b111000 @"
b110100 A"
b1101111 <"
b111100 B"
b0 9"
b111000 C"
b0 >"
b1101111 ?"
1'
#40001
b0 -
#40500
0'
#41000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
0e
b10 i
b10 /#
1.
b0 }
b0 W#
b1 6"
b1 v"
1B
b0 g
b0 V#
b11 k
b11 u"
0t
b0 )"
12
1-"
b1101111 *"
b1111 /"
b0 ?"
b111100 C"
b1101111 ="
b1101111 y"
b110100 B"
b111000 A"
b0 <"
b111100 @"
1'
#41500
0'
#42000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b1101 /"
02
0-"
b0 *"
b110100 ""
b110100 @"
b111100 A"
b0 ="
b0 y"
b111000 B"
b110100 9"
b110100 C"
b1101111 >"
1'
#42001
b1101111 -
#42500
0'
#43000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
1t
b1101111 )"
b0 ""
b1110 /"
b1101111 ?"
b0 9"
b111000 C"
b0 >"
b111100 B"
b110100 A"
b1101111 <"
b111000 @"
1'
#43001
b0 -
#43500
0'
#44000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
b10 i
b10 /#
1.
0e
b1 6"
b1 v"
1B
b0 }
b0 W#
b11 k
b11 u"
b0 g
b0 V#
b1111 /"
12
1-"
b1101111 *"
0t
b0 )"
b111100 @"
b111000 A"
b0 <"
b1101111 ="
b1101111 y"
b110100 B"
b111100 C"
b0 ?"
1'
#44500
0'
#45000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b110100 ""
02
0-"
b0 *"
b1101 /"
b110100 9"
b110100 C"
b1101111 >"
b0 ="
b0 y"
b111000 B"
b111100 A"
b110100 @"
1'
#45001
b1101111 -
#45500
0'
#46000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
b1110 /"
b0 ""
1t
b1101111 )"
b111000 @"
b110100 A"
b1101111 <"
b111100 B"
b0 9"
b111000 C"
b0 >"
b1101111 ?"
1'
#46001
b0 -
#46500
0'
#47000
b110100 7"
b110100 p"
b110100 r"
b110100 m"
0h
b110100 :"
b110100 l"
b1 5"
b1 x"
b11 j
b11 w"
0F
b1 1"
b1 z"
b1 0#
0e
b10 i
b10 /#
1.
b0 }
b0 W#
b1 6"
b1 v"
1B
b0 g
b0 V#
b11 k
b11 u"
0t
b0 )"
12
1-"
b1101111 *"
b1111 /"
b0 ?"
b111100 C"
b1101111 ="
b1101111 y"
b110100 B"
b111000 A"
b0 <"
b111100 @"
1'
#47500
0'
#48000
b0 7"
b0 p"
b0 r"
1h
b0 m"
b0 :"
b0 l"
b0 5"
b0 x"
b1 j
b1 w"
b0 1"
b0 z"
b0 0#
b0 i
b0 /#
0.
b0 6"
b0 v"
0B
b1 k
b1 u"
b1101 /"
02
0-"
b0 *"
b110100 ""
b110100 @"
b111100 A"
b0 ="
b0 y"
b111000 B"
b110100 9"
b110100 C"
b1101111 >"
1'
#48001
b1101111 -
#48500
0'
#49000
1F
1e
b10 }
b10 W#
b100 g
b100 V#
1t
b1101111 )"
b0 ""
b1110 /"
b1101111 ?"
b0 9"
b111000 C"
b0 >"
b111100 B"
b110100 A"
b1101111 <"
b111000 @"
1'
#49001
