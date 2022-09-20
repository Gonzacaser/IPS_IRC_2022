            .data                               # no especifico ubicacion en memoria

V:          .word 3,6,9,12,15,18,21,24,27       # defino los enteros del vector
largoV:     .word 9                             # uso esta variable para guardar su largo, en este caso 9
rango1:     .word 5
rango2:     .word 25
total:      .space 4                            # guardo espacio para una palabra
            .text
 
main:       lw $t1, rango1($0)                  # guardo rango1 en t1
            lw $t2, rango2($0)                  # guardo rango2 en t2

            lw $t3, largoV($0)                  # guardo el largo del vector en t3
            
            la $t0, V                           # guardo la direccion del vector en t0

            and $r0, $r0, $0		            # limpio r0 usando and con 0
            
            li $t7, 0                           # inicializo en 0 a t7 para usarlo como contador
    
bucle:      bge $t7, $t3, fin                   # si contador >= largoV salgo del bucle, brancheo a fin
            lw $t4, 0($t0)

if:         ble $t4, $t1, finif                 # si t4 <= rango1 brancheo a finif
            ble $t4, $t2, finif                 # si t4 <= rango2 brancheo a finif

then:       addi $r0, $r0, 1                    # sumo 1 a r0 resultado

finif:      addi $t7, $t7, 1                    # incremento el contador t7++
            addi $t0, $t0, 4                    # aumento en 4 la direc del vector por haber incrementado en 1 palabra
            j bucle                             # vuelvo al bucle con jump

fin:        sw $r0, total($0)                   # guardo la palabra resultado en total