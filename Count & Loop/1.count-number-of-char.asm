;write some code to count the number of character in the input line
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV BL,'0'
    TOP:
        MOV AH,1
        INT 21H
        CMP AL,0DH
        JE EXIT
        INC BL
        JMP TOP
        
    EXIT:
        MOV AH,2
        MOV DL,10
        INT 21H
        MOV DL,13
        INT 21H
        MOV DL,BL
        INT 21H
        MOV AH,4CH
        INT 21H
   MAIN ENDP
END MAIN