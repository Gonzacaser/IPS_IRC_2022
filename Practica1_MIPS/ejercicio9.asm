	.data 0x10000000		# especifico la direcci�n
datos:	.word 0x10203040		# palabra especificada
	.text

	la $t0, datos			# guardo la direcci�n del array con la palabra datos
	li $t1, 0x10010000		# direcci�n inicial para guardar
	li $t2, 0x10010014		# drecci�n final del ciclo
	
ciclo:	lb $s0, 0($t0)			# cargo byte
	sb $s0, 0($t1)			# guardo byte
	
	add $t0, $t0, 1
	add $t1, $t1, 1			# incremento el tama�o de los registros en un byte
	
	blt $t1, $t2, ciclo
	
