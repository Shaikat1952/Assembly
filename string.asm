.model small
.stack 100h
.data
f1 dw "Hey Call Me Shaikat$"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    mov cx,f1
    int 21h
    
    
    mov ah,4ch
    main endp
end main
     
