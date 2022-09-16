# Cuestiones Primer Ejercicio (1.1 -\> 1.30)

## Cuestion 1.1
El valor que se carga en la posición es 1 *(0x00000001)* ya que t0 es menor a t1.

---
## Cuestion 1.2
En este caso como t0 no es menor a t1 se guarda 0 *(0x00000000)* en res.

---
## Cuestion 1.3
La comparación ha evaluado si 50\<30.

---
## Cuestion 1.3
Si queremos evaluar una igualdad debemos cambiar *slt* por *seq*.

---
## Cuestion 1.5
![Cuestion1.5](https://cdn.discordapp.com/attachments/1001292234722922566/1019824011947028570/unknown.png)

---
## Cuestion 1.6
Se cargó un 1 *(0x00000001)* en la posición res.

---
## Cuestion 1.7
En este caso se cargó un 0 *(0x00000000)* ya que dato1\>dato2.

---
## Cuestion 1.8
Como son iguales ahora se carga un 1 *(0x00000001)*.

---
## Cuestion 1.9
Se compara si dato1 es *menor o igual* a dato2.

---
## Cuestion 1.10
![Cuestion1.10](https://cdn.discordapp.com/attachments/1001292234722922566/1020019083099508926/unknown.png)

---
## Cuestion 1.11
![Cuestion1.11](https://cdn.discordapp.com/attachments/1001292234722922566/1020020821110030457/unknown.png)

---
## Cuestion 1.12
![Cuestion1.12](https://cdn.discordapp.com/attachments/1001292234722922566/1020021779424628757/unknown.png)

---
## Cuestion 1.13
En este caso se guarda 1 en res: *(0x00000001)*.

---
## Cuestion 1.14
Ahora se pone 0 en res: *(0x00000000)*.

---
## Cuestion 1.15
Se pone 0 en res: *(0x00000000)*.

---
## Cuestion 1.16
Se pone 0 en res: *(0x00000000)*.

---
## Cuestion 1.17
Se ha evaluado que **ambos** datos sean distintos de 0 simultaneamente (dato1 \<> 0  **&&**  dato2 \<> 0)

---
## Cuestion 1.18
![Cuestion1.18](https://cdn.discordapp.com/attachments/1001292234722922566/1020029785168171069/unknown.png)

---
## Cuestion 1.19
Se almacena un 1 en res: *(0x00000001)*.

---
## Cuestion 1.20
Se almacena un 0 en res: *(0x00000000)*.

---
## Cuestion 1.21
Se almacena un 0 en res: *(0x00000000)*.

---
## Cuestion 1.22
Se ha evaluado que el dato1 sea distinto de 0 **y** que dato2 sea menor a dato1 simultaneamente (dato1 \<> 0  **&&**  dato2 \< dato1)

---
## Cuestion 1.23
![Cuestion1.23](https://cdn.discordapp.com/attachments/1001292234722922566/1020031934522458183/unknown.png)

---
## Cuestion 1.24
![Cuestion1.24](https://cdn.discordapp.com/attachments/1001292234722922566/1020033204708724736/unknown.png)

---
## Cuestion 1.25
Se almacena un 0 en res: *(0x00000000)*.

---
## Cuestion 1.26
En este caso se almacena un 1 en res: *(0x00000001)*.

---
## Cuestion 1.27
Nuevamente se almacena un 1 en res: *(0x00000001)*.

---
## Cuestion 1.28
Se almacena un 0 en res: *(0x00000000)*.

---
## Cuestion 1.29
Se ha evaluado si el dato1 es menor a dato2 **o** si dato2 es igual a 0 (dato1 \< dato2  **||**  dato2 == 0)

---
## Cuestion 1.30
![Cuestion1.30](https://cdn.discordapp.com/attachments/1001292234722922566/1020077919932006471/unknown.png)

---
## Cuestion 1.31
En el apartado anterior ya había utilizado la pseudoinstrucción *sle* por lo que queda igual:

![Cuestion1.31](https://cdn.discordapp.com/attachments/1001292234722922566/1020079301330210856/unknown.png)

---


# Cuestiones Segundo Ejercicio (2.1 -\> 2.24)
<br />

## Cuestion 2.1
En el programa la línea que controla el flujo del programa evaluando una *condición* es:

    Si:             beq $t1, $t0, finsi             # si $t1 = 0 fisni
Que es muy similar a hacer:

    if ( t1 != 0 )

---
## Cuestion 2.2
Como mencioné en el ejercicio anterior:

    if:             beq $t1, $t0, finsi
    then:           div $t0, $t1
                    mflo $t2

---
## Cuestion 2.3
Luego de ejecutar el programa se almacena 71 en *res (0x00000047)*.

---
## Cuestion 2.4
En este caso como dato2 es igual a 0, en la variable *res* se almacena un 40 *(0x00000028)*.

---
## Cuestion 2.5
![Cuestion2.5](https://cdn.discordapp.com/attachments/1001292234722922566/1020152074673061928/unknown.png)

---
## Cuestion 2.6
    Var
    Int:    dato1 = 40;
            dato2 = 30;
            res;
    INICIO
            if (dato1 != 0 && dato2 != 0) 
                res = dato1/dato2;
            res = res + dato1 + dato2;

---
## Cuestion 2.7
    Condiciones:
                beq $t1, $0, finsi
                beq $t0, $0, finsi
    
En pseudocódigo podríamos hacer: ( dato1 != 0 && dato2 != 0 )

---
## Cuestion 2.8
    If:
        beq $t1, $0, finsi
        beq $t0, $0, finsi
    Then:
        div $0, $t1
        mflo $t2

---
## Cuestion 2.9
En este caso se almacena un 71 en *res (0x00000047)* 

---
## Cuestion 2.10
Cuando dato1 = 0, se almacena un 30 en *res ()*
<br>
Cuando dato2 = 0, se almacena un 40 en *res (0x00000028)*

---
## Cuestion 2.11
![Cuestion2.11](https://cdn.discordapp.com/attachments/1001292234722922566/1020156972949065748/unknown.png)

---
## Cuestion 2.12
        VAR
    Int:    dato1 = 30;
            dato2 = 40;
            res;
    INICIO
            if ( dato1 \< dato2 ) then res = dato1 
                else
                    res = dato2
                Finsi
        FIN

---
## Cuestion 2.13
Luego de ejecutar se guarda un 30 en *res: 0x0000001e*.
En caso de dato1 ser igual a 35, se guarda 35 en *res 0x00000023.*

---