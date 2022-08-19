	.data 0x10000000	# dirección especificada
vector:	.word 18, -1215
	.text
	
	la $t1, vector 		# cargo la dirección
	li $t2, 0x10010000
	
	lw $s1, 0($t1)
	lw $s2, 4($t1)		# cargo los dos numeros
	
	div $s1, $s1, 5	
	div $s2, $s2, 5		# hago las divisiones
				
	div $s3, $s1, $s2
	
	sb $s3, 0($t2)		# guardo el resultado