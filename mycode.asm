
org 100h

mov al, 0
mov bl, 1

cmp al, bl
je do_equal ; jump if equal
jg do_greater ; jump if greater
jl do_less    ; jump if less  

do_less:
    ; nho hon  
    mov dx, offset msg
    mov ah, 9
    int 21h
    ret
    msg db "al < bl $"

    ret
do_greater:
    ; lon hon
    mov dx, offset lon
    mov ah, 9
    int 21h
    ret
    lon db "al > bl $"
       
do_equal:
    ; bang nhau  
    mov dx, offset bang
    mov ah, 9
    int 21h
    ret
    bang db "al = bl $"
    
ret




