INCLUDE "EMU8086.INC"
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
        PRINTN
        MOV AH,2
        INT 21H
        MOV DL,BL
        INT 21H
        MAIN ENDP
END MAIN
          