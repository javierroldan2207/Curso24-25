
def es_circular(lista):
    primero = str(lista[0])
    segundo = str (lista[-1])
    resultado = False
    if primero[0] == segundo[-1]:
        resultado = True
    return resultado
   
assert(es_circular([123,333,231])==True)
assert(es_circular([21,43,453,652])==True)
assert(es_circular([32,123,123,435])==False)


def es_encadenada(lista):
    lista_numeros=[]
    resultado = False
    contador=0
    for i in range(len(lista)):
        numero=str(lista[i])
        lista_numeros.append(numero)
    
    #Bloqueado en la comparacion del ultimo numero con el primero del siguiente.

    for num in lista_numeros:
        

    
       
    return resultado

print(es_encadenada([123,332,231]))