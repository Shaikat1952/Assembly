;SUPPOSE AX AND BX CONYTAIN SINGED NUMBER. WRITE SOME CODE TO PUT  BIGGEST ONE IN CX
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
        
        MOV AH,1
        INT 21H
        MOV CL,AL
                         
        MOV AH,2
        MOV DL,10
        INT 21H
        MOV AH,2
        MOV DL,13
        INT 21H
        
        CMP BL,CL
        JG INS1
        MOV AH,2
        MOV DL,CL
        INT 21H
        JMP INS2
        
        INS1:
        MOV AH,2
        MOV DL,BL
        INT 21H
                  
        INS2:
        MOV AH,4CH
        INT 21H   
        
       MAIN ENDP
    END MAIN