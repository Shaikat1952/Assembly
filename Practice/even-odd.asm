INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE 
MAIN PROC
    PRINTN "Enter 1 or 3 | 2 or 4"
    MOV AH,1
    INT 21H
    MOV BL,AL
    

    CMP BL,'1'
    JE ODD
    CMP BL,'3'
    JE ODD
    
    CMP BL,'2'
    JE EVEN
    CMP BL,'4'
    JE EVEN
    
    ODD:
        PRINT "-Number is odd"
        JMP EXIT
    EVEN:
        PRINTN "-Number is even"
        JMP EXIT
    
    EXIT:
        MOV AH,4CH
        INT 21H
    MAIN ENDP
END MAIN