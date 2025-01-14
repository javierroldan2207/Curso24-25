package ejercicios;

import java.util.Scanner;

public class Ej1 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduce el número de filas y columnas: ");
        int n = scanner.nextInt();
        
        if (n <= 0) {
            System.out.println("El número debe ser mayor que 0.");
        }
        
        char[][] matriz = new char[n][n];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                matriz[i][j] = 'O';
            }
        }
        

        for (int i = 0; i < n; i++) {
            matriz[i][i] = 'X'; 
            matriz[i][n - i -1 ] = 'X'; 
        }
        
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print(matriz[i][j]);
            }
            System.out.println();
        }
        
        scanner.close();
    }
}


