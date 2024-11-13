def cifrar_caracter(caracter, desplazamiento):
    cadena = "abcdefghijklmnñopqrstuvwxyz"  
    n_caracter = cadena.index(caracter)
    n_cifrado = (n_caracter + desplazamiento) % len(cadena) 
    return cadena[n_cifrado]

assert (cifrar_caracter("d",3) == "g")


def cifrar_palabra(palabra,desplazamiento):
    palabra_cifrada = ""
    for letra in palabra:
        if letra in "abcdefghijklmnñopqrstuvwxyz":
            palabra_cifrada += cifrar_caracter(letra,desplazamiento)
        
    return palabra_cifrada

assert (cifrar_palabra("casado", 3) == "fdvdgr")

def comprovacion_cifrado(palabra,cifrado,):
    resultado = "No son equivalentes"
    for desplazamiento in range(0,27):
        palabra_cifrada = cifrar_palabra(palabra,desplazamiento)
        if palabra_cifrada == cifrado:
            resultado = f"Son equivalentes y el cifrado es {desplazamiento}."
              
    return resultado

print(comprovacion_cifrado("casado","fdvdgr"))

