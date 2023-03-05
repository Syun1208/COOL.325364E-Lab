

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

num_0:
cjne a, #00h, num_1
mov 90h, #0c0h
jmp begin

num_1:
cjne a, #01h, num_2
mov 90h, #0f9h
jmp begin

num_2:
cjne a, #02h, num_3
mov 90h, #0a4h
jmp begin

num_3:
cjne a, #03h, num_4
mov 90h, #0b0h
jmp begin

num_4:
cjne a, #04h, num_5
mov 90h, #099h
jmp begin

num_5:
cjne a, #05h, num_6
mov 90h, #092h
jmp begin

num_6:
cjne a, #06h, num_7
mov 90h, #082h
jmp begin

num_7:
cjne a, #07h, num_8
mov 90h, #0f8h
jmp begin

num_8:
mov 90h, #080h
jmp begin
