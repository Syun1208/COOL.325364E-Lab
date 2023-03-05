mov ah, 1
int 21h   ; AL=34h number A 
mov dl, al; dl is the 1st number 
int 21h 
mov dh, al; dh is the 2nd number 
; summation 7+1=8  
mov cx, dx  ;dx for summation; cx for subtraction
sub dx, 3030h   ;'7' 37h -> 07h ;'1' 31h -> 01h   
add dl, dh
add dl, 30h 
mov ah, 2
int 21h 

mov dx, cx
sub dx, 3030h   ;'7' 37h -> 07h ;'1' 31h -> 01h   
sub dl, dh
add dl, 30h 
mov ah, 2
int 21h