;nhap 1 so, neu input la 1 so tu 0 toi 9, output la 'T', khong thi output la 'F'
;bat nhap lai toi khi nao dung
.model small
.stack 100h
.data
.code
main proc
mov ah,1
int 21h
mov dl,al 
sosanh: 
cmp dl,30h
jl caseFalse
jge caseTrue
caseFalse:
mov ah, 2   
mov dl, 46h; 'F'
int 21h
jmp nhaplai
jmp sosanh
caseTrue:
cmp dl, 39h
jg caseFalse
jmp done
done:
mov ah,2
mov dl,54h ;'T'
int 21h
jmp exit
nhaplai:
mov ah,1
int 21h
mov dl,al
jmp sosanh
exit:
main endp