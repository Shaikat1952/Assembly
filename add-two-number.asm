INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data
a db "input first number: $"
b db "input second number: $"
c db "result: $"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h 
    
    
    
    mov ah,1
    int 21h
    mov bl,al
    
    PRINTN ""
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    PRINTN "" 
    
    mov ah,9
    lea dx,c
    int 21h
    
    add bl,bh
    sub bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    