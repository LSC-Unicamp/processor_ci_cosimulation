$date
	Tue May  6 16:20:26 2025
$end
$version
	Icarus Verilog
$end
$timescale
	1ps
$end
$scope module CPU $end
$var wire 1 ! busReady $end
$var wire 1 " clk $end
$var wire 32 # csrDataIn [31:0] $end
$var wire 32 $ dataIn [31:0] $end
$var wire 1 % reset $end
$var wire 1 & writeEnable $end
$var wire 4 ' wRegNum [3:0] $end
$var wire 32 ( wDataIn [31:0] $end
$var wire 32 ) regOut1 [31:0] $end
$var wire 32 * regOut0 [31:0] $end
$var wire 4 + regNum1 [3:0] $end
$var wire 4 , regNum0 [3:0] $end
$var wire 1 - pcWriteEnable $end
$var wire 1 . pcWriteAdd $end
$var wire 32 / pcDataOut [31:0] $end
$var wire 32 0 pcDataIn [31:0] $end
$var wire 1 1 pcCountEnable $end
$var wire 64 2 instructionsExecuted [63:0] $end
$var wire 32 3 dataOut [31:0] $end
$var wire 1 4 csrWriteEnable $end
$var wire 12 5 csrNumber [11:0] $end
$var wire 32 6 csrDataOut [31:0] $end
$var wire 1 7 busWriteEnable $end
$var wire 1 8 busValid $end
$var wire 1 9 busInstr $end
$var wire 32 : aluY [31:0] $end
$var wire 32 ; aluX [31:0] $end
$var wire 4 < aluOp [3:0] $end
$var wire 32 = aluO [31:0] $end
$var wire 32 > address [31:0] $end
$scope module PC $end
$var wire 1 " clk $end
$var wire 32 ? dataOut [31:0] $end
$var wire 1 % reset $end
$var wire 1 - writeEnable $end
$var wire 1 . writeAdd $end
$var wire 32 @ dataIn [31:0] $end
$var wire 1 1 countEnable $end
$var reg 32 A programCounter [31:0] $end
$upscope $end
$scope module alu $end
$var wire 4 B operation [3:0] $end
$var wire 32 C Y [31:0] $end
$var wire 32 D X [31:0] $end
$var wire 32 E O [31:0] $end
$var reg 32 F result [31:0] $end
$upscope $end
$scope module ins $end
$var wire 32 G aluO [31:0] $end
$var wire 1 ! busReady $end
$var wire 1 " clk $end
$var wire 32 H csrDataIn [31:0] $end
$var wire 32 I dataIn [31:0] $end
$var wire 32 J pcDataOut [31:0] $end
$var wire 1 % reset $end
$var wire 32 K regOutB [31:0] $end
$var wire 32 L regOutA [31:0] $end
$var wire 2 M numberOfBytes [1:0] $end
$var wire 5 N inputRs2 [4:0] $end
$var wire 5 O inputRs1 [4:0] $end
$var wire 5 P inputRd [4:0] $end
$var wire 7 Q inputOpcode [6:0] $end
$var wire 7 R inputFunct7 [6:0] $end
$var wire 3 S inputFunct3 [2:0] $end
$var wire 2 T inputByteOffset [1:0] $end
$var wire 20 U immTypeU [19:0] $end
$var wire 12 V immTypeS [11:0] $end
$var wire 20 W immTypeJ [19:0] $end
$var wire 12 X immTypeI [11:0] $end
$var wire 13 Y immTypeB [12:0] $end
$var wire 5 Z immCsr [4:0] $end
$var wire 32 [ csrOpField [31:0] $end
$var wire 12 \ csrIns [11:0] $end
$var reg 32 ] address [31:0] $end
$var reg 4 ^ aluOp [3:0] $end
$var reg 32 _ aluX [31:0] $end
$var reg 32 ` aluY [31:0] $end
$var reg 1 9 busInstr $end
$var reg 1 8 busValid $end
$var reg 1 7 busWriteEnable $end
$var reg 32 a csrDataOut [31:0] $end
$var reg 12 b csrNumber [11:0] $end
$var reg 1 4 csrWriteEnable $end
$var reg 4 c currentState [3:0] $end
$var reg 32 d dataOut [31:0] $end
$var reg 3 e funct3 [2:0] $end
$var reg 7 f funct7 [6:0] $end
$var reg 32 g imm [31:0] $end
$var reg 64 h instructionsExecuted [63:0] $end
$var reg 7 i opcode [6:0] $end
$var reg 1 1 pcCountEnable $end
$var reg 32 j pcDataIn [31:0] $end
$var reg 1 . pcWriteAdd $end
$var reg 1 - pcWriteEnable $end
$var reg 5 k rd [4:0] $end
$var reg 4 l regNumA [3:0] $end
$var reg 4 m regNumB [3:0] $end
$var reg 5 n rs1 [4:0] $end
$var reg 5 o rs2 [4:0] $end
$var reg 32 p tmpInstruction [31:0] $end
$var reg 32 q wRegDataIn [31:0] $end
$var reg 4 r wRegRegNum [3:0] $end
$var reg 1 & wRegWriteEnable $end
$upscope $end
$scope module registers $end
$var wire 1 " clk $end
$var wire 32 s dataOut0 [31:0] $end
$var wire 32 t dataOut1 [31:0] $end
$var wire 4 u regNum0 [3:0] $end
$var wire 4 v regNum1 [3:0] $end
$var wire 1 % reset $end
$var wire 32 w wDataIn [31:0] $end
$var wire 4 x wRegNum [3:0] $end
$var wire 1 & writeEnable $end
$var integer 32 y i [31:0] $end
$scope begin register[0] $end
$var wire 32 z tmp [31:0] $end
$upscope $end
$scope begin register[1] $end
$var wire 32 { tmp [31:0] $end
$upscope $end
$scope begin register[2] $end
$var wire 32 | tmp [31:0] $end
$upscope $end
$scope begin register[3] $end
$var wire 32 } tmp [31:0] $end
$upscope $end
$scope begin register[4] $end
$var wire 32 ~ tmp [31:0] $end
$upscope $end
$scope begin register[5] $end
$var wire 32 !" tmp [31:0] $end
$upscope $end
$scope begin register[6] $end
$var wire 32 "" tmp [31:0] $end
$upscope $end
$scope begin register[7] $end
$var wire 32 #" tmp [31:0] $end
$upscope $end
$scope begin register[8] $end
$var wire 32 $" tmp [31:0] $end
$upscope $end
$scope begin register[9] $end
$var wire 32 %" tmp [31:0] $end
$upscope $end
$scope begin register[10] $end
$var wire 32 &" tmp [31:0] $end
$upscope $end
$scope begin register[11] $end
$var wire 32 '" tmp [31:0] $end
$upscope $end
$scope begin register[12] $end
$var wire 32 (" tmp [31:0] $end
$upscope $end
$scope begin register[13] $end
$var wire 32 )" tmp [31:0] $end
$upscope $end
$scope begin register[14] $end
$var wire 32 *" tmp [31:0] $end
$upscope $end
$scope begin register[15] $end
$var wire 32 +" tmp [31:0] $end
$upscope $end
$upscope $end
$upscope $end
$enddefinitions $end
#0
$dumpvars
b0 +"
b0 *"
b0 )"
b0 ("
b0 '"
b0 &"
b0 %"
b0 $"
b0 #"
b0 ""
b0 !"
b0 ~
b0 }
b0 |
b0 {
b0 z
b10000 y
b0 x
b0 w
b0 v
b0 u
b0 t
b0 s
b0 r
b0 q
b0 p
b0 o
b0 n
b0 m
b0 l
b0 k
b0 j
b110011 i
b0 h
b0 g
b0 f
b0 e
b0 d
b100 c
b0 b
bx a
b0 `
b0 _
b0 ^
b0 ]
bz \
b0 [
bz Z
bz0 Y
bz X
bz0 W
bz V
bz U
b0 T
bz S
bz R
bz Q
bz P
bz O
bz N
b0 M
b0 L
b0 K
b10000000000000000000000000000000 J
bz I
bz H
b0 G
b0 F
b0 E
b0 D
b0 C
b0 B
b10000000000000000000000000000000 A
b0 @
b10000000000000000000000000000000 ?
b0 >
b0 =
b0 <
b0 ;
b0 :
09
08
07
bx 6
b0 5
04
b0 3
b0 2
01
b0 0
b10000000000000000000000000000000 /
0.
0-
b0 ,
b0 +
b0 *
b0 )
b0 (
b0 '
0&
1%
bz $
bz #
1"
1!
$end
#500
0"
#1000
1"
#1500
0"
#2000
1"
#2500
0"
#3000
1"
#3500
0"
#4000
1"
#4500
0"
#5000
19
18
11
b10000000000000000000000000000000 >
b10000000000000000000000000000000 ]
b0 c
1&
1"
0%
#5001
b100000000000 W
b10011 Q
b0 S
b0 R
b1011 P
b0 O
b1 N
b1 X
b1011 V
b100000001010 Y
b100000000 U
b1 \
b0 Z
b100000000010110010011 $
b100000000010110010011 I
#5500
0"
#6000
b10000000000000000000000000000100 /
b10000000000000000000000000000100 ?
b10000000000000000000000000000100 J
b10000000000000000000000000000100 A
b1 2
b1 h
b10 c
09
08
0&
01
1"
#6500
0"
#7000
b11 c
b1 g
b1011 '
b1011 r
b1011 x
b1 +
b1 m
b1 v
b1 o
b1011 k
b10011 i
b100000000010110010011 p
1"
#7500
0"
#8000
b1 T
b1 =
b1 E
b1 F
b1 G
b100 c
b1 :
b1 C
b1 `
1"
#8500
0"
#9000
19
18
11
b10000000000000000000000000000100 >
b10000000000000000000000000000100 ]
b0 c
1&
b1 (
b1 q
b1 w
1"
#9001
b10 W
b1100 P
b10 N
b10 X
b1100 V
b1100 Y
b1000000000 U
b10 \
b1000000000011000010011 $
b1000000000011000010011 I
#9500
0"
#10000
b10000000000000000000000000001000 /
b10000000000000000000000000001000 ?
b10000000000000000000000000001000 J
b10000000000000000000000000001000 A
b1 '"
b10 2
b10 h
b10 c
09
08
0&
01
1"
#10500
0"
#11000
b11 c
b10 g
b1100 '
b1100 r
b1100 x
b10 +
b10 m
b10 v
b10 o
b1100 k
b1000000000011000010011 p
1"
#11500
0"
#12000
b10 T
b10 =
b10 E
b10 F
b10 G
b100 c
b10 :
b10 C
b10 `
1"
#12500
0"
#13000
19
18
11
b10000000000000000000000000001000 >
b10000000000000000000000000001000 ]
b0 c
1&
b10 (
b10 q
b10 w
1"
#13001
b1011000100000101010 W
b1100011 Q
b1 R
b0 P
b1011 O
b1011 N
b101011 X
b100000 V
b100000 Y
b10101101011000 U
b101011 \
b1011 Z
b10101101011000000001100011 $
b10101101011000000001100011 I
#13500
0"
#14000
b10000000000000000000000000001100 /
b10000000000000000000000000001100 ?
b10000000000000000000000000001100 J
b10000000000000000000000000001100 A
b10 ("
b11 2
b11 h
b10 c
09
08
0&
01
1"
#14500
0"
#15000
b1 [
b11 c
b100000 g
b0 '
b0 r
b0 x
b1 )
b1 K
b1 t
b1011 +
b1011 m
b1011 v
b1 *
b1 L
b1 s
b1011 ,
b1011 l
b1011 u
b1011 o
b1011 n
b0 k
b1 f
b1100011 i
b10101101011000000001100011 p
1"
#15500
0"
#16000
b1 T
b1 =
b1 E
b1 F
b1 G
b100 c
b1 :
b1 C
b1 `
b1 ;
b1 D
b1 _
b1101 <
b1101 B
b1101 ^
1"
#16500
0"
#17000
b101 c
b100000 0
b100000 @
b100000 j
1.
1-
1"
#17500
0"
#18000
b10000000000000000000000000101000 /
b10000000000000000000000000101000 ?
b10000000000000000000000000101000 J
b10000000000000000000000000101000 A
0.
0-
b110 c
1"
#18500
0"
#19000
19
18
b0 c
11
b10000000000000000000000000101000 >
b10000000000000000000000000101000 ]
1"
#19001
b100000001110 W
b10011 Q
b0 R
b1110 P
b0 O
b1111 N
b1111 X
b1110 V
b1110 Y
b111100000000 U
b1111 \
b0 Z
b111100000000011100010011 $
b111100000000011100010011 I
#19500
0"
#20000
b10000000000000000000000000101100 /
b10000000000000000000000000101100 ?
b10000000000000000000000000101100 J
b10000000000000000000000000101100 A
b100 2
b100 h
b10 c
09
08
01
1"
#20500
0"
#21000
b0 [
b11 c
b1111 g
b1110 '
b1110 r
b1110 x
b0 )
b0 K
b0 t
b1111 +
b1111 m
b1111 v
b0 *
b0 L
b0 s
b0 ,
b0 l
b0 u
b1111 o
b0 n
b1110 k
b0 f
b10011 i
b111100000000011100010011 p
1"
#21500
0"
#22000
b11 T
b1111 =
b1111 E
b1111 F
b1111 G
b100 c
b0 ;
b0 D
b0 _
b1111 :
b1111 C
b1111 `
b0 <
b0 B
b0 ^
1"
#22500
0"
#23000
19
18
11
b10000000000000000000000000101100 >
b10000000000000000000000000101100 ]
b0 c
1&
b1111 (
b1111 q
b1111 w
1"
#23001
b1110000000000001100 W
b110011 Q
b1110 O
b1100 N
b1100 X
b110001110000 U
b1100 \
b1110 Z
b110001110000011100110011 $
b110001110000011100110011 I
#23500
0"
#24000
b10000000000000000000000000110000 /
b10000000000000000000000000110000 ?
b10000000000000000000000000110000 J
b10000000000000000000000000110000 A
b1111 *"
b101 2
b101 h
b10 c
09
08
0&
01
1"
#24500
0"
#25000
b1111 [
b11 c
b10 )
b10 K
b10 t
b1100 +
b1100 m
b1100 v
b1111 *
b1111 L
b1111 s
b1110 ,
b1110 l
b1110 u
b1100 o
b1110 n
b110011 i
b110001110000011100110011 p
1"
#25500
0"
#26000
b1 T
b10001 =
b10001 E
b10001 F
b10001 G
b100 c
b10 :
b10 C
b10 `
b1111 ;
b1111 D
b1111 _
1"
#26500
0"
#27000
19
18
11
b10000000000000000000000000110000 >
b10000000000000000000000000110000 ]
b0 c
1&
b10001 (
b10001 q
b10001 w
1"
#27001
b1011000011111101100 W
b1100011 Q
b1111111 R
b101 P
b1011 O
b111111101100 X
b111111100101 V
b1111111100100 Y
b11111110110001011000 U
b111111101100 \
b1011 Z
b11111110110001011000001011100011 $
b11111110110001011000001011100011 I
#27500
0"
#28000
b10001 [
b10000000000000000000000000110100 /
b10000000000000000000000000110100 ?
b10000000000000000000000000110100 J
b10000000000000000000000000110100 A
b10001 *
b10001 L
b10001 s
b10001 *"
b110 2
b110 h
b10 c
09
08
0&
01
1"
#28500
0"
#29000
b1 [
b11 c
b11111111111111111111111111100100 g
b101 '
b101 r
b101 x
b1 *
b1 L
b1 s
b1011 ,
b1011 l
b1011 u
b1011 n
b101 k
b1111111 f
b1100011 i
b11111110110001011000001011100011 p
1"
#29500
0"
#30000
b0 T
b0 =
b0 E
b0 F
b0 G
b100 c
b1 ;
b1 D
b1 _
b1101 <
b1101 B
b1101 ^
1"
#30500
0"
#31000
19
18
b0 c
11
b10000000000000000000000000110100 >
b10000000000000000000000000110100 ]
1"
#31001
b10000000101110 W
b100011 Q
b10 S
b1 R
b11100 P
b0 O
b1110 N
b101110 X
b111100 V
b111100 Y
b10111000000010 U
b101110 \
b0 Z
b10111000000010111000100011 $
b10111000000010111000100011 I
#31500
0"
#32000
b10000000000000000000000000111000 /
b10000000000000000000000000111000 ?
b10000000000000000000000000111000 J
b10000000000000000000000000111000 A
b111 2
b111 h
b10 c
09
08
01
1"
#32500
0"
#33000
b0 [
b10 M
b11 c
b111100 g
b1100 '
b1100 r
b1100 x
b10001 )
b10001 K
b10001 t
b1110 +
b1110 m
b1110 v
b0 *
b0 L
b0 s
b0 ,
b0 l
b0 u
b1110 o
b0 n
b11100 k
b1 f
b10 e
b100011 i
b10111000000010111000100011 p
1"
#33500
0"
#34000
b111100 =
b111100 E
b111100 F
b111100 G
b100 c
b0 <
b0 B
b0 ^
b0 :
b0 C
b0 `
b111100 ;
b111100 D
b111100 _
1"
#34500
0"
#35000
18
b111100 >
b111100 ]
1"
#35001
b0 W
b0 Q
b0 S
b0 R
b0 P
b0 N
b0 X
b0 V
b0 Y
b0 U
b0 \
b0 $
b0 I
#35500
0"
#36000
08
b101 c
1"
#36500
0"
#37000
18
17
b10001 3
b10001 d
1"
#37500
0"
#38000
08
b110 c
1"
#38500
0"
#39000
19
18
11
b10000000000000000000000000111000 >
b10000000000000000000000000111000 ]
07
b0 c
1"
#39001
b1101111 Q
b1101111 $
b1101111 I
#39500
0"
#40000
b10000000000000000000000000111100 /
b10000000000000000000000000111100 ?
b10000000000000000000000000111100 J
b10000000000000000000000000111100 A
b1000 2
b1000 h
b10 c
09
08
01
1"
#40500
0"
#41000
b0 M
b11 c
b0 g
b0 '
b0 r
b0 x
b0 )
b0 K
b0 t
b0 +
b0 m
b0 v
b0 o
b0 k
b0 f
b0 e
b1101111 i
b1101111 p
1"
#41500
0"
#42000
b10000000000000000000000000111100 =
b10000000000000000000000000111100 E
b10000000000000000000000000111100 F
b10000000000000000000000000111100 G
b100 c
b10000000000000000000000000111100 ;
b10000000000000000000000000111100 D
b10000000000000000000000000111100 _
1&
b10000000000000000000000000111100 (
b10000000000000000000000000111100 q
b10000000000000000000000000111100 w
1"
#42500
0"
#43000
19
18
b0 c
1-
b10000000000000000000000000111100 0
b10000000000000000000000000111100 @
b10000000000000000000000000111100 j
0&
1"
#43500
0"
#44000
b1001 2
b1001 h
b10 c
09
08
0-
1"
#44500
0"
#45000
b11 c
1"
#45500
0"
#46000
b100 c
1&
1"
#46500
0"
#47000
19
18
b0 c
1-
0&
1"
#47500
0"
#48000
b1010 2
b1010 h
b10 c
09
08
0-
1"
#48500
0"
#49000
b11 c
1"
#49500
0"
#50000
b100 c
1&
1"
#50500
0"
#51000
19
18
b0 c
1-
0&
1"
#51500
0"
#52000
b1011 2
b1011 h
b10 c
09
08
0-
1"
#52500
0"
#53000
b11 c
1"
#53500
0"
#54000
b100 c
1&
1"
#54001
