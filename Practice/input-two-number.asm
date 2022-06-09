INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
X DB "Enter first number: $"
Y DB "Enter second number: $"
Z DB "Result: $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,9
    LEA DX,X
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    PRINTN ""
    
    MOV AH,9
    LEA DX,Y
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    ADD BL,CL
    SUB BL,48 
    
    PRINTN ""
    
    MOV AH,9
    LEA DX,Z
    INT 21H
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
  
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN