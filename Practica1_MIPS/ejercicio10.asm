	.data
palabr:	.word 0x10203040
	.text
	
	la $t0, palabr # guardo la dirección
	
	# cargo ambas mitades de la palabra en dos registros
	lh $s0, 0($t0)
	lh $s1, 2($t0)
	
	# guardo ambas mitades pero invirtiendo el orden
	sh $s1, 0($t0)
	sh $s0, 2($t0)