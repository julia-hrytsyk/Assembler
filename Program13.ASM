INCLUDE LIBMACRO.INC
PROGRAM PRACT3
;***-----------------------------------------------***
;PRACTUCHNA #3
;VVESTU N CHUSEL. ZNAITU KILKIST CHUSEL, JAKI LEZHAT
;V PROMIJKY [-3;3]
;***-----------------------------------------------***
.CONST
VN DB  'VVEDIT KILKIST CHUSEL = ',0
VNEV DB  'ZNACHENNIA NEVIRNE. ',0
VC DB 'VVEDIT CHUSLA = ',0
VRE DB 'KILKIST CHUSEL V PROMIZKY [-3;3] = ',0
.DATA
N DW ?

START
MOV AX,03
INT 10H

JMP M1

MN:WLINEZ VNEV

M1:WLINEZ VN
 RWORD N
 MOV AX,N
 CMP AX,0
 JLE MN
 
MOV CX,N
WLINEZ VC
MOV BX,0

CKL:RWORD AX
    CMP AX,-3
    JL FINC
    CMP AX,3
    JG FINC
    INC BX

FINC:LOOP CKL

WLINEZ VRE
WWORD BX
PAUSE
RETURN
END PRACT3