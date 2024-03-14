
org 100h

mov ax, 0
mov bx, 2   
mov cx, 40
lap:
    add ax, bx    
    mul bx
    
loop lap

ret




