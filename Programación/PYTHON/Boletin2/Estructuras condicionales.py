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
if num%2==0:
    print("%s es multiplo de 2."%(num))
elif num%3==0:
    print("%s es multiplo de 3."%(num))
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

'''
....
