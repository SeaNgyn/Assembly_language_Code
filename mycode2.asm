;include 'emu8086.inc'

.model small
.stack 100
.data
    s1 db "anhsafgh"
    s2 db "abcdefgh"       

main proc

    mov ax, @data
    mov ds, ax
    
    lea ax, s1
    lea dx, s2          
    mov cx, 23           
    mov si, ax
    mov di, dx 
    ;mov           
    
    do: 
        mov al, [si]
        mov bl, [di]       
        sub al, bl
        cmp al, 0
        jne nextchar
        mov dl, [si]
        mov ah, 2      
        int 21h         
        
        nextchar:
        inc si          
        inc di
        loop do
    

main endp
end main