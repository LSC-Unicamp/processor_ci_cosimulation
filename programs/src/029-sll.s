# sll implementation
.text

.global _start;

_start:
    addi a1, zero, 4; # a1 = zero + 5
    addi a2, zero, 1; # a1 = zero + 1

    sll a3, a1, a2; # a3 = a1 << a2

    sw a3, 60(zero);

1: j 1b # wait for finish   