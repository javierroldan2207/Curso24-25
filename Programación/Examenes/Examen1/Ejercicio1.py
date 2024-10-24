precio_entrada=0
descuento=0
menu='''
PISTA PATINAJE JACARANDÁ
Pulse 1 para comprar entradas.
Escriba la palabra "Fin" para terminar.
'''
print(menu)
opcion=(input("Introduzca la accion que desea realizar:")).lower()
while opcion!= "fin":
    dia=(input("¿Que dia desea visitarnos?: ")).lower()

    while dia != "lunes" and dia != "martes" and dia != "miercoles" and dia != "jueves" and dia != "viernes" and dia != "sabado" and dia != "domingo":
        dia=(input("Dia introducido incorrecto. Vuelva a introducirlo: ")).lower()

    num_entrada=int(input("¿Cuantas entradas desea comprar?(Maximo 50): "))

    while num_entrada<=0 or num_entrada>50:
        num_entrada=int(input("vALOR INTRODUCIDO INCORRECTO. ¿Cuantas entradas desea comprar?(Maximo 50): "))

    if num_entrada>=10:
        if  dia=="lunes" or dia=="martes" or dia=="miercoles" or dia=="jueves":
            precio_entrada=7
            total=precio_entrada*num_entrada 
            descuento=total*35/100
            precio_final=total-descuento
        elif dia=="viernes" or dia=="sabado":
            precio_entrada=10
            total=precio_entrada*num_entrada 
            descuento=total*35/100
            precio_final=total-descuento
    elif dia=="lunes" or dia=="martes" or dia=="miercoles" or dia=="jueves":
        if num_entrada==2:
            precio_entrada=7
            total=precio_entrada*num_entrada 
            descuento=total*15/100
            precio_final=total-descuento
        else:
            precio_entrada=7
            total=precio_entrada*num_entrada 
    elif dia=="viernes" or dia=="sabado":
        if num_entrada==2:
            precio_entrada=10
            total=precio_entrada*num_entrada 
            descuento=total*15/100
            precio_final=total-descuento
        else:
            precio_entrada=10
    else:
        precio_entrada=10    
        total=precio_entrada*num_entrada    
    print(menu)
    opcion=(input("Introduzca la accion que desea realizar:")).lower()
print(f"El precio total de las {num_entrada} entradas es de {precio_final}€.")
print("Gracias por su visita.")
