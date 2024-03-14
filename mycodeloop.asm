
org 100h

mov ax, 1  
mov bx, 0
mov cx, 25
lap: 
    add bx, ax
    inc ax
    
loop lap 


ret




