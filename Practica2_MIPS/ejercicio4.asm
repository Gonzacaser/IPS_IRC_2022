            .data                           # no especifico ubicacion en memoria
dato1:      .word 2                         # defino todos los enteros usando palabras
dato2:      .word 10
dato3:      .word 50
dato4:      .word 70
dato5:      .word 34

res:        .space  4                       # reservo espacio para guarda resultado = 1 si dato5 se encuentra en intervalo de los otros pares de datos (1y2, 3y4) SINO 1
            
            .text
                                            # cargo las palaras de los enteros en los registros t0 a t4
            lw $t0, dato1 ($0)              # 2
            lw $t1, dato2 ($0)              # 10
            lw $t2, dato3 ($0)              # 50
            lw $t3, dato4 ($0)              # 70
            lw $t4, dato5 ($0)              # 34
            
            and $r0, $r0, $0                # limpio r0 haciendo and con 0

            blt $t4, $t0, falso1            # en este caso dato5 < dato1 no puede estar en el primer rango, brancheo a falso1
            ble $t4, $t1, verdadero         # si dato5 <= dato2, esta en el intervalo, es verdadero, brancheo

falso1:     blt $t4, $t2, falso             # como ya era menor a dato1, siempre sera dato5 < dato2 entonces brancheo a falso
            ble $t4, $t3, verdadero         # si dato5 = dato4, esta en el intervalo, es verdadero, branceho

falso:      j fin                           # jump a fin

verdadero:  ori $r0, $r0, 1                 # caso verdadero guardo 1 en r0

fin:        sw $r0, res($0)                 # guardo palabra resultado en res