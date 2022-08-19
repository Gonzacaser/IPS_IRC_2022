	.data 0x10000000		# especifico la dirección
datos:	.word 0x10203040		# palabra especificada
	.text

	la $t0, datos			# guardo la dirección del array con la palabra datos
	li $t1, 0x10010000		# dirección inicial para guardar
	li $t2, 0x10010014		# drección final del ciclo
	
ciclo:	lb $s0, 0($t0)			# cargo byte
	sb $s0, 0($t1)			# guardo byte
	
	add $t0, $t0, 1
	add $t1, $t1, 1			# incremento el tamaño de los registros en un byte
	
	blt $t1, $t2, ciclo
	
