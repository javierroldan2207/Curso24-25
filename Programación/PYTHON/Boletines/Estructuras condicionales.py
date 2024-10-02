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

num1 = int(input("Introduce el primer número: "))
num2 = int(input("Introduce el segundo número: "))
num3 = int(input("Introduce el tercer número: "))
num4 = int(input("Introduce el cuarto número: "))
 
media =(num1 + num2 + num3 + num4)/ 4

contador_superiores = 0
numeros_superiores = ""

if num1 > media:
    contador_superiores += 1
    numeros_superiores += str(num1) + " "
if num2 > media:
    contador_superiores += 1
    numeros_superiores += str(num2) + " "
if num3 > media:
    contador_superiores += 1
    numeros_superiores += str(num3) + " "
if num4 > media:
    contador_superiores += 1
    numeros_superiores += str(num4) + " "

print("La media es %s"%(media))
print("Hay %s número/s superior/es a la media: %s"%(contador_superiores,numeros_superiores))
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

hora1, min1, seg1=1, 23, 37
hora2, min2, seg2=1, 25, 36
if hora1 > hora2:
    resultado="Hora 1 es mayor."
elif hora1<hora2:
    resultado="Hora 2 es mayor"
else:
    if min1>min2:
        resultado="Hora 1 es mayor"
    elif min2>min1:
        resultado="Hora 2 es mayor."
    else:
        if seg1>seg2:
            resultado="Hora 1 es mayor."
        elif seg1<seg2:
            resultado="Hora 2 es mayor."
        else:
            resultado="Las dos horas son iguales"
print(resultado)
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


'''
13.	Diseñar un algoritmo que nos diga el dinero total que tenemos después de pedirnos cuantas
 monedas tenemos de 2€, 1€, 50 céntimos, 20 céntimos o 10 céntimos).

 moneda2=int(input("Introduce cantidad de monedas de dos Euros: "))
moneda1=int(input("Introduce cantidad de monedas de un Euro: "))
cent50=int(input("Ingrese cantidad de monedas de cincuenta centimos: "))
cent20=int(input("Introduzca cantidad de monedas de veinte centimos: "))
cent10=int(input("Introduce cantidad de monedas de diez centimos: "))

dineroTotal=(moneda1*1)+(moneda2*2)+(cent10*0.10)+(cent20*0.20)+(cent50*0.50)
print("Tienes un saldo total de %s Euros."%(dineroTotal))
'''


'''
14.	Escribir un programa que lea un año indicar si es bisiesto. Nota: 
un año es bisiesto si es un número divisible por 4, pero no es divisible por 100, 
excepto que también sea divisible por 400.

año=int(input("Introduce año para averiguar si es bisiesto o no: "))
if (año % 4 == 0 and año % 100 != 0) or (año % 400 == 0):
    print("El año %s, es bisiesto."%(año))
else:
    print("El año %s, no es bisiesto."%(año))
'''



'''
15.	Realiza un algoritmo que calcule la potencia, para ello deberá pedir por teclado la base y el exponente. Pueden ocurrir tres cosas:
-	El exponente sea positivo, sólo tienes que imprimir la potencia.
-	El exponente sea 0, el resultado es 1.
-	El exponente sea negativo, el resultado es 1/potencia con el exponente positivo.

base = float(input("Introduce la base: "))
exponente = int(input("Introduce el exponente: "))

if exponente > 0:
    resultado = base ** exponente
elif exponente == 0:
    resultado = 1
else:
    resultado = 1 / (base ** (-exponente))

print("")
'''


'''
16.	Crea un programa que lea 3 datos de entrada que corresponden a las dimensiones de los lados de un triángulo. A continuación debe determinar e informar qué tipo de triángulo es, 
teniendo en cuenta los siguiente:
-	Si se cumple Pitágoras entonces es triángulo rectángulo -	
Si sólo dos lados del triángulo son iguales entonces es isósceles.
-	Si los 3 lados son iguales entonces es equilátero.

lado1=int(input("Introduce el valor del primer lado."))
lado2=int(input("Introduce el valor del segundo lado."))
lado3=int(input("Introduce el valor del tercer lado."))
if lado1==lado2 and lado1==lado3 and lado2==lado3:
    print("El triangulo es equilátero.")
elif lado1==lado2 or lado1==lado3 or lado2==lado3:
    print("El triangulo es isósceles.")
else:
    print("El triangulo es escaleno.")
'''


