			
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
			
			mov		pc, lr
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
			
			mov		pc, lr
        	.size	asciihexa2uint, .-asciihexa2uint


