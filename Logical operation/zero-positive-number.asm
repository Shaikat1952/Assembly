;if ax contain 0, put 0 in BX; if contain positive number, put 1 in BX.

INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
    PRINTN ""
    CMP BL,'0'
    JE INS1
    JG INS2
    
    INS1:
    MOV AH,2
    MOV DL,'0'
    INT 21H
    JMP INS3
                                      
    INS2:
    MOV AH,2
    MOV DL,'1'
    INT 21H 
    
    INS3:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    