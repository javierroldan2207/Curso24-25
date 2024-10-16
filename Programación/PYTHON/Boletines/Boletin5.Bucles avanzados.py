'''
1. Write a program in python to display the sum of the series [ 9 + 99 + 999 + 9999 ...]
given a number of terms.
- Input the number or terms :5
- Expected Output: 9 99 999 9999 99999. The sum of the series = 111105

num=(int(input("Introduce el numero del tamaño de la serie: ")))

num1=9
suma=0
for i in range(num+1):
    print(num1,end="+")
    suma+=num1
    num1=num1*10+9
print("La suma de la serie es de.", suma)
'''
'''
2. Write a program to print Floyd's Triangle with two options: binary-based or
decimal-based triangles.

'''
'''
3. Write a program to find the sum of the series [ x - x3 + x5 +... + xn] for a given number
of terms.
'''




