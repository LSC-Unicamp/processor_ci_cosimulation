# lui implementation
.text

.global _start;

_start:
    lui a1, 446464; # a1 = 446464

    sw a1, 60(zero);

1: j 1b # wait for finish