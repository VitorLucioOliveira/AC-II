#x = 3; s0
#y = 4 ; s1
#z = ( 15*x + 67*y)*4; s2

ori  $s0, $zero , 3
ori  $s1, $zero, 4


add $t0, $s0, $s0  # t0 = 2x
add $t0, $t0, $t0  # t0 = 4x
add $t0, $t0, $t0  # t0 = 8x
add $t0, $t0, $t0  # t0 = 16x
sub $t0, $t0, $s0  # t0 = 16x - x


add $t1, $s1, $s1 # t1 = 2y
add $t1, $t1, $t1 # t1 = 4y
add $t1, $t1, $t1 # t1 = 8y
add $t1, $t1, $t1 # t1 = 16y
add $t1, $t1, $t1 # t1 = 32y
add $t1, $t1, $t1 # t1 = 64y
add $t1, $t1, $s1 # t1 = 64y + 1
add $t1, $t1, $s1 # t1 = 65y + 1
add $t1, $t1, $s1 # t1 = 66y + 1

add $t2,  $t0,  $t1 # t2 = 15x + 67y = z
add $t2,  $t2,  $t2 # t2 = 2z
add $s2,  $t2,  $t2 # t2 = 4z
