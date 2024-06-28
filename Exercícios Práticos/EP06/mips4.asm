#x = 3; s0
#y = 4 ; s1
#z = ( 15*x + 67*y)*4; s2


.text
.globl main
main:
ori  $s0, $zero , 3
ori  $s1, $zero, 4

sll $t0, $s0 , 4 # t0 = 16x
sub $t0, $t0, $s0 # t0 = 16x - x

sll $t1, $s1, 6  # t1 = 64x
sll $t2, $s1, 1  # t2 = 2y
add $t2, $t2, $s1 # t2 = 2y +1
add $t2, $t2, $t1 # t2 = 64y + 3y

add $t2, $t2, $t0 # t2 = 15x + 67y
sll $s2, $t2, 2 # z = 4(15x + 67y)
