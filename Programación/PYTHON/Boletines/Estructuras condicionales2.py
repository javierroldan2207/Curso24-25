'''
1. Escribe un programa que reciba las coordenadas de un punto respecto a los ejes XY y
determine el cuadrante en el que se encuentra el punto. Si se encuentra sobre un eje
debe indicar cuál.

x=float(input("Introduce la coordenada X: "))
y=float(input("Introduce la coordenada Y: "))

if x==0 and y==0:
    print("El punto esta en el inicio.")
elif x==0:
    print("El punto esta sobre el eje Y.")
elif y==0:
    print("El punto se encuentra sobre el eje X.")
elif x>0 and y>0:
    print("El punto se encuentra en el cuadrante 1.")
elif x<0 and y>0:
    print("El punto se encuentra en el cuadrante 2.")
elif x<0 and y<0:
    print("El punto se encuentra en el cuadrante 3.")
elif x>0 and y<0:
    print("El punto se encuentra en el cuadrante 4.")
else:
    print("Valores introducidos incorrectos.")
'''

'''
2. Escribe una aplicación que pida la fecha actual (día y mes) y el hemisferio (Norte/Sur) e
indique en qué estación se encuentra:
a. Hemisferio Norte: Otoño (desde 23 Septiembre), Invierno (desde 21
diciembre), Primavera (desde 21 Marzo), Verano (desde 21 Junio).
b. Hemisferio Sur: Primavera (desde 23 Septiembre), Verano (desde 21
diciembre), Otoño (desde 21 Marzo), Invierno (desde 21 Junio).

mes=int(input("Introduce numero del mes: "))
dia=int(input("Introduce el dia del mes: "))
hemis=str(input("Introduce en que hemisferio se encuentra(Norte/Sur): ")).lower()

if hemis== "norte":
    if (mes==9 and dia>=23) or (mes==10) or (mes==11):
        print("Otoño")
    elif (mes==12 and dia >=21) or (mes==1) or (mes==2):
        print("Invierno")
    elif (mes==3 and dia>=21) or (mes==4) or (mes==5):
        print("Primavera")
    elif (mes==6 and dia>=21) or (mes==7) or (mes==8):
        print("Verano")
    else:
        print("Fecha no válida") 
    
elif hemis== "sur":
    if (mes==9 and dia>=23) or (mes==10) or (mes==11):
       print("Primavera") 
    elif (mes==12 and dia>=21) or (mes==1) or (mes==2):
        print("Verano")
    elif (mes==3 and dia>=21) or (mes==4) or (mes==5):
        print("Otoño")
    elif (mes==6 and dia>=21) or (mes==7) or (mes==8):
        print("Invierno")
    else:
        print("Fecha no válida.")
else:
    print("Valore introducidos no válidos.")
'''

'''
3. Crea un programa que dada una fecha en formato (dd-mm-yyyy), nos devuelva cuántos
días han transcurrido desde el 1 de enero de ese mismo año (considera que puede
tratarse de un año bisiesto).
'''

'''
4. Un hotel ofrece dos tipos de habitaciones: estudios y apartamentos.Crea un programa
que calcule el precio del total de la estancia en el hotel para estudios y apartamentos
dependiendo del mes y tiempo de estancia teniendo en cuenta los siguientes precios y
los descuentos aplicables:BOLETIN 2.

tipo=str(input("¿Que tipo de alojamiento desea?(Estudio/Apartamento): ")).lower()
dias=int(input("¿Cuantos dias desea alojarse?: "))
mes=str(input("¿En que mes desea alojarse?")).lower()

if mes=="mayo" or mes=="octubre":
        if tipo=="estudio":
            precio_noche=50
        elif tipo=="apartamento":
            precio_noche=76
elif mes=="junio" or mes=="septiembre":
    if mes=="junio":
        precio_noche=75.20
    elif mes=="septiembre":
        precio_noche=63.70
elif mes=="julio" or mes=="agosto":
    if mes=="julio":
        precio_noche=76
    elif mes=="agosto":
        precio_noche=80
else:
    if tipo=="estudio":
        precio_noche=40
    elif tipo=="apartamento":
        precio_noche=55
precio_total=precio_noche*dias

if tipo=="estudio" and (mes=="mayo" or mes=="octubre"):
    if dias>20:
        descuento=0.25
        precio_total-=precio_total*descuento
    if dias>10:
        descuento=0.05
        precio_total-=precio_total*descuento
    
elif tipo=="estudio" and (mes=="junio" or mes=="septiembre"):
    if dias>12:
        descuento=0.20
        precio_total-=precio_total*descuento
elif tipo=="apartamento" and dias>10:
    descuento=0.10
    precio_total-=precio_total*descuento

print("El precio total de la estancia es: %s"%(precio_total))
'''

