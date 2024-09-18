#EJERCICIO 1:

#num1=int(input("Introduce primer numero:"))
#num2=int(input("Introduce segundi numero:"))
#
#def es_multiplo(numero1,numero2):
#    if numero1%numero2==0:
#        print(f"{numero1} es multiplo de {numero2}")
#    else:
#        print(f"{numero1} no es multiplo de {numero2}")
#
#es_multiplo(num1,num2)

#EJERCICIO 2 :


#def calcula_media(max,min):
#    
#    temp_media=(max+min)/2
#    print(f"La temperatura media es {temp_media}")
#
#dias=int(input("Introduce un numero de dias validos:"))
#if dias >0:
#    for i in range(dias):
#     maximatemp=float(input("Introduzca temperatura maxima:"))
#     minimatemp=float(input("Introduzca temperatura minima:"))
#     calcula_media(maximatemp,minimatemp)

#EJERCICIO 4:



#def calcularMaxMin():
#    lista_numeros=[56,34,234,1,56,2]
#    lista_numeros.sort()
#    numeromax=(lista_numeros[-1])
#    numeromin=(lista_numeros[0])
#    print(f"El mayor es el {numeromax} y el menor es el {numeromin}")
#
#calcularMaxMin()

#EJERCICIO 5:

lista_abecedario=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","Ñ","O","P","Q","S","R","T","U","V","W","X","Y","Z"]

def cifrar():
    cadenacifrada=""
    espacio=" "
    desplazamiento=int(input("Introduce numero de posiciones que desea desplazar:"))
    cadena=str(input("Introduce texto para cifrar:")).upper()
    x=(len(cadena))
    while x<=100:
         for i in cadena:
             for j in lista_abecedario:
                 if i==j:
                    posicionletra=lista_abecedario.index(i)
                    saltos=posicionletra+desplazamiento
                    if saltos >=27:
                        saltos=saltos-27
                    letra_cifrada=lista_abecedario[saltos]
                    cadenacifrada=cadenacifrada+letra_cifrada
             if i==" ":
                 cadenacifrada=cadenacifrada+espacio

         print(cadenacifrada)
         cadena=str(input("Introduce texto para cifrar:")).upper()
              
cifrar()
    






