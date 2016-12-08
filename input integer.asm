    .data
op1: .word  10
op2: .word  20
space: .asciiz " " #space to insert between numbers

    .text
    la $t0, op1  # load address
    la $t1, op2
    #load word
    lw  $t2, 0($t0)
    lw $t3, 0($t1)
    
    #print op1 in binary
    move $a0 , $t2
    li $v0, 35
    syscall
    
    #print space
    la $a0, space
    li $v0, 4
    syscall
    
    #print op2
    move $a0, $t3
    li $v0 35
    syscall
    
    
