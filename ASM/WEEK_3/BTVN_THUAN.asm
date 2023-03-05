;nhap n , ab se co n chu so
.model small
.stack 100h
.data
.code
main proc
mov ah,1
int 21h
mov bl,al
sub bl,30h
cmp bl,4 
jg nhaplai

jle nhapab

nhaplai:
mov dl,4Eh ; xuat N
mov ah,2
int 21h
jmp main

nhapab:
cmp bl,0
JE nhaplai
mov dl,59h ; xuat Y
mov ah,2
int 21h 
cmp bl,1
JE n1 
cmp bl,2
JE n2
cmp bl,3
JE n3
cmp bl,4
JE n4  

n1:
        mov ah,1      ;so thu nhat
        int 21h             
        sub al,30h            
        mov bl,al           
        mov cl,al 
        
        mov ah,1       ;so thu hai
        int 21h
        sub al,30h
        
        mov bh,al    
        mov cx,0
        mov cl,bl
        mov dx,0
        mov dl,bh
        mov bh,0
        add cx,dx
        sub bx,dx
        mov dx,0
        push bx      
        
        ;xuat tong 
        mov ah,0
        mov ax,cx  
        
      mov bx,10
        div bx
        push dx
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx 
        
        
    
        pop dx
        add dx, 30h 
        mov ah,2
        int 21h
  
        
        pop dx 
        add dx, 30h 
        mov ah,2
        int 21h
;xuat hieu
        pop ax  
         mov dx,0
        
            
        mov bx,10
        div bx
        push dx
        

        div bl
        mov dl,ah 
        mov ah,0
        push dx
        
                
        pop dx
        add dx, 30h 
        mov ah,2
        int 21h 
        
         
        
        pop dx 
        add dx, 30h 
        mov ah,2
        int 21h
        
        jmp exit 
        

n2: 
        mov ah,1      ;so hang chuc
        int 21h             
        sub al,30h
        mov dh,10
        mul dh              
        mov bl,al           
        
        mov ah,1      ;so hang dv
        int 21h 
        sub al,30h
        add bl,al  
        
        mov ah,1        ;so hang chuc
        int 21h             
        sub al,30h   
        mul dh              
        mov bh,al           
        
        mov ah,1     ;so hang dv
        int 21h
        sub al,30h
        add bh,al
        
        mov cx,0
        mov cl,bl
        mov dx,0
        mov dl,bh
        mov bh,0
        add cx,dx
        sub bx,dx
        mov dx,0
        push bx
      
      
;xuat tong 
        mov ah,0
        mov ax,cx  
        
      mov bx,10
        div bx
        push dx
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx 
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx
        
              
        pop dx
        add dx, 30h 
        mov ah,2
        int 21h
          
         pop dx
        add dx, 30h 
        mov ah,2
        int 21h  
        
        pop dx 
        add dx, 30h 
        mov ah,2
        int 21h
;xuat hieu
        pop ax  
         mov dx,0
        
            
        mov bx,10
        div bx
        push dx
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx  
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx
        
                
        pop dx
        add dx, 30h 
        mov ah,2
        int 21h 
        
         pop dx
        add dx, 30h 
        mov ah,2
        int 21h
         
        
        pop dx 
        add dx, 30h 
        mov ah,2
        int 21h
        
        jmp exit
n3:
        mov ah,1     ;so hang tram
        int 21h             
        sub al,30h
        sub ah,1
        mov dh,100
        mul dh              
        mov bx,ax           
        
        mov ah,1       ;so hang chuc
        int 21h 
        sub al,30h
        sub ah,1 
        mov dh,10
        mul dh 
        add bx,ax  
        
        mov ah,1     ;so hang dv
        int 21h             
        sub al,30h
        sub ah,1
        add bx,ax
                  
        mov ah,1      ;so hang tram
        int 21h             
        sub al,30h
        sub ah,1     
        mov dh,100
        mul dh              
        mov cx,ax           
        
        mov ah,1      ;so hang chuc
        int 21h 
        sub al,30h
        sub ah,1 
        mov dh,10
        mul dh 
        add cx,ax  
        
        mov ah,1     ;so hang dv
        int 21h             
        sub al,30h
        sub ah,1
        add cx,ax 
        
        mov dx,cx
        add cx,bx
        sub bx,dx
        mov dx,0
        push bx
      
      
