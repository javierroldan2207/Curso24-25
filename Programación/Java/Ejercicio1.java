package ejercicios;

import java.util.Scanner;

public class Ejercicio1 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduce una palabra: ");
        String palabra = scanner.nextLine();

        System.out.print("Introduce la bandera: ");
        String bandera = scanner.nextLine();

        imprimirLetras(palabra, bandera);

        scanner.close();
    }

    public static String imprimirLetras(String cadena, String bandera) {
        if (!bandera.equals("par") && !bandera.equals("impar")) {
            System.out.println("La bandera debe ser 'par' o 'impar'.");
        }
        
        int inicio;
        if (bandera.equals("par")) {
            inicio = 0;
        } else {
            inicio = 1;
        }
        
        for (int i = inicio; i < cadena.length(); i += 2) {
            System.out.print(cadena.charAt(i));
        }
        return cadena;

    }
}

