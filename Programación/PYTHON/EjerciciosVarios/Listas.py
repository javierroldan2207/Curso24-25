#Lista 100 primeros numeros.
'''
numeros = []
for i in range (1,101):
    numeros.append(i)
print(numeros)
'''
#Valida fecha.
def es_fecha_valida(dia, mes, año):
    dias_por_mes = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    if (año % 4 == 0 and (año % 100 != 0 or año % 400 == 0)):           
        dias_por_mes[1] = 29

    return 1 <= mes <= 12 and 1 <= dia <= dias_por_mes[mes - 1]

assert(es_fecha_valida(22,7,2001))==True
assert(es_fecha_valida(34,5,1926))==False
