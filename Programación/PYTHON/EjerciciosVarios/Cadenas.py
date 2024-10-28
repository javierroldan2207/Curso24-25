
'''def contar_caracter(cadena, caracter):
    contador = 0
    for letra in cadena:
        if letra == caracter:
            contador += 1
    return contador

cadena = "Avada Kedabra"
caracter = "a"
print(contar_caracter(cadena, caracter))  



cadena="Hola mundo"
#Print 1ª posición:
print(cadena[0])
#Print ultima posición:
print(cadena[len(cadena)-1])
#Print 3ª posición:
print(cadena[3])
'''
'''
#Print cadena al revés.
cadena = "Hola, mundo!"
indice = len(cadena) - 1

while indice >= 0:
    print(cadena[indice])
    indice -= 1

#Print cadena de texto.
cadena = "Hola, mundo!"
for caracter in cadena:
    print(caracter)
'''


def lowCaseInString(letra,cadena):
    contador=0
    for letra in cadena:
        if letra.lower()==cadena:
            contador+=1
    return contador

letra=" "
cadena="Esto es una cadena de texto."
print(lowCaseInString(letra,cadena))