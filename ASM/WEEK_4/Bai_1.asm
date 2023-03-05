;Calculate 2^n and display on the screen
    mov ah,1     
    int 21h      
    mov cl,al    
    mov ax,1
    rol ax,cl
    xor cl,cl 
chia: 
    mov dx,0
    mov bx,10
    div bx
    push dx
    inc cl
    cmp al,0
    je xuat
    jmp chia
xuat:
    pop dx  
    add dl,30h
    mov ah,2  
    int 21h               
    dec cl
    cmp cl,0        
    mov bl,2   
    mov ah,0
    div dl
    ja xuat
 
 
