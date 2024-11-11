def mayor_numero(lista):
    return max(lista)

def menor_numero(lista):
    return min(lista)

def suma_total(lista):
    return sum(lista)

def media_numeros(lista):
    return sum(lista) / len(lista) if lista else 0

def cambio_elemento(lista, num, posicion):
    # Comprobar si la posición es válida antes de intentar cambiar el elemento
    if 0 <= posicion < len(lista):
        lista[posicion] = num
    else:
        print("Posición fuera de rango.")
    return lista

# Lista de ejemplo para probar
numeros_aleatorios = [10, 20, 30, 40, 50]

opcion = ""
while opcion != "s":
    print("\nMenú de opciones:")
    print("a. Mayor número")
    print("b. Menor número")
    print("c. Suma total")
    print("d. Media de los números")
    print("e. Cambiar un número")
    print("f. Mostrar números")
    print("s. Salir")
    
    opcion = input("Seleccione la acción que desea realizar: ").lower()

    if opcion == "a":
        print(mayor_numero(numeros_aleatorios))
    elif opcion == "b":
        print(menor_numero(numeros_aleatorios))
    elif opcion == "c":
        print(suma_total(numeros_aleatorios))
    elif opcion == "d":
        print(media_numeros(numeros_aleatorios))
    elif opcion == "e":
        num_introducir = int(input("Introduce el número que desea introducir: "))
        posicion = int(input("En qué posición desea introducirlo: "))
        while posicion < 0 or posicion >= len(numeros_aleatorios):  # Verificar rango de la lista
            posicion = int(input(f"Error: Introduzca una posición dentro del rango (0 a {len(numeros_aleatorios)-1}): "))
        print(cambio_elemento(numeros_aleatorios, num_introducir, posicion))
    elif opcion == "f":
        print(numeros_aleatorios)
    elif opcion == "s":
        print("Saliendo...")
    else:
        print("Opción no válida. Intente de nuevo.")
