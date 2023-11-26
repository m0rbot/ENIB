			
			.text
			.thumb
			.syntax unified
			
			// export des fonctions
			.global strlen, asciihexa2uint

//---------------------------------------------------------------------------
// fonction strlen : taille d'une chaîne de caractères
//   prototype : int strlen(char *s);
//   paramètres d'entrée
//     r0 : pointeur sur la chaîne
//   valeurs renvoyées
//     r0 : taille
//---------------------------------------------------------------------------
			.type	strlen, %function
strlen:		
			// A COMPLETER
			mov		r2, #0				// initialiser le compteur par 0

boucle:		ldrb	r1, [r0], #1		// charger r1 par un caractère (un octet) pointé par R0
			cmp		r1, #0				// comparer si le caractère est null (si on est arrivé à la fin de la chaîne
			beq		fin					// si oui bancher vers la fin du program
			add		r2, r2, #1			// incrementer le compteur
			b		boucle				// repeter le processus jusqu'on arrivera à la fin de la chaîne

fin:		mov		r0, r2				// mettre la taill de chaine dans r0
			mov		pc, lr				// retourner au programme principale

        	.size	strlen, .-strlen


//---------------------------------------------------------------------------
// fonction asciihexa2uint : conversion chaîne de caractères hexa --> entier
//   prototype : uint32_t asciihexa2uint(char *s);
//   paramètres d'entrée
//     r0 : pointeur sur la chaîne
//   valeurs renvoyées
//     r0 : valeur entière
//---------------------------------------------------------------------------
			.type	asciihexa2uint, %function
asciihexa2uint:
			
			// A COMPLETER
			add		r0, r0, #2		// skip les deux premier caractère
			mov		r2, #0			// initailiser r2 (definie comme d)
			mov		r3, #0			// initialiser r3 (definie comme digit)
boucle2:	ldrb	r1, [r0], #1	// charger le permier caractère dans r1, puis incrementer r0

test_0_9:	cmp		r1, #'0'
			blo		end
			cmp		r1, #'9'
			bhi		test_A_F		// ce test, pour verifier la condition 0<=*s[i]<=9
			// A completer
			sub		r3, r1, #'0'	// digit = *s[i] - '0'
			mov		r2, r2, lsl #4	// d = d * 16
			add		r2, r2, r3		// d = d + digit
			b		boucle2

test_A_F:	cmp		r1, #'A'
			blo		end
			cmp		r1, #'F'
			bhi		test_a_f		// ce test, pour verifier la condition A<=*s[i]<=F
			//A COMPLETER
			sub		r3, r1, #'A'	//	digit = *s[i] - 'A'
			add		r3, r3, #10		//	digit = digit + 10
			mov		r2, r2, lsl #4	//	d = d*16
			add		r2, r2, r3		//	d = d + digit
			b		boucle2

test_a_f:	cmp		r1, #'a'
			blo		end
			cmp		r1, #'f'
			bhi		end
			//A COMPLETER
			sub		r3, r1, #'a'
			add		r3, r3, #10
			mov		r2, r2, lsl #4
			add		r2, r2, r3
			b		boucle2

end:		mov		r0, r2			// mettre la valeur entier de S en r0
			mov		pc, lr			// retourner au programme principale
        	.size	asciihexa2uint, .-asciihexa2uint


