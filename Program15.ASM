INCLUDE LIBMACRO.INC
PROGRAM LOG2
.DATA
MAS DB 10 DUP(?)
X DW 2
START
MOV AX,03
INT 10H

MOV CX,X
MOV SI,0
CKL:
RWORD
MOV MAS[SI],AL
INC SI
LOOP CKL

MOV CX,X
MOV SI,0
MOV BL,01010101B
MOV BH,10101010B
CKL2:
OR MAS[SI],BL
WWORD MAS[SI],,B
LINEFEED
INC SI
LOOP CKL2
LINEFEED
MOV CX,X
CKL3:
XOR MAS[SI],BL
WWORD MAS[SI],,B
LINEFEED
INC SI
LOOP CKL3
LINEFEED


LINEFEED
PAUSE
RETURN
END LOG2