'''
5. Crea un programa que reciba las coordenadas de un rectángulo ({x1, y1} y {x2
, y2})y de un punto (x, y)y determine si el punto se encuentra dentro del rectángulo(True) o
fuera de éste (False). Considera que siempre se cumple x1>x2 y1>y2.

x1 = float(input("Ingresa x1: "))
y1 = float(input("Ingresa y1: "))
x2 = float(input("Ingresa x2: "))
y2 = float(input("Ingresa y2: "))
x = float(input("Ingresa la coordenada x del punto: "))
y = float(input("Ingresa la coordenada y del punto: "))

if x2 <= x <= x1 and y2 <= y <= y1:
    dentro = True
else:
    dentro = False
print("El punto está dentro del rectángulo:", dentro)
'''

'''
6. Elabora otro programa que reciba también un rectángulo y un punto y devuelva True
cuando el punto se encuentre en el borde del rectángulo y False en caso contrario.

x1 = float(input("Ingresa x1: "))
y1 = float(input("Ingresa y1: "))
x2 = float(input("Ingresa x2: "))
y2 = float(input("Ingresa y2: "))
x = float(input("Ingresa la coordenada x del punto: "))
y = float(input("Ingresa la coordenada y del punto: "))

if (x == x1 or x == x2) and (y2 <= y <= y1):
    borde = True
elif (y == y1 or y == y2) and (x2 <= x <= x1):
    borde = True
else:
    borde = False

print("El punto está en el borde del rectángulo:",borde)
'''
'''
7. Crea una aplicación que reciba el día y mes de nacimiento de una persona y nos
diga cuál es su signo del zodiaco sabiendo que se distribuyen a lo largo del año de
la siguiente forma:

dia=int(input("Introduce tu dia de nacimiento: "))
mes=str(input("Introduce tu mes de nacimiento: ")).lower()

if (mes=="marzo" and dia>=21) or (mes=="abril" and dia<=19):
    signo="Aries"
elif (mes=="abril" and dia>=20) or (mes=="abril" and dia<=19): 
    signo="Tauro"
elif (mes=="mayo" and dia>=21) or (mes=="junio" and dia<=21): 
    signo="Gemenis"
elif (mes=="junio" and dia>=22) or (mes=="julio" and dia<=22): 
    signo="Cancer"
elif (mes=="julio" and dia>=23) or (mes=="agosto" and dia<=22): 
    signo="Leo"
elif (mes=="agosto" and dia>=23) or (mes=="septiembre" and dia<=22): 
    signo="Virgo"
elif (mes=="septiembre" and dia>=23) or (mes=="octubre" and dia<=23): 
    signo="Libra"
elif (mes=="octubre" and dia>=24) or (mes=="nobiembre" and dia<=21): 
    signo="Escorpio"
elif (mes=="diciembre" and dia>=23) or (mes=="enero" and dia<=22): 
    signo="Capricornio"
elif (mes=="enero" and dia>=20) or (mes=="febrero" and dia<=18): 
    signo="Acuario"
elif (mes=="febrero" and dia>=19) or (mes=="marzo" and dia<=22): 
    signo="Piscis"

print("Tu signo del zodiaco es %s."%(signo))
'''

