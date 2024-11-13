'''
1. Write a program in python to display the sum of the series [ 9 + 99 + 999 + 9999 ...]
given a number of terms.
- Input the number or terms :5
- Expected Output: 9 99 999 9999 99999. The sum of the series = 111105

num=(int(input("Introduce el numero del tamaño de la serie: ")))

num1=9
suma=0
for i in range(num):
    print(num1,end="+")
    suma+=num1
    num1=num1*10+9
print("La suma de la serie es de.", suma)
'''

'''
2. Write a program to print Floyd's Triangle with two options: binary-based or
decimal-based triangles.

num_base=int(input("Introduce el numero de filas de la piramide: "))
tipo=input("Introduce el tipo de priramide, (Decimal o Binario): ").lower()
num=1
for i in range(1,num_base+1):
    for j in range(i):
        espacios=num_base-1
        print(num)
        num+=1  
'''
  
'''
3. Write a program to find the sum of the series [ x - x3 + x5 +... + xn] for a given number
of terms.

x = int(input("Introduce el valor de x: "))
n = int(input("Introduce el número de términos: "))

suma = 0
signo = 1
for i in range(1, n + 1, 2):  
    suma += signo * (x ** i)  
    signo *= -1  
print("La suma de la serie es:", suma)
'''

'''
4. Write a program to compute the sum of the series 1 +11 + 111 + 1111 + .. n terms.

num=(int(input("Introduce el numero del tamaño de la serie: ")))

num1=1
suma=0
for i in range(num):
    print(num1,end="+")
    suma+=num1
    num1=num1*10+1
print("La suma de la serie es de.", suma)
'''

'''
5. Diseña un programa que pida dos números enteros y nos muestre los siguientes
diez números que son múltiplos del segundo introducido a partir del primero. Por
ejemplo, si introducimos:
13 y 7 ⇒ 14, 21, 28, 35, 42, 49, 56, 63, 70, 77
(a partir de 13 los siguientes 10 múltiplos de 7)

num1=int(input("Introduce primer numero entero: "))
num2=int(input("Introduce segundo numero entero: "))

contador=0
while contador<10:
    if num1%num2==0:
        print(num1)
    num1+=1
    contador+=1
'''

'''
6. La secuencia siguiente está definida para el conjunto de los números enteros:

n = int(input("Introduce un número entero positivo: "))
if n<=0:
    print("Por favor, introduce un número entero positivo.")
else:
    print(n)
    while n !=1:
        if n % 2==0:
            n = n//2  
        else:
            n = 3*n+1  
        print(n)
'''

'''
7. Diseña un algoritmo en el que a partir de una fecha introducida por teclado con
formato día, mes, año se obtenga la fecha del día siguiente. El programa debe
terminar cuando la fecha introducida no sea válida (por ejemplo, 30-02-2024).

'''

'''
8. Crea un programa que reciba un número entero positivo mayor que cero y devuelva
una secuencia de Fibonacci de longitud igual a este valor.
La sucesión de Fibonacci es una sucesión numérica en la que cada término es igual
a la suma de los dos anteriores, salvo los dos primeros que se toman como 1 y 1.
Así, una sucesión de longitud nueve sería: 1, 1, 2, 3, 5, 8, 13, 21, 34

n = int(input("Introduce un número entero positivo mayor que cero: "))
while n <= 0:
    print("Por favor, introduce un número mayor que cero.")
    n = int(input("Introduce un número entero positivo mayor que cero: "))
a= 1
b=1
print(a, end=", ")  
if n > 1:
    print(b, end=", ")  
for i in range(2, n):
    siguiente = a + b  
    print(siguiente, end=", ")  
    a, b = b, siguiente
'''

'''
9. Se considera la serie definida por: a1=0, a2=1, an=3*an-1+2*an-2
(n≥3) Se desea crear
un programa que calcule el valor y el rango (subíndice) del primer término que sea
mayor o igual a 1000.

a1 =0
a2 =1
n =2  
an =a1  
while an<1000:
    n +=1  
    an =3*a2+2*a1  
    a1, a2=a2,an  
print(f"El primer término mayor o igual a 1000 es a{n} = {an}")
'''

'''
10. Juan recibe dos tipos de regalos de cumpleaños según el año en el que esté: si el
año es impar su familia le regala un puzzle; si es par, recibe dinero.
Cada nuevo cumpleaños recibe más regalos: así, cada año que recibe puzzles
obtiene el doble que el anterior; sin embargo, si se trata de dinero recibe 15€ más
que en la anterior ocasión.
Elabora un programa que calcule cuántos regalos ha recibido en total Juan, para una
edad determinada sabiendo que en el primer cumpleaños le regalaron un puzzle y
en el segundo 20€.

edad=int(input("Introduce la edad de Juan: "))
contador=1
puzle=1
dinero=20
total_puzle=0
total_dinero=0
while contador<=edad:
    if contador%2==1:
        total_puzle+=puzle
        puzle*=2
    else:
        total_dinero+=dinero
        dinero+=15
    contador+=1
print(f"Juan tiene {edad} año/s y a recivido {total_puzle} puzzles y {total_dinero}$ en total.")
'''


'''
11. Crea un programa que reciba el nombre de una figura geométrica y la longitud del
lado de ésta y genere una figura vacía como las siguientes. Incluye la posibilidad de
que se cambie el símbolo utilizado para pintar la figura.

figura = input("Introduce el nombre de la figura (cuadrado, rombo, triangulo): ").lower()
lado = int(input("Introduce la longitud del lado: "))
simbolo = input("Introduce el símbolo que quieres utilizar: ")
if figura == "cuadrado":
    for i in range(lado):
        if i==0 or i==lado-1: 
            print(simbolo*lado)
        else:  
            print(simbolo+ " " * (lado-2)+simbolo)
elif figura == "rombo":
    for i in range(lado):
        if i < lado // 2: 
            print(" " * (lado//2-i)+simbolo+ " " * (i * 2)+simbolo*(i > 0))
        else:  
            print(" " * (i-lado//2)+simbolo+ " " * ((lado-i-1)*2)+simbolo * (i<lado-1))
elif figura == "triangulo":
    for i in range(lado):
        if i < lado - 1: 
            print(simbolo + " " * (i*2)+simbolo * (i>0))
        else: 
            print(simbolo*(lado*2-1))

else:
    print("Figura no reconocida. Por favor, introduce cuadrado, rombo o triángulo.")
'''
'''
12. Crea un programa que lea del teclado un número y genere un cuadrado con el patrón
siguiente donde cada elemento está separado por un espacio.

n = int(input("Introduce el tamaño del cuadrado: "))

for i in range(n):
    for j in range(n):
        if i == 0 or i == n-1 or j == 0 or j == n-1:
            print(2, end=" ")
        else:
            print(1, end=" ")
    print()
'''
 


