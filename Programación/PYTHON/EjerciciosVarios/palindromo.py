'''
def palindromo(cadena):
    for caracter in cadena:
        cadena_min=""
        if caracter!=" " or caracter!="." or caracter!="!" or caracter!=",":
            cadena_min=cadena.lower()
    return cadena_min== cadena[::-1]

cadena="anaanto otnaana"
print(palindromo(cadena))


def palindromo1(cadena):
    invertida=""
    for letra in cadena:
        invertida=letra+invertida
    return invertida


cadena="ana"
print(palindromo1("Hola mi nombre es javier")) 
'''
cadena="jesus"
#Inventir cadena
def invertir(cadena):
    invertida=""
    for i in range(1,len(cadena)+1):
        invertida+=cadena[-i]

#Quitar espacios
def quitar_espacios(cadena):
    filtrada=""
    for letra in cadena:
        if letra.isalnum():
            filtrada+=letra
            
    return filtrada

assert(quitar_espacios("hola, buenos dias")=="holabuenosdias")
assert(quitar_espacios("hola buenos dias")=="holabuenosdias")
#Verificar si es palindromo
def es_palindromo(cadena):
    return cadena==invertir

