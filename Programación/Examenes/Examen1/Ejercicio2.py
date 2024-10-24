apuesta_2=""
victoria_1=0
victoria_2=0
contador=0

while contador<5:
    apuesta_1=input("Introduce que opcion desea escoger. -P(par) o -N(none): ").lower()
    while apuesta_1!="n" and apuesta_1!="p":
        apuesta_1=input("Valor introducido incorrecto. Introduce que opcion desea escoger. -P(par) o -N(none): ").lower()

    num1=int(input("Introduce numero de dedos(0-10): "))
    num2=int(input("Introduce numero de dedos(0-10): "))
    while not 0<=num1<=10:
        print("*Valor del numero 1 incorrectos. Vulva a introducirlo: ")
        num1=int(input("Introduce numero de dedos(0-10): "))
    while not 0<=num2<=10:
        print("*Valor del numero 2 incorrecto. Vuelva a introducirlo: ")
        num2=int(input("Introduce numero de dedos(0-10): "))

    if apuesta_1=="p" or apuesta_1=="n":
        if apuesta_1=="n":
                apuesta_2="p"
        else:
                apuesta_2="n"

    resultado=(num1+num2)%2
    if resultado==0 and apuesta_1=="p":
        print("Gana jugador 1.")
        victoria_1+=1
    else:
        print("Gana jugador 2.")
        victoria_2+=1
    contador+=1


if victoria_1>victoria_2:
    print(f"El jugador 1 a gando la partida. Venció en {victoria_1} ocasiones.")
else:
     print(f"El jugador 2 a gando la partida. Venció en {victoria_2} ocasiones.")
