# auipc implementation
.text

.global _start;

_start:
    auipc a2, 0; # a2 = 0 + PC, PC = 0x80000000

    auipc a3, 0; # a3 = 0 + PC, PC = 0x80000004

    sw a3, 56(zero);
    sw a2, 60(zero);

1: j 1b # wait for finish