def decodificar(lista):
    letras_palabra=""
    posicion=0
    for letra in lista:
        letras_palabra = letras_palabra+(letra[0])

    for i in range(len(lista)):
        if lista[i]== letras_palabra:
            posicion=i+1
        
    return posicion

assert(decodificar(["hola","olivia","lomo","adios"])==1)
assert(decodificar(["beber","eliminar","beber","extraer","reloj"])==3)
assert(decodificar(["jaja","ruru","ieud"])==0)

