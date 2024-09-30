'''
1. Realizar un programa que lea un número entero por teclado e informe de si el número es
par o impar (el cero se considera par).

num=int(input("Introduce un numero para saber si es par o impar: "))
if num%2==0:
    print("El numero es par.")
else:
    print("El numeo esimpar.")
'''
'''
2. Realizar un programa que solicite dos números e informe si son iguales, el primero mayor
que el segundo o el primero más pequeño que el segundo.

num1=float(input("Introduce primer numero: "))
num2=float(input("Introduce segundo numero:"))
if num1==num2:
    print("Los dos numeros son iguales.")
elif num1>num2:
    print("%s es mayor que %s." %(num1,num2))
else:
    print("%s es mayor que %s." %(num2,num1))
'''
'''
3. Realizar un programa que lea un número por teclado. El programa debe imprimir en
pantalla un mensaje con “El número xx es múltiplo de 2” o un mensaje con “El número xx es
múltiplo de 3”. Si es múltiplo de 2 y de 3 deben aparecer los dos mensajes. Si no es múltiplo
de ninguno de los dos el programa finaliza sin mostrar ningún mensaje.

num=float(input("Introduce un numero: "))
if (num%2==0 and num%3==0):
    print("%s es multiplo de 2."%(num))
    print("%s es multiplo de 3."%(num))
elif num%3==0:
    print("%s es multiplo de 3."%(num))
elif num%2==0:
    print("%s es multiplo de 2."%(num))
'''
'''
4. Realiza un programa que reciba la edad de una persona (entre 0 y 50 años) y comunique
la etapa educativa que le corresponde:
- 0 a 6 años: Educación infantil.
- 6 a 11 años: Educación primaria.
- 12 a 16 años: Educación secundaria obligatoria.
- Superior a 16 años: Enseñanza post-obligatoria.

edad=int(input("Introduce tu edad: "))
if 0<edad<=6:
    print("Educación infantil.")
elif 7<=edad<11:
    print("Educación primaria.")
elif 12<=edad<=16:
    print("Educación secundaria oblicatoria.")
elif 16<edad<50:
    print("Ensenñanza post-obligatoria.")
else:
    print("Valor introducido incorrecto.")
'''
'''
5. Realizar un programa que solicite 4 números e imprima la media de los números, cuántos
son superiores a la media y sus valores.
Por ejemplo, dados: 5, 4, 9, 6 ⇒ La media es 6 y hay 1 número/s superior a la media: 9.

num1=int(input("Introduce primer numero: "))
num2=int(input("Introduce segundo numero: "))
num3=int(input("Introduce tercer numero: "))
num4=int(input("Introduce cuarto numero: "))
media=(num1+num2+num3+num4)/4
'''
'''
6. Diseña un programa que reciba dos números enteros y nos diga si son múltiplos entre sí,
es decir, si uno de ellos es múltiplo del otro.
Por ejemplo, dados: 36 y 9 respondería que sí son múltiplos, pero dados 15 y 24
respondería que no lo son.

num1=int(input("Introduce un numero: "))
num2=int(input("Introduce segundo numero: "))

if num1%num2==0 or num2%num1==0:
    print("Si son multiplos.")
else:
    print("No son multiplos.")
'''
'''
7. Realizar un programa que solicite un carácter por teclado e informe por pantalla si el
carácter es una vocal o no lo es. Si es una vocal mostrará el mensaje “Es la primera vocal
(A)” o “Es la segunda vocal (E)”. Puedes hacer que este programa no sea sensible a
mayúsculas.

letra=str(input("Introduzca un caracter: ")).upper()
match letra:
    case "A":
        print("Es la primera vocal A.")
    case "E":
        print("Es la segunda vocal E.")
    case "I":
        print("Es la tercera vocal I.")
    case "O":
        print("Es la cuarta vocal O")
    case "U":
        print("Es la quinta vocal U.")
    case _:
        print("No es una vocal.")
'''
'''
8. Realizar un programa que lea el estado civil de una persona (S-Soltero, CCasado,
V-Viudo o D-Divorciado) y su edad. Después debe mostrar por pantalla el porcentaje de
retención que debe aplicarse de acuerdo con las siguientes reglas:
● A los solteros o divorciados menores de 35 años, un 12%
● Todas las personas mayores de 50 años, un 8.5%
● A los viudos o casados menores de 35 años, un 11.3%
● Al resto de casos se le aplica un 10.5%

estado=str(input("Introduce su estado ,(S-Soltero, C-Casado, V-Viudo o D-Divorciado): ")).upper()
edad=int(input("Introduce tu edad: "))
if edad>50:
    print("Se aplica un 8.5%.")
elif (estado=="A" or estado=="D") and edad<35:
    print("Se aplica un 12%")
elif (estado=="C" or estado=="V") and edad<35:
    print("Se aplica un 11.3%")
else:
    print("Se aplica un 10.5%")
'''
'''
9. Realiza un programa que pida el día de la semana (del 1 al 7) y escriba el día
correspondiente. Si introducimos otro número nos da un error.

dia=int(input("Introduce el numero del dia de la semana: "))
if dia == 1:
    print("Lunes")
elif dia == 2:
    print("Martes.")
elif dia == 3:
    print("Miercoles.")
elif dia == 4:
    print("Jueves.")
elif dia == 5:
    print("Viernes.")
elif dia == 6:
    print("Sabado.")
elif dia == 7:
    print("Domingo.")
else:
    print("Valor introducido incorrecto.")
'''
'''
10. Realizar un programa que lea por teclado dos marcaciones de un reloj digital (horas,
minutos, segundos) comprendidas entre las 0:0:0 y las 23:59:59 e informe cuál de ellas es
mayor.
Ejemplo:
Hora 1: 12:35:37
Hora 2: 12:36:36
“Hora 2 es mayor”
'''
'''
11. En un establecimiento en rebajas, hay 3 tipos de productos (A, B y C). El porcentaje de
rebaja que se aplicará sobre el precio original del producto se calcula de la siguiente forma:
1. Si el producto es de tipo A, independientemente de su precio se aplica un 7% de
descuento.
2. Si el producto es de tipo C o bien el precio es inferior a 500€ se aplicará un
porcentaje del 12% de descuento.
3. En el resto de casos se aplica un 9% de descuento.

producto=str(input("introduce el tipo de producto: ")).upper()
precio=567
if producto=="A":
    descuento=(precio*7)/100
    print("Precio final, ",precio-descuento)
elif (producto=="C") or precio<500:
    descuento=(precio*12)/100
    print("Precio fial, ",precio-descuento)
else:
    descuento=(precio*9)/100
    print("Precio final, ",precio-descuento)
'''


'''
12. Realizar un programa que lea un carácter y dos números enteros por teclado. Si el
carácter leído es un operador aritmético, deberá calcular la operación correspondiente, si es
cualquier otro deberá mostrar la concatenación de los tres valores.

caracter=str(input("Introduce un caracter: "))
num1=int(input("Introduce primer numero: "))
num2=int(input("Introduce segundo numero: "))

match caracter:
    case "+":
        print(num1+num2)
    case "-":
        print(num1-num2)
    case "/":
        print(num1/num2)
    case "*":
        print(num1*num2)
    case "%":
        print(num1%num2)
    case _:
        print(f"{num1}{caracter}{num2}")
'''
