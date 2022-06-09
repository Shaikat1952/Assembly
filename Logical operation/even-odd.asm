;IF AL CONTAIN 1 OR 3,DISPLAY 'O'; IF AL CONTAINS 2 OR 4,DISPLAY 'E'

.MODEL SMALL
.STACK 100H
.CODE 
MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV AH,2
    MOV DL,13
    INT 21H
    
    
    CMP BL,'1'
    JE ODD
    CMP BL,'3'
    JE ODD
    CMP BL,'2'
    JE EVEN
    CMP BL,'4'
    JE EVEN
    
    ODD:
    MOV AH,2
    MOV DL,'O'
    INT 21H
    JMP INS1:
    
    EVEN:
    MOV AH,2
    MOV DL,'E'
    INT 21H
    
    INS1:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN