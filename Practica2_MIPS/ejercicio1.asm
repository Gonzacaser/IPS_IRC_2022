            .data                           # no especifico ubicacion en memoria
V:          .byte   0, 1, 1, 1, 0           # defino el vector con sus bytes

res:        .space  3                       # reservo espacio para luego guradar el resultado
            
            .text

            lb $t0, V($0)                   # cargo los bytes en los registros t0 a t4
            lb $t1, V + 1($0)
            lb $t2, V + 2($0)
            lb $t3, V + 3($0)
            lb $t4, V + 4($0)

            and $t5, $t0, $t4               # res[1]= (V[1] and V[5])
            
            or $t6, $t1, $t3                # res[2]=(V[2] or V[4])
            or $t7, $t0, $t1                # res[2]=(V[1] or V[2])

            and $t7, $t7, $t2               # res[3]=((V[1] or V[2]) and V[3])

            sb $t0, res($0)                 # guardo bytes en res
            sb $t1, res + 1($0)
            sb $t2, res + 2($0)