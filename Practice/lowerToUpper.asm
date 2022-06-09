INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
A DB "Enter character: $"
B DB "Result: $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    CMP BL,'a'
    JGE TOUPPER
    JMP TOLOWER 
    
    TOLOWER:
            ADD BL,32 
    TOUPPER:
            SUB BL,32
    
    PRINTN
    
    MOV AH,9
    LEA DX,B
    INT 21H
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    