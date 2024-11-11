abecedario="abcdefghijklmnñopqrstuvwxyz"
caracter="e"
desplazamiento=2

def cifrado_un_caracter(caracter,abecedario,desplazamiento):
    for letra in abecedario:
        if letra == caracter:
            abecedario[+desplazamiento]
    return caracter

print(cifrado_un_caracter(caracter,abecedario,desplazamiento))