def contar_caracter(cadena, caracter):
    contador = 0
    for letra in cadena:
        if letra == caracter:
            contador += 1
    return contador

cadena = "Avada Kedabra"
caracter = "a"
print(contar_caracter(cadena, caracter))  
