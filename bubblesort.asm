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
; for j = 0 to N-1:
;   for i = 0 to N-j-1:
;     memA = mem[i]
;	    memB = mem[i+1]
;	    if memA > memB:
;	      // Swap
;		    mem[i] = memB
;		    mem[i+1] = memA

BUBBLESORT:
  addi zero, s2, 0x2    ; s2 = 2
	add  t0, zero, zero 	; t0 = 0, counter for outer loop (j)
  addi zero, s0, SIZE		; s0 = SIZE - 1 (terminating condition for outer loop)
  addi s0, s0, -0x1

INNERLOOP:
  add  t1, zero, zero 	 ; t1 = 0, counter for inner loop (i)
  sub  s1, s0, t0        ; s1 = SIZE - j - 1 (need to compute terminating condition for inner loop)
COMPARE:    
  lshf a2, t1, s2        ; a2 = i * 4 (word-aligned offset from start of array)
  lw   a0, ARRAY(a2)     ; a0 = array[i], first word in array
  addi a2, a2, 0x4       ; compute offset for next word in array
  lw   a1, ARRAY(a2)     ; a1 = array[i + 1]
  blt  a0, a1, INCREMENT ; if a0 < a1, already sorted, move onto next iteration - else, swap
  sw   a0, ARRAY(a2)     ; array[i + 1] = a0 
  addi a2, a2, -0x4      ; get array offset for index i
  sw   a1, ARRAY(a2)     ; array[i] = a1
INCREMENT:
  addi t1, t1, 0x1       ; increment inner loop counter
  blt  t1, s1, COMPARE   ; if i < SIZE - j - 1, move onto next iteration of the loop if not done

;OUTERLOOP - not really needed as a label
  addi t0, t0, 0x1			  ; once inner loop counter is done increment outer loop counter
  blt  t0, s0, INNERLOOP	; if j < SIZE - 1, go on to next iteration of innerloop

; step 2: iterate through sorted array and print values to HEX
  addi zero, a0, 0x2   ; a0 = 2 - used to calculate word-aligned offset later
  addi zero, t0, SIZE  ; t0 = SIZE
  add  t1, zero, zero  ; t1 = 0 - counter for array index
Print:
  lshf s0, t1, a0      ; s0 = t1 * 4 
  lw   s1, ARRAY(s0)   ; s1 = array[s0]
  sw   s1, HEX(zero)   ; print value to HEX
  sw   t1, LEDR(zero)  ; print the index of the array to LEDR
  addi t1, t1, 0x1     ; increment index
  blt  t1, t0, Print   ; if t1 < t0 (index < size) keep going
  addi zero, t0, 0x1F  
  sw   t0, LEDR(zero)  ; put 0x1F on LEDR when the code is finished
  
; loop forever once the algorithm is complete  
Done:
  br   Done  
