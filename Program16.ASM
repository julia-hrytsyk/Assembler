INCLUDE LIBMACRO.INC
PROGRAM LOG3
.DATA
MAS DB 10 DUP(?)
X DB 5
START
MOV AX,03
INT 10H

MOV CL,X
MOV SI,0
CKL:
RWORD
MOV MAS[SI],AL
INC SI
LOOP CKL

MOV CL,X
MOV SI,0
MOV BL,11110111B
MOV BH,10000001B
CKL2:
TEST MAS[SI],BL
JNZ M1
OR MAS[SI],BH
M1:
WWORD MAS[SI],,B
LINEFEED
INC SI
LOOP CKL2

LINEFEED
PAUSE
RETURN
END LOG3