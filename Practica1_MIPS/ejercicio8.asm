	.data 0x10000000		# especifico la dirección
datos:	.word 10, 20, 25, 500, 3	# reservo las palabras para los enteros del vector
	.text
main:
	la $t0, datos			# guardo la dirección del array con los datos
	li $t1, 0x10010000		# dirección inicial para guardar
	li $t2, 0x10010014		# drección final del ciclo ya que quiero guardar 5 palabras = 20 bytes
	
ciclo:	lw $s0, 0($t0)			# cargo la palabra
	sw $s0, 0($t1)			# guardo la palabra
	
	add $t0, $t0, 4
	add $t1, $t1, 4			# incremento el tamaño de los registros en una palabra = 4 bytes
	
	blt $t1, $t2, ciclo
	