                .data                                           # no especifico ubicacion en memoria
string:         .asciiz "no me gusta programar en assembler"    # defino una cadena de caracteres
charBuscado:    .ascii "s"                                      # caracter a buscar
	        
total: 	        .space 4
            	.text

main:           la $t0, string                                  # guardo la direccion del string en t0
                lb $t1, charBuscado                             # guardo el byte del char buscado en t1
	            and $r0, $r0, $0                                # limpio r0 para luego ir guardando resultado
	
bucle:	        lb $t2, 0($t0)                                  
	            beq $t2, $0, fin                                # si t2 == 0 brancheo a fin

	            addi $t0, $t0, 1                                # sumo 1 a la direccion del string
	            seq $t3, $t1, $t2                               # pongo 1 en t3 si t1 == t2 sino 0

	            add $r0, $r0, $t3                               # sumo t3 (0 o 1) a r0
	            j bucle                                         # vuelvo al bucle con jump
		
fin:            add $r0, $r0, -1                                # tengo que restarle 1 al registro resultado r0
                sb $r0, total($0)                               # guardo el byte resultado en total