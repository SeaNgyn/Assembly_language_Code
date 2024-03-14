



org  100h


print_new_line macro
    mov dl, 13
    mov ah, 2
    int 21h   
    mov dl, 10
    mov ah, 2
    int 21h      
endm


    mov dx, offset tb1
    mov ah, 9
    int 21h
    ; input the string:
    mov dx, offset s1
    mov ah, 0ah
    int 21h
    
    ; get actual string size:
    xor cx, cx
    mov cl, s1[1]
    print_new_line
                  
    ;mov bx, offset s1[2]
print_char1:
    mov dl, [bx]
    mov ah, 2
    int 21h      
    ;   print_new_line   
    inc bx
    loop print_char1 
    print_new_line
    
 
    mov dx, offset tb2
    mov ah, 9
    int 21h
    mov dx, offset s2
    mov ah, 0ah
    mov bx, 0

    mov dx, 0
    int 21h
    
    mov cl, s2[1]
    print_new_line
    mov bx, offset s2[2]
print_char2:
    mov dl, [bx]
    mov ah, 2
    int 21h      
    ;   print_new_line   
    inc bx
    loop print_char2


    ; wait for any key to end this program
    mov ax, 0 
    int 16h
    
    ret


tb1    db  "ENTER THE STRING 1: $"
tb2    db  "ENTER THE STRING 2: $"
s1      db 100,?, 100 dup(' ') 
s2      db 100,?, 100 dup(' ')

end
