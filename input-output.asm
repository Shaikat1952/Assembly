INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100h
.DATA
.CODE
MAIN PROC
    PRINT "Input: "
    MOV AH, 1
    INT 21H
    MOV BL, AL     
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H   
    
    
    PRINT "Output: "
    MOV AH, 2
    MOV DL, BL
    INT 21H
  
  
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN