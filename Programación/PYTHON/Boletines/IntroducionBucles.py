'''
1. Escribe un programa que reciba dos números por teclado y que después muestre
por pantalla los números que hay entre ellos. Por ejemplo, si se recibe 5 y 3 se
mostrará: 3, 4, 5. Utiliza bucle for y while [for/while].
#FOR
num1=int(input("Introduce primer numero: "))
num2=int(input("Introduce segundo numero: "))
if num1>num2:
    for i in range(num2,num1+1):
        print(i)
else:
    for i in range(num1,num2+1):
        print(i)
    
#WHILE------------------------------------------------------------
num1=int(input("Ingrese el primer número: "))
num2=int(input("Ingrese el segundo número: "))
if num1<num2:
    inicio=num1
    fin=num2
else:
    inicio=num2
    fin=num1
contador =inicio
while contador <= fin:
    print(contador)
    contador += 1
'''

'''
2. Crea un programa que reciba un número y a continuación muestre la tabla de
multiplicar de ese número. Utiliza sólo bucles de tipo while.

num=int(input("Introduzca un numero para mostrar su tabla de multiplicar: "))
contador=1
while contador < 11:
    resultado=num*contador
    print("%s X %s=%s"%(num,contador,resultado))
    contador+=1
'''


'''
3. Escribe un programa que reciba dos números y muestre por pantalla todos los
números que hay en ese intervalo que son múltiplos de 7 [for/while].

#FOR
num1, num2= 13, 21
for i in range(num1,num2+1):
    if i%7==0:
        print(i)

#WHILE--------------------------------------------------------
num1,num2=13,50
contador=num1
while contador<=num2:
    if contador%7==0:
        print(contador)
    contador+=1
        
'''
'''
4. Crea un programa que reciba números hasta que se introduzca uno fuera del rango
0 - 10.0000. En ese momento informará de cuántos números se han introducido y la
media de éstos.

num=float(input("Introduce un numero: "))
contador=1
while num>0 and num<10000:
    contador+=1
    num+=num
    num=float(input("Introduce sigueiente numero: "))
media=num/contador
print("Se han introducido %s numeros y la media es de %s"%(contador,media))
'''

'''
5. Escribe un programa que reciba un número n entero positivo y devuelva la suma de
los números existentes entre 1 y n. Si el número no es un entero positivo debe
informar del error y solicitarlo de nuevo.

num=int(input("Introduce un numero entero: "))
while num<0:
    num=int(input("Numero no válido, vuelve a introducir un numero entero: "))

suma = 0
for i in range(1, num + 1):
    suma += i
print("La suma de los numero entre 1 y %s es de %s."%(num,suma))
'''

'''
6. Crea un programa similar al anterior, pero que reciba dos números enteros positivos
n, m y devuelva la suma de los números entre n y m. Valida los datos.

num1=int(input("Introduce un numero entero: "))
num2=int(input("Introduce otro numero entero: "))
while num1<0 or num2<0:
    num1=int(input("Numero no válido, vuelve a introducir un numero entero: "))
    num2=int(input("Numero no válido, vuelve a introducir un numero entero: "))

if num1<num2:
    suma=0
    for i in range(num1,num2+1):
        suma+=i
else:
    suma=0
    for i in range(num2,num1+1):
        suma+=i
print("La suma es de: ",suma)
'''

'''
7. Se desea crear un programa que lea desde teclado una serie de números hasta que
aparezca alguno menor que 1000. Cuando esto ocurra deberá mostrar cuál ha sido
el número más grande que se ha introducido.

num=int(input("Introduce un numero mayor a 1000: "))
num2=-1
while num>1000:
    if num>num2:
        num2=num
    num=int(input("Vuelve a introducir un numero mayor a 1000: "))
print(num2)
'''

'''
8. Crea un programa que reciba dos números num_1 y num_2 y devuelva el producto
de ambos, pero sin utilizar el operador de la multiplicación (*). Los números pueden
ser enteros positivos/negativos.

num_1 = int(input("Ingresa el primer número: "))
num_2 = int(input("Ingresa el segundo número: "))
producto = 0
if num_2 < 0:
    num_1 = -num_1
    num_2 = -num_2

while num_2 > 0:
    producto += num_1
    num_2 -= 1
print("El producto es:", producto)
'''

'''
10. Escribe un programa que pida al usuario cuántos números positivos quiere introducir
para a continuación pedirlos por consola. Si el usuario introduce un número erróneo
volverá a pedirlo y una vez que se hayan introducido todos mostrará la media, cuál
es el mayor y cuál el menor.

cantidad = int(input("¿Cuántos números positivos quieres introducir?: "))
suma = 0
contador = 0
numero = int(input(f"Introduce el número 1: "))

while numero <= 0:
    print("Error: Debes introducir un número positivo.")
    numero = int(input(f"Introduce el número 1: "))

suma += numero
mayor = numero
menor = numero
contador += 1
while contador < cantidad:
    numero = int(input(f"Introduce el número {contador + 1}: "))
    if numero > 0:  
        suma += numero
        if numero > mayor:
            mayor = numero
        if numero < menor:
            menor = numero
        contador += 1
    else:
        print("Error: Debes introducir un número positivo.")

media = suma / cantidad
print("La media de los números es:", media)
print("El número mayor es:", mayor)
print("El número menor es:", menor)
'''

'''
Escribe un programa que reciba un valor y cree una pirámide de asteriscos de altura
ese valor (cada línea contiene un número impar de asteriscos). Por ejemplo, para
valor = 3 tendríamos:

altura = int(input("Introduce la altura de la pirámide: "))

for i in range(1, altura + 1):
    espacios = altura - i
    asteriscos = 2 * i - 1
    print(' ' * espacios + '*' * asteriscos)
'''

'''
12. Crea un programa que reciba un entero positivo mayor que 0 y a continuación
informe si es un número perfecto. Un número es perfecto si es igual a la suma de
todos sus divisores.

numero = int(input("Introduce un número entero positivo mayor que 0: "))

while numero <= 0:
    numero = int(input("Introduce un número entero positivo mayor que 0: "))
suma_divisores = 0
for i in range(1, numero):
    if numero % i == 0: 
        suma_divisores += i
if suma_divisores == numero:
    print(f"{numero} es un número perfecto.")
else:
    print(f"{numero} no es un número perfecto.")

'''
'''
14. Write a program in python to display a pattern like a diamond.

filas = int(input("Introduce el número de filas para la mitad del diamante: "))
for i in range(1, filas + 1):
    espacios = filas - i
    asteriscos = 2 * i - 1
    print(' ' * espacios + '*' * asteriscos)
for i in range(filas - 1, 0, -1):
    espacios = filas - i
    asteriscos = 2 * i - 1
    print(' ' * espacios + '*' * asteriscos)
'''

