# add implementation
.text

.global _start;

_start:
    addi a1, zero, 5; # a1 = zero + 5
    add a1, a1, a1; # a1 = a1 + a1

    sw a1, 60(zero);

1: j 1b # wait for finish 