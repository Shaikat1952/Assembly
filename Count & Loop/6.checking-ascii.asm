INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
    CMP BL,'0'
    JGE INS1
    JMP INS7
    
    INS1:
        CMP BL,'9'
        JLE INS2
        JMP INS3
    INS2:
        PRINTN "-DIGIT"
        JMP EXIT
    INS3:
        CMP BL,'A'
        JGE INS4
        JMP INS7
    INS4:
        CMP BL,'Z'
        JLE INS5
        JMP INS6
    INS5:
        PRINTN "-UPPERCASE LETTER"
        JMP EXIT
    INS6:
        CMP BL,'a'
        JGE INS8
        JMP INS7
    INS8:
        CMP BL,'z'
        JLE INS9
        JMP INS7
    INS9:
        PRINTN "-LOWERCASE LETTER"
        JMP EXIT
    INS7:
        PRINTN "-SPECIAL SYMBOL"
    EXIT:
        MOV AH,4CH
        INT 21H
        MAIN ENDP
END MAIN
        