# sh implementation
.text

.global _start

_start:
    addi a1, zero, 2047;      # Carrega o primeiro número (2047) em a1

    slli a1, a1, 6;
    
    sh a1, 48(zero);

    lw a2, 48(zero);
    sw a2, 60(zero);

1: j 1b # wait for finish