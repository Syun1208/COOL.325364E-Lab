;----------------------- Nhap so thu nhat luu vao bl
mov ah,1
int 21h             
sub al,30h
 
mov dh,10
mul dh              
mov bl,al           

mov ah,1
int 21h

sub al,30h
add bl,al
;----------------------- Nhap so thu 2 luu vao bh
mov ah,1
int 21h             
sub al,30h
 
mul dh              
mov bh,al           

mov ah,1
int 21h

sub al,30h
add bh,al                
;-----------------------  Luu tong vao cl,ch
mov ax,bx
add al,ah

mov ah,0
div dh
mov cx,ax
  
mov ah,0
div dh
mov cl,ah   
;----------------------- In ra man hinh
mov ah,2
mov dl,al
add dl,30h
int 21h                      

mov dl,cl
add dl,30h
int 21h  

mov dl,ch
add dl,30h
int 21h 
;----------------------- luu hieu vao bl,bh
mov ax,bx
sub al,ah

mov ah,0
div dh
mov bx,ax

;----------------------- In ra man hinh
mov ah,2
mov dl,bl
add dl,30h
int 21h

mov dl,bh
add dl,30h
int 21h