'''
17.	Pide al usuario dos números y muestra la "distancia" entre ellos 
(el valor absoluto de su diferencia, de modo que el resultado sea siempre positivo).

num1=int(input("Introduce el primer numero: "))
num2=int(input("Introduce el segundo numero: "))
diferencia = num1 - num2
distancia = diferencia if diferencia >= 0 else -diferencia
print("La distancia entre %s y %s es: %s."%(num1,num2,distancia))
'''


'''
18.	El director de una escuela está organizando un viaje de estudios, 
y requiere determinar cuánto debe cobrar a cada alumno y cuánto debe pagar a la 
compañía de viajes por el servicio. La forma de cobrar es la siguiente: 
si son 100 alumnos o más, el costo por cada alumno es de 65 euros; de 50 a 99 alumnos, el costo es de 70 euros, de 30 a 49, de 95 euros,
 y si son menos de 30, el costo de la renta del autobús es de 4000 euros, sin importar el número de alumnos. 
 Realice un algoritmo que permita determinar el pago a la compañía de autobuses y lo que debe pagar cada alumno por el viaje.

 alumnos=int(input("Introduce cantidad de alumnos: "))
if alumnos>=100:
    precio=65
    total=alumnos*precio
    print("Son %s alumnos, con un precio de %s Euros cada uno, y suma un total de %s Euros."%(alumnos,precio,total))
elif 50<=alumnos<=90:
    precio=70
    total=alumnos*precio
    print("Son %s alumnos, con un precio de %s Euros cada uno, y suma un total de %s Euros."%(alumnos,precio,total))
elif 30<=alumnos<=49:
    precio=95
    total=alumnos*precio
    print("Son %s alumnos, con un precio de %s Euros cada uno, y suma un total de %s Euros."%(alumnos,precio,total))
elif alumnos<30:
    total=4000
    precio=total/alumnos
    print("Son %s alumnos, con un precio de %s Euros cada uno, y suma un total de %s Euros."%(alumnos,precio,total))
'''


'''
19.	La política de cobro de una compañía telefónica es: cuando se realiza una llamada, 
el cobro es por el tiempo que ésta dura, de tal forma que los primeros cinco minutos cuestan 1 euro, 
los siguientes tres, 80 céntimos, los siguientes dos minutos, 70 céntimos, y a partir del décimo minuto, 50 céntimos. Además, 
se carga un impuesto de 3 % cuando es domingo, y si es otro día, en turno de mañana, 15 %, y en turno de tarde, 10 %. Realice un algoritmo para determinar 
cuánto debe pagar por cada concepto una persona que realiza una llamada.

duracion = int(input("Introduce la duración de la llamada en minutos: "))

dia = input("Introduce el día de la semana: ").lower()
turno = ""
if dia != "domingo":
    turno = input("Introduce el turno (mañana o tarde): ").lower()

if duracion <= 5:
    costo = duracion * 1
elif duracion <= 8:
    costo = 5 * 1 + (duracion - 5) * 0.8
elif duracion <= 10:
    costo = 5 * 1 + 3 * 0.8 + (duracion - 8) * 0.7
else:
    costo = 5 * 1 + 3 * 0.8 + 2 * 0.7 + (duracion - 10) * 0.5

if dia == "domingo":
    impuesto = costo * 0.03
elif turno == "mañana":
    impuesto = costo * 0.15
else:
    impuesto = costo * 0.10

total_pagar = costo + impuesto
print("Costo de la llamada: %s euros"%(costo))
print("Impuesto: %s euros"%(impuesto))
print("Total a pagar: %s euros"%(total_pagar))
'''