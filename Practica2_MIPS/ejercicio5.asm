                .data                           # no especifico ubicacion en memoria

vector:         .word 1, 0, 2, 3, 0             # defino las palabras del vector
largo:          .word 5                         # guardo el largo del vector
total:          .space  4                       # reservo espacio para guarda resultado       

                .text

main:           la $t0, vector                  # cargo direccion del vector en t0
                lw $t1, largo($t0)              # agrego la direc en el offset
        
                li $t7, 0                       # inicializo contador t7 en 0
                and $r0, $r0, $0                # limpio r0 para luego guardar resultado

bucle:          bgt $t7, $t1, fin               # si el contador supera el largo salgo del bucle, brancheo a fin
                lw $t2, 0, ($t0)
                bne $t2, $0, distintocero       # brancheo a distintocero si t2 != 0
                add $r0, $r0, 1                 # sumo 1 a r0
             
            
distintocero:   addi $t7, $t7, 1                # sumo 1 al contador 
                addi $t0, $t0, 4                # sumo 4 a la direccion del vector, por haber sumado 1 word
                j bucle                         # jump a bucle
                

fin:            sw $r0, total($0)               # guardo palabra resultado en res