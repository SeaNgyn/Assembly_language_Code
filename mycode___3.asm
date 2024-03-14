
                        ; cau truc chuong trinh dang EXE:*
.model small            ; khai bao quy mo su dung bo nho
.stack 100              ; khai bao su dung ngan xep 256 byte
.data                   ; khai bao khu vuc luu tru du lieu, cac bien
    s1 db "ab"         ; define 8bit data, cac xau ky tu theo chuan ascii can dc dat trong  nhay kep hoac don
    s2 db "efabch"
    x dw 3
    y dw 9             ; define word ? = ' '       
.code
main proc

    mov ax, @data       ; gan dia chi vung nho data vao thanh ghi ax  
    mov ds, ax          ; khoi tao thanh ghi ds de luu du lieu data ( la thanh ghi doan du lieu )
        

    
    lea ax, s1          ; tro den dia chi den dau chuoi
    lea dx, s2          
    mov cx, 50          
    mov si, ax       
    mov di, dx
    
    do: 
        mov al, [si]        
        mov bl, [di]       
  
        cmp al, bl      
        jne nextchar    ; jump if not equal <>
        
       
        mov dl, [si] 
        mov ah, 2       ; lenh in     
        int 21h
        
        nextchar:
        
        
        cmp si, x      ; so sanh si de chuyen vi tri con tro ve dau chuoi neu da so sanh den ki tu cuoi cua chuoi 1 va so sanh tiep
        je do2          
        inc si

        loop do  
        
        do2:
        
  
        cmp si, x       ; chuyen vi tri con tro ve dau chuoi 1 de so sanh tiep
        je sivedau 
        cmp di, y
        je thoat
        inc di
        loop do  
        
        sivedau:
        mov si, 0       
        call do2        ; goi ve do2 de tiep tuc so sanh phan tu tiep theo cua chuoi 2
        
    
        
        thoat:
        mov ah, 4ch
        int 21h

main endp
end main 