'''
1. Diseña una función llamada `caracteresEnCadena` que tenga como parámetros de entrada una cadena de caracteres y un carácter, 
y que devuelva cuántas veces aparece ese carácter en la cadena. Debe contar independientemente de si la cadena y el carácter están en minúsculas o mayúsculas.

def caracteresEnCadena(cadena, caracter):
    cadena = cadena.lower()
    caracter = caracter.lower()
    contador = 0
    for i in cadena:
        if i == caracter:
            contador += 1
    return contador

cadena = input("Introduce una cadena de texto: ")
caracter = input("Introduce el carácter a buscar: ")
print("El carácter aparece", caracteresEnCadena(cadena, caracter), "veces en la cadena.")
'''

'''
2. Diseña una función llamada minusculasEnCadena que tenga como parámetro una cadena de caracteres. 
El método debe devolver cuántos de esos caracteres son letras minúsculas.

def minusculasEnCadena(cadena):
    contador = 0
    for caracter in cadena:
        if caracter.islower():  
            contador += 1
    return contador


cadena = input("Introduce una cadena de texto: ")
print("El número de letras minúsculas es:", minusculasEnCadena(cadena))
'''

'''
3. Diseña una función llamada `mayusculasEnCadena` que tenga como parámetro una cadena de caracteres, 
y el método debe devolver cuántos de esos caracteres son letras mayúsculas.

def mayusculasEncadena(cadena):
    contador = 0
    for caracter in cadena:
        if caracter.islower():
            contador += 1 
    return contador

cadena=input("Introduce una cadena de texto: ")
print("El numero de letras mayusculas es: ",mayusculasEncadena(cadena))
'''

'''
4. Diseña una función llamada `numerosEnCadena` que reciba como parámetro una cadena de caracteres y 
devuelva cuántos de esos caracteres son números.

def numerosEnCadena(cadena):
    contador = 0
    for caracter in cadena:
        if caracter.isdigit():  
            contador += 1
    return contador

cadena = input("Introduce una cadena de texto: ")
print("El número de caracteres numéricos es:", numerosEnCadena(cadena))
'''
'''
6. Realizar una función que busque una palabra escondida dentro de un texto. Las letras de
la palabra escondida deben estar en el mismo orden en la cadena que la contiene. Por
ejemplo, si la cadena es “supercalifragilisticoespialidoso” y la palabra que queremos
buscar es “rapido”, entonces si se encontrará y deberá devolver True, en caso contrario
deberá devolver False::
supercalifragilisticoespialidoso⇒ rapido: True
sfrsagilisticoesidoso⇒ rapido: False
'''
cadena="supercalifragilisticoespialidoso"
buscar=input("Introduce la palabra a buscar: ")


 
