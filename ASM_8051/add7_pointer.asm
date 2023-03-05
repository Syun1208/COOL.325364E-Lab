mov 00, #0c0h
mov 01, #0f9h
mov 02, #0a4h
mov 03, #0b0h
mov 04, #099h
mov 05, #092h
mov 06, #082h
mov 07, #0f8h
mov 08, #080h
begin:
mov a,p2
cpl a
mov 10, a
anl a, #00001111b
mov 11, a
mov a, 10
swap a
anl a, #00001111b
add a, 11
cjne a, #00h, print
mov 90h, #0c0h
jmp begin
print:
mov r0, a
mov 90h, @r0
jmp begin