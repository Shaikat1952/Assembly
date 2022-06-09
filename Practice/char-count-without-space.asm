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
        CMP AL,32
        JNE COUNT
        JMP TOP
    COUNT:
        INC BL
        JMP TOP 
    EXIT:
        PRINTN
        MOV AH,2
        MOV DL,BL
        INT 21H
        
        MOV AH,4CH
        INT 21H
        MAIN ENDP
END MAIN