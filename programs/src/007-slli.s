# slli implementation
.text

.global _start;

_start:
    addi a1, zero, 4; # a1 = zero + 5

    slli a3, a1, 1; # a3 = a1 << 1

    sw a3, 60(zero);

1: j 1b # wait for finish   