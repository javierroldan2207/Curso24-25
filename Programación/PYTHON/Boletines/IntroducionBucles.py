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
    
#WHILE
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
'''

'''
4. Crea un programa que reciba números hasta que se introduzca uno fuera del rango
0 - 10.0000. En ese momento informará de cuántos números se han introducido y la
media de éstos.

num=float(input("Introduce un numero: "))
contador=1
while num>0 and num<10000:
    num=float(input("Introduce sigueiente numero: "))
    contador+=1
    num+=num
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

