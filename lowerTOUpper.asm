INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    PRINT "Input"
    PRINTN ":"
    ;scanf
    MOV AH,1
    INT 21H
    
    PRINTN ""                 
    PRINT "Output:"
    ;moving the value of AL in BL 
    MOV BL,AL
                                 
    ;Algo                             
    ADD BL,32
    
    ;print
    MOV AH,2
    MOV DL,BL
    INT 21H
    
MAIN ENDP
    END MAIN