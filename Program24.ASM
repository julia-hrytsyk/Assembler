INCLUDE LIBMACRO.INC
PROGRAM PROCEDURE
.CONST
VX DB 'VVED X=',0
VY DB 'VVED Y=',0
.DATA

X DW ?
Y DW ?

START
MOV AX,03
INT 10H
WLINEZ VX
RWORD X
LINEFEED
WLINEZ VY
RWORD Y
LINEFEED

MOV AX,X
MOV BX,Y
ADD AX,2
CALL MAX
MOV CX,AX

MOV AX,Y
IMUL AX
MOV BX,X
CALL MAX
MOV BX,AX
MOV AX,CX
CALL MIN
WWORD AX

PAUSE
RETURN
MAX PROC
CMP AX,BX
JGE M1
MOV AX,BX
M1:RET
MAX ENDP

MIN PROC
CMP AX,BX
JLE M2
MOV AX,BX
M2:RET
MIN ENDP

END PROCEDURE