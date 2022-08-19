	.data 0x10000000	# dirección especificada
vector:	.byte 10, 20
	.text
	
	la $t1, vector 		# cargo la dirección
	
	lb $s1, 0($t1)
	lb $s2, 1($t1)		# cargo los dos numeros
	
	add $s7, $s1, $s2	# hago la suma y guardo el resultado en s7
	
	sb $s7, 2($t1)		# guardo el byte sumando 2 al offset
	