'''
1. Write a program in python to display the sum of the series [ 9 + 99 + 999 + 9999 ...]
given a number of terms.
- Input the number or terms :5
- Expected Output: 9 99 999 9999 99999. The sum of the series = 111105

num=(int(input("Introduce el numero del tamaño de la serie: ")))

num1=9
suma=0
for i in range(num+1):
    print(num1,end="+")
    suma+=num1
    num1=num1*10+9
print("La suma de la serie es de.", suma)
'''

'''
2. Write a program to print Floyd's Triangle with two options: binary-based or
decimal-based triangles.

'''
num_base=int(input("Introduce el numero de filas de la piramide: "))
tipo=input("Introduce el tipo de priramide, (Decimal o Binario): ").lower()
num=1
for i in range(1,num_base+1):
    espacios=num_base-i
    num+=1
    
'''
3. Write a program to find the sum of the series [ x - x3 + x5 +... + xn] for a given number
of terms.
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


