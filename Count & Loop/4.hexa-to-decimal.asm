INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    PRINTN "HEXADECIMAL TO DECIAML"
    PRINT "HEXADECIAML:"
    MOV AH,1
    INT 21H
    PRINTN ""
    CMP AL,'0'
    JGE INS1
    JMP INVALID
    
    INS1:
        
        CMP AL,9
        JLE  INS2
        JMP INS3
    INS2:
        PRINT "DECIMAL:"
        MOV AH,2
        MOV DL,AL
        INT 21H
        JMP EXIT
    
    INS3:       
        MOV BH,'1'
        CMP AL,'A'
        JGE INS4
        JMP INVALID
    INS4:
        CMP AL,'F'
        JLE INS5
        JMP INS6
    INS5:
        SUB AL,65
        ADD AL,48
        MOV BL,AL
        JMP DECIMAL
    INS6:
        CMP AL,'a'
        JGE INS7
        JMP INVALID
    INS7:
        CMP AL,'f'
        JGE INS8
        JMP INVALID
    INS8:
        SUB AL,97
        ADD AL,48
        MOV BL,AL
        JMP DECIMAL
    DECIMAL:
        PRINT "DECIAL:"
        MOV AH,2
        MOV DL,BH
        INT 21H
        MOV DL,BL
        INT 21H
        JMP EXIT
    INVALID:
        PRINTN "INVALID INPUT"
        JMP EXIT
    EXIT:
        MOV AH,4CH
        INT 21H
        MAIN ENDP
END MAIN
    