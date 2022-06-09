.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AH,1
    
    INS:
        INT 21H
        CMP AL,' '
        JNE INS
    EXIT:
        MOV AH,4CH
        INT 21H
        MAIN ENDP
END MAIN