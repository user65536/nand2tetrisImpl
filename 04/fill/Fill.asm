// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(MAIN)
@KBD
D=M
@WHITE
D;JEQ
@BLACK
D;JNE
@MAIN
0;JMP

(BLACK)
@targetValue
M=0
M=!M
@INIT
0;JMP
(WHITE)
@targetValue
M=0
@INIT
0;JMP

(INIT)
@SCREEN
D=A
@n
M=D
@8192
D=D+A
@end
M=D

(WRITE)
@n
D=M
@end
D=D-M
@MAIN
D;JEQ
@targetValue
D=M
@n
A=M
M=D
@n
M=M+1
@WRITE
0;JMP