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
num_ingreso=0
num_retirada=0
historico=""

while eleccion!=4:
    if eleccion==1:
        dinero_ingresar=int(input("¿Cuanto dinero desea ingresar? "))
        while dinero_ingresar<0:
           dinero_ingresar=int(input("Error: cantidad introducida erronea, vuelva a introducir: "))
        saldo+=dinero_ingresar
        num_ingreso+=1
        historico+=f"Operacion {num_ingreso+num_retirada}: Se a realizado un ingreso de {dinero_ingresar} obteniendo un total de {saldo}./n"

    elif eleccion==2:
        dinero_retirar=int(input("¿Cuanto dinero desea retirar? "))
        while dinero_retirar>saldo or dinero_retirar<0:
            dinero_retirar=int(input("Error: cantidad introducida erronea, vuelva a introducir: "))
        num_retirada=+1
        saldo-=dinero_retirar
        historico+=f"Operacion {num_ingreso+num_retirada}: Se a realizado un ingreso de {num_retirada} obteniendo un total de {saldo}./n"
    
    elif eleccion==3:
        print(saldo)
    
 
    print(MENU)
    eleccion=int(input("¿Que acción desea realizar?"))

print(f"Se han realizado {num_ingreso} ingresos y {num_retirada} retiradas de efectivo. ")
print(historico)