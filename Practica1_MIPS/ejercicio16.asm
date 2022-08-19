	.data
entero:	.word 0x1237			# entero especificado
	.text
	
	lw $s0, entero($0)		# guardo
	
	sll $s0, $s0, 5			# leftshiftear es igual a multiplicar por 2,
					# como quiero multiplicar por 32, shifteo 5 veces