; addresses for I/O
.NAME	HEX= 0xFFFFF000
.NAME	LEDR=0xFFFFF020

.NAME ARRAY=0x040 ; constant to represent the start of the array in memory
.NAME SIZE=0x9    ; size of the array

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

; section of memory containing the array
; load the array starting at memory address 0x040
.ORG 0x040  
.WORD 0x0010 ; initial array contents to sort
.WORD 0x0050
.WORD 0x0012
.WORD 0x0003
.WORD 0x0002
.WORD 0x0001
.WORD 0x0030
.WORD 0x0050
.WORD 0x0085

.ORG 0x100  ; code starts executing here - CPU has start PC of 0x100

; step 1: perform bubblesort algorithm
; N = number of items in memory to sort
; for j = 1 to N-1:
;   for i = 1 to N-j-1:
;     memA = mem[i]
;	    memB = mem[i+1]
;	    if memA > memB:
;	      // Swap
;		    mem[i] = memB
;		    mem[i+1] = memA

; step 2: iterate through sorted array and print values to HEX
