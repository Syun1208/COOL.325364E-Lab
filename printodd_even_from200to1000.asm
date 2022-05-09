
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov dx,0C8H 

loop1:
push dx    
;print
mov ax, dx 
mov bl, 0Ah     ; ah
div bl
mov cl, ah
mov ah, 0 
div bl 
mov dx, ax  
add dl, 30h
mov ah, 2
int 21h
mov dl, dh  
add dl, 30h
int 21h
mov dl, cl
add dl, 30h
int 21h
; space
mov dl, 02h
int 21h 
;
pop dx  
inc dx 
inc dx
push dx

cmp dx, 03E8H    
;cmp dx, 0D2H
jge start2
jmp loop1
   
 
start2:  
mov dx,0C9H 

loop2:
push dx    
;print
mov ax, dx 
mov bl, 0Ah     ; ah
div bl
mov cl, ah
mov ah, 0 
div bl 
mov dx, ax  
add dl, 30h
mov ah, 2
int 21h
mov dl, dh  
add dl, 30h
int 21h
mov dl, cl
add dl, 30h
int 21h
; space
mov dl, 02h
int 21h 
;
pop dx  
inc dx 
inc dx
push dx

cmp dx,03E8H   
;cmp dx, 0D2H
jge ending
jmp loop2


ending:





