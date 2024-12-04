package intro.programacion;

import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {
		System.out.println("Hola mundo");
		System.out.println("Ctrl+espacio");
		Scanner scanner = new Scanner(System.in);
		System.out.println("Dime tu nombre");
		String nombre = scanner.nextLine();
		System.out.println("Hola, "+nombre);
		System.out.println("Dime tus appellidos");
		String apellido = scanner.nextLine();
		System.out.println("Hola, "+nombre+" "+apellido);
		System.out.println("Dime tu edad");
		int edad = Integer.valueOf(scanner.nextLine());
		System.out.println("Tienes "+edad+" años.");
		
		if (edad < 0 || edad > 120 ) {
			System.out.println("Edad erronea.");
		}else if (edad>=18) {
			System.out.println("Eres mayor de edad.");
		}else {
			System.out.println("No eres mayor de edad.");
		}
		scanner.close();
	}

}