;xuat tong 
        mov ah,0
        mov ax,cx  
        
      mov bx,10
        div bx
        push dx
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx
        
        div bl
        mov dl,ah
        mov ah,0
        push dx
          
           div bl
        mov dl,ah
        mov ah,0
        push dx
        
              
              pop dx
        add dx, 30h 
        mov ah,2
        int 21h
          
        pop dx
        add dx, 30h 
        mov ah,2
        int 21h
         
        pop dx
        add dx, 30h  
        mov ah,2
        int 21h 
        
        pop dx 
        add dx, 30h 
        mov ah,2
        int 21h
;xuat hieu
        pop ax  
         mov dx,0
        
            
        mov bx,10
        div bx
        push dx
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx
        
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx   
        
        
        pop dx
        add dx, 30h 
        mov ah,2
        int 21h
         
        pop dx
        add dx, 30h  
        mov ah,2
        int 21h 
        
        
        pop dx 
        add dx, 30h 
        mov ah,2
        int 21h
        
        jmp exit
n4:
        mov ah,1   ;so hang nghin
        int 21h             
        sub al,30h
        sub ah,1
        mov dx,1000
        mul dx              
        mov bx,ax           
        
        mov ah,1    ;so hang tram
        int 21h   
        sub al,30h
        sub ah,1 
        mov dx,100
        mul dx 
        add bx,ax  
        
        mov ah,1   ;so hang chuc
        int 21h   
        sub al,30h
        sub ah,1 
        mov dx,10
        mul dx 
        add bx,ax 
        
        mov ah,1    ;so hang dv
        int 21h             
        sub al,30h
        sub ah,1
        add bx,ax
                  
        mov ah,1   ;so hang nghin
        int 21h             
        sub al,30h
        sub ah,1
        mov dx,1000
        mul dx              
        mov cx,ax           
        
        mov ah,1   ;so hang tram
        int 21h   
        sub al,30h
        sub ah,1 
        mov dx,100
        mul dx 
        add cx,ax  
        
        mov ah,1   ;so hang chuc
        int 21h   
        sub al,30h
        sub ah,1 
        mov dx,10
        mul dx 
        add cx,ax 
        
        mov ah,1   ;so hang dv
        int 21h             
        sub al,30h
        sub ah,1
        mov dx,cx  
        add cx,ax 
         
         
         
        mov dx,cx
        add cx,bx
        sub bx,dx
        mov dx,0
        push bx
      
      
;xuat tong 
        mov ah,0
        mov ax,cx  
        
      mov bx,10
        div bx
        push dx
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx
        
        div bl
        mov dl,ah
        mov ah,0
        push dx
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx 
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx
           
          pop dx
        add dx, 30h 
        mov ah,2
        int 21h   
           
        pop dx
        add dx, 30h 
        mov ah,2
        int 21h
         
        pop dx
        add dx, 30h  
        mov ah,2
        int 21h 
        
        pop dx 
        add dx, 30h 
        mov ah,2
        int 21h
        
        pop dx 
        add dx, 30h 
        mov ah,2
        int 21h 
        
;xuat hieu
        pop ax  
         mov dx,0
        
            
        mov bx,10
        div bx
        push dx
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx
        
        div bl
        mov dl,ah
        mov ah,0
        push dx
        
        div bl
        mov dl,ah 
        mov ah,0
        push dx
        
        pop dx
        add dx, 30h 
        mov ah,2
        int 21h
         
        pop dx
        add dx, 30h  
        mov ah,2
        int 21h 
        
        pop dx 
        add dx, 30h 
        mov ah,2
        int 21h
        
        pop dx 
        add dx, 30h 
        mov ah,2
        int 21h
;
        
       
        jmp exit   

exit:
endp main