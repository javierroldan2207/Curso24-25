'''
#21 de octubre 
hombre=0
mujer=0
contador=0
java=0
python=0
menu=
1.Introducir datos.
2.Salir

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
    
    menu=
        1.Introducir datos.
        2.Salir
        
    print(menu)
    menu=int(input("Seleccione acción: "))
    #Medias,cuentas y prints.
media_edad=cont_edad/contador
print(f"El {python/contador}% de empleados utiliza python, de los que {hombre} son hombres y {mujer} son mujeres y su edad media es de {media_edad}.")
print(f"El {java/contador}% de empleados utiliza python, de los que {hombre} son hombres y {mujer} son mujeres y su edad media es de {media_edad}.")
'''

# Corrección en casa.
total_empleados = 0
cont_python = 0
cont_java = 0
edad_total_python = 0
edad_total_java = 0
cont_hombres_python = 0
cont_mujeres_python = 0
cont_hombres_java = 0
cont_mujeres_java = 0

tamaño_empresa = int(input("Ingrese el tamaño de la empresa (número de empleados): "))

while total_empleados < tamaño_empresa:
    edad = int(input("Ingrese la edad del empleado (18-65): "))
    while edad < 18 or edad > 65:
        print("Edad inválida. Debe estar entre 18 y 65.")
        edad = int(input("Ingrese la edad del empleado (18-65): "))

    sexo = input("Ingrese el sexo del empleado (h para hombre, m para mujer): ").lower()
    while sexo != 'h' and sexo != 'm':
        print("Sexo inválido. Ingrese 'h' para hombre o 'm' para mujer.")
        sexo = input("Ingrese el sexo del empleado (h para hombre, m para mujer): ").lower()

    lenguaje = input("Ingrese el lenguaje de programación habitual (java o python): ").lower()
    while lenguaje != 'java' and lenguaje != 'python':
        print("Lenguaje inválido. Ingrese 'java' o 'python'.")
        lenguaje = input("Ingrese el lenguaje de programación habitual (java o python): ").lower()

    total_empleados += 1
    if lenguaje == 'python':
        cont_python += 1
        edad_total_python += edad
        if sexo == 'h':
            cont_hombres_python += 1
        else:
            cont_mujeres_python += 1
    else:
        cont_java += 1
        edad_total_java += edad
        if sexo == 'h':
            cont_hombres_java += 1
        else:
            cont_mujeres_java += 1

porcentaje_python = (cont_python / total_empleados) * 100
porcentaje_java = (cont_java / total_empleados) * 100

if cont_python > 0:
    edad_media_python = edad_total_python / cont_python
else:
    edad_media_python = 0

if cont_java > 0:
    edad_media_java = edad_total_java / cont_java
else:
    edad_media_java = 0

print(f"\n{porcentaje_python}% de empleados utilizan Python.")
print(f"De los que, {cont_hombres_python} son hombres y {cont_mujeres_python} son mujeres.")
print(f"La edad media es de {edad_media_python} años.")

print(f"\n{porcentaje_java}% de empleados utilizan Java.")
print(f"De los que, {cont_hombres_java} son hombres y {cont_mujeres_java} son mujeres.")
print(f"La edad media es de {edad_media_java} años.")


