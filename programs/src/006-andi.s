# andi implementation
.text

.global _start;

_start:
    addi a1, zero, 5; # a1 = zero + 5
    
    andi a3, a1, 3; # a3 = a1 & 3

    sw a3, 60(zero);

1: j 1b # wait for finish