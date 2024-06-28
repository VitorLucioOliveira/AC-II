.text
.globl main
main:

ori $t0, $zero, 0x186A
sll $s0, $t0 , 1 # x = 100.000

ori $t0, $zero, 0x30D4
sll $s1, $t0 , 1 # y= 200.000

add $s2, $s1, $s0 # z = x +y