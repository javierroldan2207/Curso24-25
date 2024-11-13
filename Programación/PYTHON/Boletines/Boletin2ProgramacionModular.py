'''
1. Crea un programa que genere 100 números de forma aleatoria y que posteriormente
ofrezca al usuario la posibilidad de:
a. Conocer el mayor.
b. Conocer el menor.
c. Obtener la suma de todos los números.
d. Obtener la media.
e. Sustituir el valor de un elemento por otro número introducido por teclado.
f. Mostrar todos los números.
⇒ Implementa el código de cada una de las opciones con funciones y sus
correspondientes tests.
⇒ Utiliza la función randint para generar números aleatorios (entre 0 y 1000)


import random  
def generar_numeros_aleatorios(cantidad, limite_inferior, limite_superior):
    numeros = []  
    for i in range(cantidad):
        numero = random.randint(limite_inferior, limite_superior)  
        numeros.append(numero)  
    return numeros


def mayor_numero(numeros):
    numero_mayor=0
    for num in numeros:
        if num > numero_mayor:
            numero_mayor = num
    return numero_mayor


def menor_numero(numeros):
    numero_menor=0
    for num in numeros:
        if num < numero_menor:
            numero_menor = numero_menor
    return numero_menor


def suma_total(numeros):
    suma_total=0
    for num in numeros:
        suma_total=suma_total+num
    return suma_total


def media_numeros(numeros):
    contador=0
    suma_total=0
    for num in numeros:
        suma_total=suma_total+num
        contador+=1
    return suma_total/contador

def cambio_elemento(numeros,new_valor,posicion):
    numeros[posicion]=new_valor
    return numeros

numeros_aleatorios = generar_numeros_aleatorios(100, 0, 1000)
menu='
a. Conocer el mayor numero.
b. Conocer el menor numero.
c. Obtener la suma de todos los numeros.
d. Obtener la media.
e. Sustituir el valor de un elemento por otro numero introducido por teclado.
f. Mostrar todos los numeros.
s. Salir.
'
opcion = " "
while opcion != "s":
    print(menu)
    opcion=input("Seleccione la acion que desea realizar: ").lower()

    if opcion == "a":
        print(mayor_numero(numeros_aleatorios))
    elif opcion == "b":
        print(menor_numero(numeros_aleatorios))
    elif opcion == "c":
        print(suma_total(numeros_aleatorios))
    elif opcion == "d":
        print(media_numeros(numeros_aleatorios))
    elif opcion == "e":
        num_introducir=int(input("Introduce el numero que desea introducir: "))
        posicion=int(input("En que posicion desea introducirlo: "))
        while posicion < 0 or posicion > 1000:
            posicion=int(input("Error: Introduzca una posicion dentro de rango(0 a 1000): "))
        print(cambio_elemento(numeros_aleatorios,num_introducir,posicion))
    elif opcion == "f":
        print(numeros_aleatorios)  
    else:
        print("Opción no válida. Intente de nuevo.")

'''
#DUDAS EJERCICIO 2********
'''
2. Realiza un programa que reciba 10 números y devuelva otra lista con estos números
desplazados una posición a la derecha, de tal forma que el último pase a la primera
posición, el primero a la segunda, el segundo a la tercera, y así sucesivamente.
Opcional: Añade un parámetro (D/I) a la función para que el controle el sentido del
desplazamiento (a derechas/izquierdas) y otro que indique el número de posiciones
a desplazar (0: quedaría igual, 1: desplaza una posición, etc.).
'''

numeros = []
for i in range(10):
    num = int(input(f"Ingrese el número {i+1}: "))
    numeros.append(num)
def desplazar_num(numeros):
    desplazados = []
    desplazados.append(numeros[-1])

    for i in range(9):
        desplazados.append(numeros[i])
    return desplazados

print(desplazar_num(numeros))


'''
3. Diseña una función denominada es_primo que reciba un número y determine si el
número es primo o no. Un número es primo si es divisible por 1 y el mismo número.
'''
