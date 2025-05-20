; <Program title>

jmp start

start:  nop
 
LHLD 3000
MOV A,L
CMA
MOV L,A
CMA
MOV H,A
SHLD 3002
INX H
SHLD 3004
hlt 


































;LDA 8000
 ;CMA
 ;INR A
 ;MOV H,A
;SHLD 8002
; hlt

;START:  LXI H,2040H   ; Load address 2040H into register pair H
;        MVI  D,00H     ; Load 00H into register D
;
;LABEL:  MOV  C,M       ; Move the value at the address pointed to by HL into C
  ;      DCR  C         ; Decrement C
 ;       INX  H         ; Increment the HL pair
;
     ;   MOV  A,M       ; Move the value at the address pointed to by HL into A
    ;    INX  H         ; Increment HL
   ;     CMP  M         ; Compare A with the value at the address pointed to by HL
  ;      JC   NOTE      ; Jump to NOTE if A < M
 ;       JZ   NOTE      ; Jump to NOTE if A == M
;
     ;   MOV  B,M       ; Move the value at the address pointed to by HL into B
    ;    MOV  M,A       ; Move the value in A to the address pointed to by HL
   ;     DCX  H         ; Decrement HL
  ;      MOV  M,B       ; Move the value in B to the address pointed to by HL
 ;       INX  H         ; Increment HL
;
 ;       MVI  D,01H     ; Load 01H into register D
;NOTE:   DCR  C         ; Decrement C
 ;       JNZ  LABEL     ; Jump to LABEL if C is not zero
;
    ;    MOV  A,D       ; Move the value in D to A
  ;;      CPI  01H       ; Compare A with 01H
 ;       JZ   START     ; Jump to START if A == 01H
;
;        hlt           ; Halt the program

;LXI B, 0000H
;LHLD 2052H	
;XCHG	
;LHLD 2050H	
;MOV A, L	
;SUB E	
;MOV L, A	
;MOV A, H	
;SBB D	
;MOV H, A	
;INX B	
;JMP NOTE	 
;DAD D	
;SHLD 2056H	
;MOV L, C	
;MOV H, B	
;NOTE: SHLD 2054H







;LXI SP,2000H
;LHLD 8000H
;XCHG
;LHLD 8002H
;PUSH H
;POP D ; Use a register pair for POP
;LXI H,0000H
;SHLD 8052H
;LOOP: DAD D
;JNC NINC
;PUSH H
;LHLD 8052
;INX H
;SHLD 8052H
;POP H ; Use a register pair for POP
;NINC: DCX B
;MOV A,B
;ORA C
;JNZ LOOP
;SHLD 8054H






;LHLD 8050H;
;XCHG;
;LHLD 8052H;
;MVI C,00H;
;MOV A,E;
;SUB L;
;8STA 8054H;
;MOV A,D;
;SBB H;
;STA 8055H;







;LHLD 3000H;3412
;XCHG;
;LHLD 3002H;2211
;DAD D;HL+DE
;SHLD 3004H;
