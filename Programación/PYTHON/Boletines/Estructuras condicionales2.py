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
'''
8. Existen cuatro grupos sanguíneos en seres humanos, que se multiplican por dos si
consideramos el factor Rh. Unos grupos son compatibles con otros atendiendo al
criterio que podemos ver en las siguientes tablas.
Elabora un programa que reciba dos grupos sanguíneos y devuelva si son
compatibles y en qué sentido. Por ejemplo, si se recibe A y B debería decir que no
son compatibles. Por el contrario, si se recibe 0 y AB debería indicar que son
compatibles y AB es receptor de 0.

donante = input("Ingrese el grupo sanguíneo del donante (ej. A+, B-, 0+, AB-): ")
receptor = input("Ingrese el grupo sanguíneo del receptor (ej. A+, B-, 0+, AB-): ")
compatible = False
receptor_de = ""
if donante == 'A+':
    if receptor == 'A+' or receptor == 'A-' or receptor == 'AB+' or receptor == 'AB-':
        compatible = True
        receptor_de = receptor
elif donante == 'A-':
    if receptor == 'A-' or receptor == 'AB-':
        compatible = True
        receptor_de = receptor
elif donante == 'B+':
    if receptor == 'B+' or receptor == 'B-' or receptor == 'AB+' or receptor == 'AB-':
        compatible = True
        receptor_de = receptor
elif donante == 'B-':
    if receptor == 'B-' or receptor == 'AB-':
        compatible = True
        receptor_de = receptor
elif donante == 'AB+':
    if receptor == 'AB+':
        compatible = True
        receptor_de = receptor
elif donante == 'AB-':
    if receptor == 'AB-' or receptor == 'A-' or receptor == 'B-':
        compatible = True
        receptor_de = receptor
elif donante == '0+':
    if receptor == 'A+' or receptor == 'B+' or receptor == 'AB+' or receptor == '0+':
        compatible = True
        receptor_de = receptor
elif donante == '0-':
    if receptor == 'A-' or receptor == 'B-' or receptor == 'AB-' or receptor == '0-':
        compatible = True
        receptor_de = receptor
if compatible:
    print(f"{donante} es compatible con {receptor}. {receptor} es receptor de {donante}.")
else:
    print(f"{donante} no es compatible con {receptor}.")
'''
'''
9. En el gimnasio Jacafitness tienen el siguiente horario: Los Lunes, Miércoles y
Jueves imparten Spinning de 12 a 14, Yoga de 16 a 20 y Body combat de 20 a
22; Los Martes y Jueves La sesión de Spinning y Yoga se intercambian. Elabora
un programa que dé la bienvenida al gimnasio y tras preguntar por la hora y el
día de la semana te indique la actividad que puedes realizar.

print("¡Bienvenido al gimnasio Jacafitness!")
dia = input("Ingrese el día de la semana (Lunes, Martes, Miércoles, Jueves, Viernes, Sábado, Domingo): ")
hora = int(input("Ingrese la hora (en formato 24h, de 0 a 23): "))
actividad = ""
if dia == "Lunes" or dia == "Miércoles" or dia == "Jueves":
    if hora >= 12 and hora < 14:
        actividad = "Spinning"
    elif hora >= 16 and hora < 20:
        actividad = "Yoga"
    elif hora >= 20 and hora < 22:
        actividad = "Body combat"
elif dia == "Martes" or dia == "Jueves":
    if hora >= 12 and hora < 14:
        actividad = "Yoga"
    elif hora >= 16 and hora < 20:
        actividad = "Spinning"
    elif hora >= 20 and hora < 22:
        actividad = "Body combat"
if dia == "Viernes" or dia == "Sábado" or dia == "Domingo":
    actividad = "No hay actividades programadas."
if actividad:
    print("Puedes realizar la actividad: %s." % actividad)
else:
    print("No hay actividades programadas en ese horario.")
'''

'''
10. En el gimnasio Jacatfitness para el que ya hemos trabajado nos piden que
realicemos un programa para determinar si deberías acudir al médico para que te
haga una revisión, para ello debemos hacer las siguientes preguntas:
● ¿Peso?
● ¿Edad?
● ¿Tipo de vida? (Sedentaria/Activa/Muy activa)
Las recomendaciones para ir al médico son:
● Si tienes más de 70 años y lleva una vida Sedentaria
● Si pesa más de 100 kg sea cual sea la edad.
● Si pesa más de 74,4 kg y tiene más de 50 años
En cualquier otro caso se mostrará “No es urgente que acuda al médico si no tiene
problemas de salud”

print("¡Bienvenido al gimnasio Jacafitness!")
peso = float(input("Ingrese su peso en kg: "))
edad = int(input("Ingrese su edad: "))
tipo_vida = input("Ingrese su tipo de vida (Sedentaria/Activa/Muy activa): ")
deberia_ir = False
if edad > 70 and tipo_vida == "Sedentaria":
    deberia_ir = True
elif peso > 100:
    deberia_ir = True
elif peso > 74.4 and edad > 50:
    deberia_ir = True
if deberia_ir:
    print("Deberías acudir al médico para que te haga una revisión.")
else:
    print("No es urgente que acuda al médico si no tiene problemas de salud.")

'''

