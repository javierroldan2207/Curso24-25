MENU="""
Selecione una opcion:
    1.Ingresar efectivo.
    2.Retirar efectivo
    3.Consultar saldo.
    4.Salir
"""
print(MENU)
eleccion=int(input("¿Que acción desea realizar?"))
saldo=0

while eleccion!=4:
    if eleccion==1:
        dinero_ingresar=int(input("¿Cuanto dinero desea ingresar? "))
        saldo+=dinero_ingresar

    elif eleccion==2:
        dinero_retirar=int(input("¿Cuanto dinero desea retirar? "))
        if dinero_retirar<saldo:
            saldo-=dinero_retirar
        else:
            print("No tienes suficiente saldo. ")
    elif eleccion==3:
        print(saldo)
    
 
    print(MENU)
    eleccion=int(input("¿Que acción desea realizar?"))
