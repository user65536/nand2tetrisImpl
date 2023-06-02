// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// n = 0;
// R2 = 0;
// LOOP:
// if (n == R0) goto END
// n = n + 1;
// R2 = R2 + R1;
// goto LOOP
// END:

@n
M=0
@R2
M=0
// if (n == R0) goto END
(LOOP)
@n
D=M
@R0
D=D-M
@END
D;JEQ
// n = n + 1;
@n
M=M+1
// R2 = R2 + R1;
@R1
D=M
@R2
M=D+M
// goto LOOP
@LOOP
0;JMP
(END)
@END
0;JMP