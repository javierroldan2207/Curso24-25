
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
'''
#Contar caracteres en minusculas.
def contar_minusculas(cadena):
    contador = 0
    for caracter in cadena:
        if caracter.islower():
            contador += 1
    return contador

cadena = "Esto es una cadena de texto"
print("Número de letras minúsculas:", contar_minusculas(cadena))


#Contar caracteres en mayusculas.
def contar_mayusculas(cadena):
    contador = 0
    for caracter in cadena:
        if caracter.isupper(): 
            contador += 1
    return contador

cadena ="Esto es una cadena de texto"
print("Número de letras mayúsculas:", contar_mayusculas(cadena))
'''
