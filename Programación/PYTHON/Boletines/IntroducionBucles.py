'''
1. Escribe un programa que reciba dos números por teclado y que después muestre
por pantalla los números que hay entre ellos. Por ejemplo, si se recibe 5 y 3 se
mostrará: 3, 4, 5. Utiliza bucle for y while [for/while].

num1=int(input("Introduce primer numero: "))
num2=int(input("Introduce segundo numero: "))
if num1>num2:
    for i in range(num2,num1+1):
        print(i)
else:
    for i in range(num1,num2+1):
        print(i)
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