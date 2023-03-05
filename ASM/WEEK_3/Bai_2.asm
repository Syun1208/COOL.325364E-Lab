;nhap 1 so, so sanh voi 5  
;sosanh neu nhap 1 so, neu input la 1 so tu 0 toi 9, output la 'T', khong thi output la 'F', nhap toi khi output la 'T' 
;process xu li case 1 va case 2
;case1 neu <=5, thi in ra tu so do toi 9
;case2 neu >5, thi in ra tu so do toi 0     
.model small
.stack 100h
.data
.code
main proc
mov ah,1
int 21h
mov dl,al
sosanh:
cmp dl, 30h
jl caseFalse
jge caseTrue
caseFalse:
mov ah, 2   
mov dl, 46h; 'F'
int 21h
mov ah,1
jmp nhaplai
nhaplai:
mov ah,1
int 21h
mov dl,al
mov cl,dl
jmp sosanh
caseTrue:
cmp dl, 39h
jg caseFalse  
jmp process
process:
mov ah,2
mov dl,54h ;'T'
int 21h
mov dl,cl
cmp cl,35h
jle case1
jg case2
case1:
mov ah,2
int 21h
inc dl
cmp dl,39h
jle case1
jmp exit
case2:
mov ah,2
int 21h
dec dl
cmp dl,30h
jae case2
jmp exit
exit:
main endp