LOAD r3, 255
LOAD r1, 102
LOAD r9, 204
WRITE r3, 8008
LOAD r5, 102
LOAD r7, 102
NOP
SUBR r8, r5, r7
NOP
BRANCH 000F, ZER
NOP
WRITE r1, 8000
NOP
BRANCH 0007, JMP
NOP
WRITE r9, 8000
NOP
RETURN
BRANCH 000F, JMP