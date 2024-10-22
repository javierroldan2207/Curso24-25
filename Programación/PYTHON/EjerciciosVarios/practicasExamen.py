'''
Calificación de un examen:
Escribe un programa que tome una calificación de un examen (entre 0 y 100) e imprima la letra correspondiente:

A: 90-100
B: 80-89
C: 70-79
D: 60-69
F: 0-59

nota=int(input("Introduce la nota del examen de 0 al 100: "))
calificacion=""
while nota<0 or nota>100:
    nota=int(input("Nota introducida erronea: Vuelva a introducir nota de 0 al 100: "))
if nota>=0 or nota<=59:
    calificacion="F"
elif nota>=60 or nota<=69:
    calificacion="D"
elif nota>=70 or nota<79:
    calificacion="C"
elif nota>=80 or nota<=89:
    calificacion="B"
else:
    calificacion="A"
print(f"La calificacion del examen corresponde a la letra, {calificacion}")
'''

'''
Adivinar un número:
Programa un juego en el que el usuario tiene que adivinar un número secreto entre 1 y 100. El programa debe darle pistas 
indicando si el número ingresado es mayor o menor que el número secreto. El juego termina cuando el usuario acierta.

numero_secreto=77
num=int(input("Introduce numero para adivinar del 1 al 100: "))
pista=""
while num<1 or num>100:
    num=int(input("Numero introducido incorrecto, vuelve a introducir otro numero: "))
while num!=numero_secreto:
    if num<numero_secreto:
        pista="El numero secreto es mayor al que has introducido, vuelve a probar con otro numero: "
    else:
        pista="El numero secreto es menor al que has introducido, vuelve a probar con otro numero: "
    num=int(input(pista))
print("ENHORABUENA, acertaste el numero secreto.")

'''
'''
Escribe un programa que imprima todos los números del 1 al 100 que sean divisibles tanto por 3 como por 5.

for i in range(1,101):
    if i%3==0 and i%5==0:
        print(i)
'''
'''
Crea un programa que muestre un menu donde puedas seleccionar el tipo de cuenta matematica que desea realizar e introduzaca los datos para
realizar la cuenta. Valida los datos.

menu='''
1.Sumar
2.Restar
3.Multiplicar
4.Dividir
5.Salir
'''
print(menu)
opcion=int(input("Que operación desea realizar: "))
while opcion!=5:
    if opcion==1:
        print("Has elegido la suma.")
        num1=float(input("Introduzca primer numero para sumar: "))
        num2=float(input("Introduzca segundo numero: "))
        resultado=num1+num2
        print(resultado)
    elif opcion==2:
        print("Has elegido la resta: ")
        num1=float(input("Introduce primer numero para restar: "))
        num2=float(input("Introduce segundo numero: "))
        resultado=num1-num2
        print(resultado)
    elif opcion==3:
        print("Has elegido la multiplicación.")
        num1=float(input("Introduce primer numero para multiplicar: "))
        num2=float(input("Introduce segundo numero: "))
        resultado=num1*num2
        print(resultado)
    else:
        print("Has elegido la division.")
        num1=float(input("Introduce primer numero para dividir: "))
        num2=float(input("Introduce segundo numero: "))
        if num1>num2:
            resultado=num1/num2
        else:
            resultado=num2/num1
        print(resultado)
    print(menu)
    opcion=int(input("Desea realizar alguna otra operación: "))
print("Fin de programa.")
'''
