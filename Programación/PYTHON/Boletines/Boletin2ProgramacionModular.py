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

'''
2. Realiza un programa que reciba 10 números y devuelva otra lista con estos números
desplazados una posición a la derecha, de tal forma que el último pase a la primera
posición, el primero a la segunda, el segundo a la tercera, y así sucesivamente.
Opcional: Añade un parámetro (D/I) a la función para que el controle el sentido del
desplazamiento (a derechas/izquierdas) y otro que indique el número de posiciones
a desplazar (0: quedaría igual, 1: desplaza una posición, etc.).

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

'''
3. Diseña una función denominada es_primo que reciba un número y determine si el
número es primo o no. Un número es primo si es divisible por 1 y el mismo número.

def es_primo(num):
    resultado = True
    if num <= 1:
        resultado=False
    for i in range(2,num):
        if num % i ==0:
            resultado = False
    return resultado

assert(es_primo(2))
assert(es_primo(13))
assert(not es_primo(15))
assert(not es_primo(20))
'''

'''
4. Crea una función obtener_primos_menores que reciba un número y devuelva los
números primos que son menores o iguales que el proporcionado como argumento.
NO debes utilizar la función anterior es_primo, sino el algoritmo dado por la criba de
Eratóstenes. Por ejemplo, si se proporciona el número 30, se devolverá: [2, 3, 5, 7,
11, 13, 17, 19, 23, 29]

def obtener_primos_menores(num):
    lista_numeros = []
    if num > 1:
        for i in range(2,num):
            if i % 2 != 0:
                lista_numeros.append(i)
        for n in lista_numeros:
            if lista_numeros[1]**2 < 20:
                if i % 2 != 0:
                    lista_numeros.append(i)
            
    return lista_numeros
print(obtener_primos_menores(30))
'''

'''
5. Crea un programa que lea por teclado números de forma sucesiva y los guarde en
una estructura de datos; el proceso de lectura y guardado finalizará cuando
metamos un número negativo. En ese momento se mostrará el mayor elemento
introducido y aquellos que son números primos.

numeros=0
lista_numeros=[]
while numeros >=0:
    numeros=int(input("Introduzca un numero: "))
    lista_numeros.append(numeros)

def mayor_numero(numeros):
    mayor = numeros[0]
    for n in numeros:
        if n > mayor:
            mayor = n
 
    return mayor
def es_primo(numeros):
    lista=[]
    for n in numeros:
        resultado = True
        if n <= 1:
            resultado=False
        for i in range(2,n):
            if n % i ==0:
                resultado = False
        if resultado == True:
            lista.append(n)       
    return lista


print("El mayor numero de la lista introducida es el: ",mayor_numero(lista_numeros))
print("Los numeros primos de la lista son: ",es_primo(lista_numeros))
'''

'''
6. Realiza una función reverse que reciba una lista de elementos y devuelva otra cuyo
contenido sea igual a la original pero invertida.

def reverse(lista):
    lista_reversa=[]
    for elemento in lista:
        lista_reversa.insert(0,elemento)
    return lista_reversa

print(reverse(["hola","buenos","dias"]))
'''
   
'''
7. Diseña una función llamada esta_ordenada que reciba una lista de números y un
parámetro (creciente, por defecto a True) y devuelva True si está ordenada o False
en caso contrario.

def esta_ordenada(lista, orden="creciente"):
    ordenada = True
    i=0
    while i > len(lista)-1 and ordenada:
        if orden=="creciente" and lista[i]>lista[i+1]:
            ordenada=False
        elif orden=="decreciente" and lista[i]<lista[i+1]:
            ordenada=False
        i+=1

    return ordenada

print(esta_ordenada([1,2,4,5,6]))
'''

'''
8. Escribir una función denominada encajan que reciba dos fichas de dominó en
formato [n,n], con 0 ≤ n ≤ 6, e indique si dos fichas de dominó encajan o no. Las
fichas son recibidas en dos cadenas de texto con el siguiente formato
[3,4] [2,5]
'''

'''
12. Escribe una función intersect que reciba dos listas y devuelva otra lista con los
elementos que son comunes a ambas, sin repetir ninguno. Las estructuras de datos
originales no deben verse modificadas.

def intersect(lista_1,lista_2):
    lista_repetidos = []
    for elemento in lista_1:
        if elemento in lista_2 and elemento not in lista_repetidos:
            lista_repetidos.append(elemento)
    return lista_repetidos

print(intersect(["p",2,5,"a","w"],[2,"w","a"]))
'''

'''
13. Escribe una función union que reciba dos listas y devuelva los elementos que
pertenecen a una, o bien, a la otra, pero sin repetir ninguno (unión de conjuntos).
Las estructuras de datos originales no deben verse modificadas

def union(lista_1,lista_2):
    lista_final = []

    for elemento in lista_1:
        if elemento not in lista_final:
            lista_final.append(elemento)

    for elemento in lista_2:
        if elemento not in lista_final:
            lista_final.append(elemento)

    return lista_final 

print(union(["hola",1,4,4,"adios","hola"],["hola",2,97,"nombre"]))

'''


'''
15. Escribe una función que, dada una lista de cadenas, devuelva la cadena más larga.
Si dos o más cadenas miden lo mismo y son las más largas, la función devolverá la
que tenga el mayor número de caracteres repetidos 

def reduciir_palabra(palabra):
    reducida=""

    for letra in palabra:
        if letra not in reducida:
            reducida+=letra

    return reducida

def obtener_caracter_mas_repetido(palabra_1,palabra_2):
    mas_repetida=palabra_1

    if len(reduciir_palabra(palabra_2))<len(reduciir_palabra(palabra_1)):
        mas_repetida=palabra_1
        if len(reduciir_palabra(palabra_2))<len(reduciir_palabra(palabra_1)):
            mas_repetida=palabra_2

    return mas_repetida


def obtener_mas_larga(palabras):
    mas_larga=palabras[0]
    for palabra in palabras:
        if len(palabra) > len(mas_larga):
            mas_larga = palabra
        elif len(palabra) > len(mas_larga):
            mas_larga = obtener_caracter_mas_repetido(palabra,mas_larga)
    return mas_larga

assert(obtener_mas_larga(["murcielago","holaa","jeus"]))
'''