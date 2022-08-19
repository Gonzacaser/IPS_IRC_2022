	.data 0x10000000		# dirección especificada
entero:	.word 0xabcd12bd		# entero especificado
	.text
	
	lw $s0, entero($0)		# guardo
	
	andi $s0, $s0, 0x2BB		# hago and logico contra 1010111011 en hexa para poner en cero los bits