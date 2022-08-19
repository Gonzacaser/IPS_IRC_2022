		.data  0x10000000		# especifico la dirección de memoria pedida
vA:		.space 80			
vB:		.space 80			# cada palabra ocupa 4 bytes entonces para 20: 4*20 = 80 bytes a reservar

		.text
		.globl main
main: