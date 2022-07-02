.MODEL SMALL
.STACK 100H
.DATA
    REVERSE DB "HELLO$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA SI,REVERSE
    XOR BX,BX
    XOR CX,CX
    
    SHAIKAT:
            MOV BL,[SI]
            CMP BL,"$" 
            JE BREAK
            INC CX
            PUSH BX
            ADD SI,1
            JMP SHAIKAT
    BREAK:
            MOV AH,2
            POP DX
            INT 21H
            LOOP BREAK
          
          MOV AH,4CH
          INT 21H
          MAIN ENDP
END MAIN
            
