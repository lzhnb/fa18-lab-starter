.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial
    
    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result
    
    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    lw t1, 0(t0)
    addi t1, t1, -1
    sw t1 0(t0)
    bne t1, x0, times
    jr ra
times:
    mul a0, a0, t1
    j factorial

