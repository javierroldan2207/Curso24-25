def palindromo(cadena):
    for caracter in cadena:
        cadena_min=""
        if caracter!=" " or caracter!="." or caracter!="!" or caracter!=",":
            cadena_min=cadena.lower()
    return cadena_min== cadena[::-1]

cadena="anaantootna ana"
print(palindromo(cadena))
