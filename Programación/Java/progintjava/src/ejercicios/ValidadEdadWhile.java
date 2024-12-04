package ejercicios;

import java.util.Scanner;

public class ValidadEdadWhile {

		//Con uso de while.
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("Introduzca su edad,(mayor de 0 y menor de 150).");
		int edad = Integer.valueOf(scanner.nextLine());
		
		while (edad < 0 || edad > 150) {
			System.out.println("Edad introducida incorrecta. Vuelva a introducirla.");
			edad = Integer.valueOf(scanner.nextLine());
		}
		
		if (edad > 18) {
			System.out.println("Menor de edad.");
		}else if (edad < 65) {
			System.out.println("Usted es mayor de edad.");
		}else {
			System.out.println("Usted es un anciano.");
		}
		scanner.close();
		
	}
	
}
