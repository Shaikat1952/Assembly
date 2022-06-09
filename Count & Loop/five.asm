.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV BL,0
    TOP:
        MOV AH,1
        INT 21H
        CMP AL,0DH
        JE EXIT
        INC BL
        CMP BL,1
        JE INS2
        CMP BL,2
        JE INS3
    INS:
        MOV BL,0
        MOV AH,2
        MOV DL,13
        INT 21H
        MOV DL,CH
        INT 21H
        MOV DL,CL
        INT 21H
        MOV DL,10
        INT 21H
        MOV DL,13
        INT 21H
        JMP TOP
     INS2:
         MOV CH,AL
         JMP TOP
     INS3:
        MOV CL,AL
        JMP INS
     EXIT:
        MOV AH,4CH
        INT 21H
        MAIN ENDP
END MAIN