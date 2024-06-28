#FALTA 

.text
.globl main 

andi  $t0, $t0, 1
beq $t0, $zero, par

sub $t0, $zero, $t0
par:
.data
A: .word 5
B: .word -1