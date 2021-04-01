; addresses for I/O
.NAME	HEX= 0xFFFFF000
.NAME	LEDR=0xFFFFF020

.NAME DATA=0x1000 ; constant to represent the start of data section in memory

; CPU with bad PC starting value would begin executing here
.ORG 0x0
	br	BadPC
	
BadPC:
	; for bad PC, display BAD on HEX
	andi	zero,zero,0x0
	not 	t0,zero
	sw	t0,LEDR(zero)
	addi 	zero,t0,0xBAD
	sw 	t0,HEX(zero)
	br	BadPC

.ORG 0x100  ; code starts executing here - CPU has start PC of 0x100

; step 1: load the array starting at memory address 0x040
; mem[0x040] = 0x0010 
; mem[0x044] = 0x0050 
; mem[0x048] = 0x0012 
; mem[0x04c] = 0x0003 
; mem[0x050] = 0x0002 
; mem[0x054] = 0x0001 
; mem[0x058] = 0x0030 
; mem[0x05c] = 0x0050 
; mem[0x060] = 0x0085

; step 2: perform bubblesort algorithm

; step 3: iterate through sorted array and print values to HEX


; DATA section of memory
.ORG 0x1000  
.WORD 0x9    ; size of the array
.WORD 0x040  ; memory address for start of the array
.WORD 0x0010 ; initial array contents to sort
.WORD 0x0050
.WORD 0x0012
.WORD 0x0003
.WORD 0x0002
.WORD 0x0001
.WORD 0x0030
.WORD 0x0050
.WORD 0x0085