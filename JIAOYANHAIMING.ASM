MOV R0,#4BH
MOV R1,#40H

MOV A,R1
RR A
RR A
RR A
RR A
MOV R1,A

MOV A,R0
AND A,#01H
MOV 0E4H,A

MOV A,R0
AND A,#0EH
RL A
RL A
RL A
ADD A,R1
MOV R1,A

MOV A,R0
AND A,#10H
RR A
RR A
RR A
RR A
MOV 0E3H, A

MOV A,R0
AND A,#20H
RL A
RL A
ADD A,R1
MOV R1,A

MOV A,R0
AND A,#0C0H
RR A
RR A
RR A
RR A
RR A
RR A
MOV R3,A
RR A
MOV 0E1H,A
MOV A,R3
AND A,#01H
MOV 0E2H,A


MOV A,R1
MOV 0F0H,A
AND A,#0DAH
MOV R0,#00H
STEP1:
MOV R1,A
ADD A,R0
MOV R0,A
MOV A,R1
RR A
JZ YS1
JMP STEP1

YS1:
MOV A,R0
AND A,#01H
MOV 0F1H,A

JMP TP2

TP2:
MOV A,0F0H
AND A,#0B6H
MOV R0,#00H
STEP2:
MOV R1,A
ADD A,R0
MOV R0,A
MOV A,R1
RR A
JZ YS2
JMP STEP2

YS2:
MOV A,R0
AND A,#01H
MOV 0F2H,A
JMP TP3

TP3:
MOV A,0F0H
AND A,#71H
MOV R0,#00H
STEP3:
MOV R1,A
ADD A,R0
MOV R0,A
MOV A,R1
RR A
JZ YS3
JMP STEP3

YS3:
MOV A,R0
AND A,#01H
MOV 0F3H,A
JMP TP4

TP4:
MOV A,0F0H
AND A,#0FH
MOV R0,#00H
STEP4:
MOV R1,A
ADD A,R0
MOV R0,A
MOV A,R1
RR A
JZ YS4
JMP STEP4

YS4:
MOV A,R0
AND A,#01H
MOV 0F4H,A
JMP RESULT

RESULT:
MOV A,0E4H
ADD A,0F4H
RL A
MOV R3,A
MOV A,0E3H
ADD A,0F3H
ADD A,R3
RL A
MOV R3,A
MOV A,0E2H
ADD A,0F2H
ADD A,R3
RL A
MOV R3,A
MOV A,0E1H
ADD A,0F1H
ADD A,R3
RL A
RL A
RL A
RL A
MOV R3,A

RES:
JMP RES







