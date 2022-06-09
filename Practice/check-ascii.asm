INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    PRINTN "CHECKING ASCII"
    MOV AH,1
    INT 21H
    MOV BL,AL
    CMP BL,'0'
    JGE INS
    JMP INS2
    
    INS:
       CMP BL,'9'
       JLE INS1
       JMP INS2
    
    INS1:
        PRINT "-is Digit"
        JMP EXIT
    INS2:
        CMP BL,'A'
        JGE INS3
        JMP INS5
    INS3:
        CMP BL,'Z'
        JLE INS4
        JMP INS5
    INS4:
        PRINT "-is Uppercase"
        JMP EXIT
        
    INS5:
        CMP BL,'a'
        JGE INS6
        JMP INS8
    INS6:
        CMP BL,'z'
        JLE INS7
        JMP INS8
    INS7:
        PRINT "-is Lowercase"
        JMP EXIT
    INS8:
        PRINT "-is specialcase"
        JMP EXIT
    
    EXIT:
        MOV AH,4CH
        INT 21H
    MAIN ENDP
END MAIN