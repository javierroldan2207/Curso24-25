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
'''

