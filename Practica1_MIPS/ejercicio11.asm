		.data 0x10010002		# especifico la dirección
datos:		.byte 0x10, 0x20, 0x30, 0x40	# reservo los valores bytes
		.data 0x10010102
espacio:	.space 4
		.text
		
		la $t1, datos
		la $t2, espacio
	
		andi $t7, $t7, 0 		# vacio este registro para luego guardar la dirección final		
		add $t7, $t2, 4			# calculo la dirección 
		
ciclo:		lb $s1, 0($t1)
		sb $s1, 0($t2)
		
		add $t1, $t1, 1
		add $t2, $t2, 1			# agrando ambos registros en un byte
		
		blt $t2, $t7, ciclo