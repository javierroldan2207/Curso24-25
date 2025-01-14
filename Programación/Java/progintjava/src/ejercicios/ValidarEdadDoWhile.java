package ejercicios;

import java.util.Scanner;

public class ValidarEdadDoWhile {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int edad = 0;
		
		do {
			System.out.println("Introduzaca una edad valida.");
			edad = Integer.valueOf(scanner.nextLine());
			
		}while (edad < 0 || edad > 150);
		
		
		if (edad >= 0 && edad <=18) {
			System.out.println("Menor de edad.");
		}else if (edad >18 && edad <= 65) {
			System.out.println("Usted es mayor de edad.");
		}else {
			System.out.println("Usted es un anciano.");
		}
		scanner.close();
	}

}
