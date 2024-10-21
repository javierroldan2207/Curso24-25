#21 de octubre 
hombre=0
mujer=0
contador=0
java=0
python=0
menu='''
1.Introducir datos.
2.Salir
'''
print(menu)
menu=int(input("Seleccione acción: "))
while menu!=2:
    #Edad.
    edad=int(input("Introduzca su edad: "))
    while edad<=18 or edad>=65:
        edad=int(input("Edad introducida incorrecta: Introduzca su edad de nuevo: "))
    cont_edad=edad+edad
    #Sexo.
    sexo=(input("Introduzca su genero,(Hombre=H, Mujer=M): ")).lower()
    while sexo!="h" and sexo!="m":
        sexo=input("Sexo introducido no válido: Introduzca su genero de nuevo,(Hombre=H, Mujer=M): ").lower()
    if sexo=="h":
        hombre+=1
    else:
        mujer+=1
    #Lenguaje
    lenguaje=input("Introduce lenguaje de programación que utilice, (python o java): ").lower()
    while lenguaje!="python" and lenguaje!="java":
            lenguaje=input("Lemguaje introducido incorrecto: Introduce lenguaje de programación que utilice, (python o java): ").lower()
    if lenguaje=="java":
        java+=1
    else:
        python+=1
     #Contador de empleados.   
    contador+=1
    
    menu='''
        1.Introducir datos.
        2.Salir
        '''
    print(menu)
    menu=int(input("Seleccione acción: "))
    #Medias,cuentas y prints.
media_edad=cont_edad/contador
print(f"El {python/contador}% de empleados utiliza python, de los que {hombre} son hombres y {mujer} son mujeres y su edad media es de {media_edad}.")
print(f"El {java/contador}% de empleados utiliza python, de los que {hombre} son hombres y {mujer} son mujeres y su edad media es de {media_edad}.")
