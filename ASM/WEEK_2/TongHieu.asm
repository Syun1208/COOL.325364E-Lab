.model small
.stack 100h
.data ; tat ca du lieu duoc khai bao o phan data
tb1 db "Nhap so thap phan thu nhat 0->255:$"
tb2 db 10,13,"Nhap so thap phan thu hai 0->255:$"
tb3 db 10,13,"Tong hai so la:$"
tb5 db 10,13,"Hieu hai so la:$" 
x dw ?  ;dw co gia tri toi da la 2 bytes  2^8=256 0->255
y dw ?
z dw ?
t dw ?
.code
main proc
     mov ax,@data ; Khoi tao du lieu ban dau
     mov ds,ax
     ; Nhap so   
     ; nhap cho so thu nhat
     mov ah,9 ; lenh ngat loai 9 in ra 1 chuoi ky tu
     lea dx,tb1 ; doan nay xuat ra chuoi ky tu tb1
     int 21h
     call input
     mov ax,x  ; chuyen so vua nhap vao thanh ghi ax
     mov z,ax  ; chuyen so vua nhap vao thanh bien z  
     ; nhap cho so thu hai
     mov ah,9 ; lenh ngat loai 9 in ra 1 chuoi ky tu
     lea dx,tb2 ; doan nay xuat ra chuoi ky tu tb2
     int 21h
     call input
     mov ax,x
     mov t,ax
     ; Tinh Tong
     mov ah,9 ; lenh ngat loai 8 in ra 1 chuoi ky tu
     lea dx,tb3 ; doan nay xuat ra chuoi ky tu tb3
     int 21h
     mov ax,z ; chuyen so nguyen vao thanh ghi ax
     add ax,t ; cong 2 so nguyen va luu vao ax
     mov x,ax ; chuyen so nguyen vua cong duoc cho thanh ghi ax 
     call output            
      ; Tinh Hieu
     mov ah,9 ; lenh ngat loai 8 in ra 1 chuoi ky tu
     lea dx,tb5 ; doan nay xuat ra chuoi ky tu tb3
     int 21h
     mov ax,z ; chuyen so nguyen vao thanh ghi ax
     sub ax,t ; tru 2 so nguyen va luu vao ax
     mov x,ax ; chuyen so nguyen vua tru duoc cho thanh ghi ax 
     call output 
                         
     
     mov ah,4ch ; lenh ngay nay dung de thoat chuong tirnh
     int 21h 
     
main endp
; Chuong trinh con cho viec nhap so
input proc
    mov x,0 ; khoi tao cho bien x bang 0 voi bien x la 16 bit
    mov y,0 ; khoi tao cho bien y bang 0 voi bien y la 16 bit
    mov bx,10 ; khoi tao co so 10 
nhap:
    mov ah,1 ; lenh ngat so 1 dung de nhap 1 ky tu
    int 21h
    je thoat    
    sub al,30h ; lay ra gia tri so nguyen trong he 16
    xor ah,ah ; xoa thanh ghi ah de thanh 16 bit
    mov y,ax ; dua vao bien y voi 16 bit
    mov ax,x ; chuyen vao thanh ghi ax voi x =0
    mul bx ; nhan voi 10
    add ax,y ; cong y vao thanh ghi ax
    mov x,ax ; chuyen gia tri thanh ghi ax vao x
    je thoat 
thoat:
    ret ;; ve chuong trinh chinh
input endp  
; Chuong trinh con cho viec hien thi so nguyen
output proc
      mov bx,10 ; khoi tao co so 10 cho thanh khi bx
      mov ax,x ; chuyen gia tri x vao thanh ghi ax
      mov cx,0 ; dem so lan chia
chia:
      mov dx,0 ; xoa thanh ghi dx de luu phan du cua 16 bit
      div bx ; Chia cho thanh ghi ax va lay luu phan nguyen o thanh gih AX va phan du o thanh ghi dx
      inc cx ; cx++ tang len mot don vi
      push dx ; push vao dinh stack cua thanh ghi dx de ti nua xuat ra
      cmp al,0 ; so xanh ax voi al xem co phai ax la so 0 hay khong de tiep tuc chia
      je hienthi; neu bang 0 thi hien so nguyen ra
      jmp chia ; con chua bang thi tiep tuc chia
hienthi:
      pop dx; lay du lieu tu dinh stack cua thanh ghi dx
      add dl,30h; cong them 30h de ra so nguyen theo ma asci
      mov ah,2; cau lenh ngat loai 2 in ra mot ki tu
      int 21h
      dec cx ; c-- giam cx xuong , co y nghia thuc hien so lan in ra ki tu
      cmp cx,0 ; compare voi 0 khi nao cx =0 thi dung lai
      jne hienthi ; quay lai hien tiep
      ret ; quay lai chuong trinh chinh
output endp
