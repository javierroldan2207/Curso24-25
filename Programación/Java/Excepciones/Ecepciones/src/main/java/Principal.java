package main.java;

import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {

		int a = 3;
		int b = 0;
		
		try {
			String cadena = null;
			System.out.println(a/b);
			cadena.toUpperCase();
			
		}catch (ArithmeticException e) {
			System.out.println("Ese valor es erroneo.");
			e.printStackTrace();
		}catch (Exception e){
			System.out.println("No se esperaba este tipo de excepcion.");
			e.printStackTrace();
			
		}
		
		Scanner sc = new Scanner(System.in);
		
		int edad = 0;
		
		
		 
		do {
		try {
			System.out.println("Introduce una edad: ");
			edad = Integer.valueOf(sc.nextLine());
			
		}catch (Exception e) {
			System.out.println("Error");
		}
		}while (edad <= 0);
		
		
		if (edad>=18) {
			System.out.println("Eres mayor de edad.");
		}else {
			System.out.println("Eres menor de edad.");
		}
	}
			
}









