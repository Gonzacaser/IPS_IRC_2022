	.data 0x10000000		#especifico la dirección
datos:	.word 10, 20, 25, 500, 3	#reservo las palabras para los enteros
	.text
main:
	la $t1, datos			#guardo la dirección del array con los datos
	
	lw $s0, 0($t1)			#voy cargando los valores en los registros en orden, aumentando el offset en 4 por el tamaño de la palabra
	lw $s1, 4($t1)
	lw $s2, 8($t1)
	lw $s3, 12($t1)
	lw $s4, 16($t1)
