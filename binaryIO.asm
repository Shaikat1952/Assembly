INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
 B DW 8 DUP(48)
.CODE
   MAIN PROC
     MoV AX,@DATA
     MOV DS,AX
     LEA SI,B
     ADD SI,14
     PRINT "INPUT- "
     XOR CX,CX
     ARMAN:
        MOV AH,1
        INT 21H
        CMP AL,ODH
        JE NEXT
        MOV AH, 0
        PUSH AX
        INC CX
        JMP ARMAN
        NEXT:
            PRINTN
            SUNVI:
                POP BX
                MOV [S1],BX
                SUB SI,2
                LOOP SUNVI
            MOV CX,8
        PRINT "BINARY"
        LEA SI,B
        MOV AH,2
        ARMAN2:
                MOV DX,[S1]
                ADD SI,2
                INT 21H
                LODP ARMAN2
        MOV AH, 4CH
        INT 21H
        MAIN ENDP
END MAIN