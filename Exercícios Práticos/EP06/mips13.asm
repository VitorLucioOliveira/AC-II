#FALTA 

.text
.globl main 
main:

srl $t0, $t0, 31
beq $t0, $zero, fim

sub $t0, $zero, $t0
fim:
.data
A: .word -5