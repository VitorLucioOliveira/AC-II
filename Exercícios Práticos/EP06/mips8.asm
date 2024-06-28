.text
.globl main
main:
ori $t0, $zero, 0x1234
sll $t0 ,$t0, 16

ori $t0, $t0, 0x5678
