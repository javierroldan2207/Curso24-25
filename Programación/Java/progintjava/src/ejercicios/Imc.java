package ejercicios;

import java.util.Scanner;

public class Imc {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Vamos a calcular su IMC(Indice de Masa Corporal).");
		
		System.out.println("Introduce tu altura en m.");
		float altura = scanner.nextFloat();
		
		System.out.println("Introduzca su peso en kg.");
		float peso = scanner.nextFloat();
		
		float imc = peso / (altura * altura);
		
		System.out.println("Tu IMC midiendo, "+altura+" m y pesando "+peso+" kg, es de: "+imc);
		
		
		scanner.close();
		}

}
