            .data
tbl:        .word   1,2,3,4,5,6,7,8,9,10
var1:       .word   3
var2:       .word   4
s1:			.asciz  "0x10A3"					// 6 caractères + octet nul
s2:			.asciz	"l'hiver, c'est ≠ de l'été"	// 25 caractères + octet nul = 30 octets

            .bss
result:     .word   0
s:			.skip   12

			.global main
			.text
			.thumb
			.syntax unified
			

main:       // manipulation des registres
			mov     r1, #3
			add     r2, r1, r1, lsl #2
			sub     r2, #1
			.byte	0xa2, 0xf1, 0x01, 0x02
			subs	r2, #1
			.byte	0x01, 0x3a
			
	        // manipulation de la mémoire (1)
	        bl      raminit
	        ldr     r5, [r3]
	        bl      raminit
	        ldrb    r5, [r3]
	        bl      raminit
	        ldr     r5, [r3, #-4]
	        bl      raminit
	        ldrb    r5, [r3, r2, lsl #2]
	        bl      raminit
	        ldrsh   r5, [r3, #4]
	        bl      raminit
	        strb    r5, [r3, #4]!
	        bl      raminit
	        strh    r3, [r5], #2
	        bl      raminit
	        ldr     r5, [r3, #-3]
	        bl      raminit
	        strh    r3, [r5, #1]
	        
	        
	        // manipulation de la mémoire (2)
	        ldr     r0, =var1
	        
			// A COMPLETER

			// manipulation de la mémoire (3)

			// A COMPLETER
			
			
			// test strlen
			// PARAMETRES A COMPLETER
			bl		strlen
			
			// test asciihexa2uint
			// PARAMETRES A COMPLETER
			bl		asciihexa2uint
			
			nop		// no operation
			
stop:		b       stop


// sous-programme raminit
raminit:
            mov     r0, #0x20000000
            orr     r0, r0, #0x2000
            ldr     r1, val1
            str     r1, [r0]
            ldr     r1, val2
            str     r1, [r0,#4]
            ldr     r1, val3
            str     r1, [r0,#8]
            mov     r2, #1
            add     r3, r0, #4
            add     r5, r0, #2
            mov     pc, lr              // retour sous-programme
        
val1:   .word   0x00004455              // constante 32 bits
val2:   .word   0x6B328611
val3:   .word   0x7722AACC
