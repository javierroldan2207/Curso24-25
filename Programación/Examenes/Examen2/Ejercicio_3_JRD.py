def numeros_triangulares(num):
    resultado = []
    suma = 0
    for i in range(1,num+1):
        suma+=i
        resultado.append(suma)
        
    return resultado

assert(numeros_triangulares(7)==[1, 3, 6, 10, 15, 21, 28])
assert(numeros_triangulares(5)==[1,3,6,10,15])

numero=int(input("Introduce hasta que numero desea saber los triangulares: "))
print(numeros_triangulares(numero))