opcion1=""
opcion2=""
while opcion1!="lagarto" or opcion1!="tijeras" or opcion1!="piedra" or opcion1!="spock" or opcion1!="papel" or opcion2!="lagarto" or opcion2!="tijeras" or opcion2!="piedra" or opcion2!="spock" or opcion2!="papel":
    opcion1=str(input("Introduce elemento con el que desea jugar: ")).lower()
    opcion2=str(input("Introduce segundo elemento con el que desea jugar: ")).lower()
    while opcion1!="spock" and opcion2!="spock":
        if opcion1=="tijeras":
            if opcion2=="papel":
                print("%s pierde ante %s"%(opcion2,opcion1))
            elif opcion2=="piedra":
                print("%s pierde ante %s"%(opcion1,opcion2))
            elif opcion2=="lagarto":
                print("%s pierde ante %s"%(opcion2,opcion1))
            else:
                print("%s pierde ante %s"%(opcion1,opcion2))
        elif opcion1=="papel":
            if opcion2=="tijeras":
                print("%s pierde ante %s"%(opcion1,opcion2))
            elif opcion2=="piedra:":
                print("%s pierde ante %s"%(opcion2,opcion1))
            elif opcion2=="lagarto":
                print("%s pierde ante %s"%(opcion1,opcion2))
            else:
                print("%s pierde ante %s"%(opcion2,opcion1))
        elif opcion1=="piedra":
            if opcion2=="tijeras":
                print("%s pierde ante %s"%(opcion2,opcion1))
            elif opcion2=="paqpel":
                print("%s pierde ante %s"%(opcion1,opcion2))
            elif opcion2=="lagarto":
                print("%s pierde ante %s"%(opcion2,opcion1))
            else:
                print("%s pierde ante %s"%(opcion1,opcion2))
        elif opcion1=="lagarto":
            if opcion2=="tijeras":
                print("%s pierde ante %s"%(opcion1,opcion2))
            elif opcion2=="papel":
                print("%s pierde ante %s"%(opcion2,opcion1))
            elif opcion2=="piedra":
                print("%s pierde ante %s"%(opcion1,opcion2))
            else:
                print("%s pierde ante %s"%(opcion2,opcion1))
        else:
            if opcion2=="tijeras":
                print("%s pierde ante %s"%(opcion2,opcion1))
            elif opcion2=="papel":
                print("%s pierde ante %s"%(opcion1,opcion2))
            elif opcion2=="piedra":
                print("%s pierde ante %s"%(opcion2,opcion1))
            else:
                print("%s pierde ante %s"%(opcion1,opcion2))
    print("Juego terminado,gracias por jugar.")