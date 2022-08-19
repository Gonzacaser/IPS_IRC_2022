	.data 0x10000000		# dirección especificada
entero:	.word 0xffffff41		# entero especificado
	.text
	
	lw $s0, entero($0)		# guardo
	
	xor $s0, $s0, 0x144		# hago xor logico contra 0x144 en hexa para invertir los bits que queremos