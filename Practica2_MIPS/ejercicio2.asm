            .data                           # no especifico ubicacion en memoria
V:          .word   2, -4, -6               # defino el vector con las palabras

res:        .space  3                       # reservo espacio para guardar resultados
            
            .text

            lw $t0, V($0)                   # cargo las palabras en los registros t0 a t2
            lw $t1, V + 4($0)               # sumo de a 4 porque cada palabra ocupa 4 bytes
            lw $t2, V + 8($0)

            sge $t3, $t0, $0                # pongo 1 en t3 si t0 > 0, sino pongo 0
            sge $t4, $t1, $0                # pongo 1 en t4 si t1 > 0, sino pongo 0
            sge $t5, $t2, $0                # pongo 1 en t5 si t2 > 0, sino pongo 0

            sb $t3, res($0)                 # guardo bytes 0 o 1 en res
            sb $t4, res + 1($0)
            sb $t5, res + 2($0)