            .data                           # no especifico ubicacion en memoria
V:          .word   1, -4, -5, 2            # defino el vector con las palabras

res:        .space  1                       # reservo espacio para guarda resultado = 1 si todos son menores a 0 SINO 1
            
            .text

            lw $t0, V($0)                   # cargo las palabras en los registros t0 a t3
            lw $t1, V + 4($0)               # sumo de a 4 porque cada palabra ocupa 4 bytes
            lw $t2, V + 8($0)
            lw $t3, V + 12($0)

            slt $t4, $t0, $0                # pongo 1 en t4 si t0 < 0, sino pongo 0
            slt $t5, $t1, $0                # pongo 1 en t5 si t1 < 0, sino pongo 0
            slt $t6, $t2, $0                # pongo 1 en t6 si t2 < 0, sino pongo 0
            slt $t7, $t3, $0                # pongo 1 en t7 si t3 < 0, sino pongo 0

            and $r0, $t4, $t5
            and $r0, $r0, $t6
            and $r0, $r0, $t7

            sb $r0, res($0)                 # guardo byte 0 o 1 en res