'''
#CUENTA REGRESIVA
for i in range(10,-1,-1):
    print(i)
'''
'''
#NUMEROS PARES 1-50
for i in range(0,51,2):
    print(i)
'''
'''
#TABLAS DE MULTIPLICAR
numero=int(input("Introduce el numero del que desea saber la tabla de multiplicar:"))
for i in range(11):
    print(numero," x ",i,"=",numero*i )
'''
'''
#TABLAS SIN MULTIPLICAR
numero=int(input("Introduce numero para mostrar su tabla de multiplicar: "))
resultado=0
for i in range(1,11):
    resultado+=numero
    print(numero,"x",i,"=",resultado)
'''
'''
#TABLAS CON 1 MULTIPLICACION
numero=int(input("Introduce numero para mostrar su tabla de multiplicar: "))
for i in range(numero,numero*10+1,numero):
    print(i)
'''
