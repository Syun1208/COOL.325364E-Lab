mov A, p2
cpl A
mov B, #10h
div AB
add A,B
cpl A
mov p1,A
