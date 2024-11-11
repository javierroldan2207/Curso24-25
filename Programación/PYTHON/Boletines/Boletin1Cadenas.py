'''
1. Design a function called charactersInString that has a character string and a character
as input parameters and returns how many times that character appears in the string. It
should do it no matter if the string and character are lower case or upper case characters.

def charcters_In_String(cadena,caracter):
    cadena=cadena.lower()
    caracter=caracter.lower()
    contador=0
    for letra in cadena:
        if letra==caracter:
            contador+=1
    return contador

assert charcters_In_String("mi noMbre ies javIer","i")==3
'''

'''
2. Design a function called lowCaseInString that has a string of characters as parameter,
the method should return how many of those characters are lowercase letters

def low_case_in_string(cadena):
    contador=0
    for caracter in cadena:
        if caracter.islower():
            contador+=1

    return contador

assert low_case_in_string("HoLa BuNe")==4
'''

'''
3. Design a function called upperCaseInString that has a string of characters as parameter
and the method should return how many are uppercase letters.

def upper_case_in_string(cadena):
    contador=0
    for letra in cadena:
        if letra.isupper():
            contador+=1
    return contador

assert upper_case_in_string("HolaCaraCOla")==4
'''

'''
4. Design a function called numberInString that receives a string of characters as
parameter and returns how many of them are numbers.

def number_in_string(cadena):
    contador=0
    for letra in cadena:
        if letra.isdigit():
            contador+=1

    return contador

assert number_in_string("h3b4hb354jhb")==5
'''

'''
5. Design a function called palindrome that has a string of characters as input parameter,
and returns True if it is a palindrome or False in other cases. A word is a palindrome if it
can be read the same from left to right or right to left, ignoring whites. For example:
"reconocer", “se es o no se es” or "Sé verlas al revés" To simplify the problem, you can
assume that simple characters are used, that is, without tildes or diresis.

#Inventir cadena
def invertir(cadena):
    invertida=""
    for i in range(1,len(cadena)+1):
        invertida+=cadena[-i]
    return invertida
#Quitar espacios
def quitar_espacios(cadena):
    filtrada=""
    for letra in cadena:
        if letra.isalnum():
            filtrada+=letra
            
    return filtrada.lower()
#Verificar si es palindromo
def es_palindromo(cadena):
    cadena_sin_espacios=quitar_espacios(cadena)
    return cadena_sin_espacios==invertir(cadena_sin_espacios)

assert es_palindromo("se es o no se es")==True
assert not es_palindromo("hello")==True
'''

'''
6. Realizar una función que busque una palabra escondida dentro de un texto. Las letras de
la palabra escondida deben estar en el mismo orden en la cadena que la contiene. Por
ejemplo, si la cadena es “supercalifragilisticoespialidoso” y la palabra que queremos
buscar es “rapido”, entonces si se encontrará y deberá devolver True, en caso contrario
deberá devolver False::

def busca_palabra(texto, palabra):
    indice_palabra =0 

    for letra in texto:
        if letra == palabra[indice_palabra]:
            indice_palabra += 1 
 
    return indice_palabra == len(palabra)

                
assert busca_palabra("supercalifragilisticoespialidoso","rapido")==True
assert busca_palabra("supercalifragilisticoespialidoso","agua")==False
'''

'''
7. Diseñar una función que reciba como parámetro tres cadenas, la primera será una frase
y deberá buscar si existe la palabra que recibe como segundo parámetro y reemplazarla
por la tercera (similar a la función buscar y reemplazar de un editor de texto). No están
permitidas funciones como replace.
'''

'''
9. Diseñar una función que determine la cantidad de vocales diferentes, que tiene una
palabra o frase introducida por teclado. Por ejemplo, la cadena “Abaco”, devolvería 2.

def cant_vocales_diferentes(cadena):
    vocales="aeiouAEIOU"
    vocales_encontradas=[]
    for letra in cadena:
        if letra in vocales:
            letra=letra.lower()
            if letra not in vocales_encontradas:
                vocales_encontradas.append(letra)
    return len(vocales_encontradas)

print(cant_vocales_diferentes("holaaia"))
'''

'''
10. Crea una función similar a la anterior pero que registre la cantidad de letras diferentes
existentes en una cadena de texto independientemente de si es vocal o no.

def letras_diferentes(cadena):
    letras_encontradas=[]
    for letra in cadena:
        if letra.isalpha():
            letra=letra.lower()
            if letra not in letras_encontradas:
                letras_encontradas.append(letra)
    return len(letras_encontradas)

assert letras_diferentes("qeryuo hvn")==9
'''

'''
11. Crear una función que, tomando una cadena de texto como entrada, construya y
devuelva otra cadena formada de la siguiente manera: todas las consonantes estarán al
principio y todas las vocales al final de la misma, eliminando los caracteres que no sean
letras. Por ejemplo, pasándole la cadena "curso de programacion", una posible solución
sería "crsdprgrmcnuoeoaaio’.

def ordenar_cadena(cadena):
    vocales="aeiouAEIOU"
    consonantes="bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    lista_vocales=[]
    lista_consonantes=[]
    for letra in cadena:
        if letra in vocales:
            lista_vocales.append(letra.lower())
        if letra in consonantes:
            lista_consonantes.append(letra.lower())
    return "".join(lista_consonantes+lista_vocales)
#Recordar: .join unir elementos de listas en una cadena.
print(ordenar_cadena("Hola buenas tardes a todos"))
'''

'''
12. Escribir una función que devuelva el número de palabras que hay en una cadena que
recibe como parámetro. Ten en cuenta que entre dos palabras puede haber más de un
blanco. También al principio y al final de la frase puede haber blancos redundantes. Por
ejemplo:
a. “He estudiado mucho”, debe devolver 3.
b. “Posiblemente”, debe devolver 1.

def contar_palabras(cadena):
    contador=0  
    en_palabra=False 
    for letra in cadena:
        if letra != " " and not en_palabra:
            contador+=1
            en_palabra=True  
        elif letra==" ":
            en_palabra=False
    
    return contador

assert contar_palabras("He estudiado mucho")==3 
assert contar_palabras("Posiblemente")==1       
assert contar_palabras("  Esto es   un  ejemplo  ")==4
'''


