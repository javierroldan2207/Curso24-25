package ejercicios;

import java.util.Scanner;

public class DiasDelMes {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Introduzca el año.");
		int year = scanner.nextInt();
		System.out.println("Introduzca el numero del mes del año.");
		int mes = scanner.nextInt();
		int dias = 0;
		if (mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12) {
			dias = 31;
		}else if(mes == 4 || mes == 6 || mes == 9 || mes == 11) {
			dias = 30;
		}else if (mes == 2) {
			 if (esBisiesto(year)) {
                 dias = 29; 
             } else {
                 dias = 28; 
             }
		}else {
			System.out.println("Numero de mes incorrecto.");
		}
		
		System.out.println("El mes "+mes+" del año "+year+" tiene "+dias+" dias.");
		
		scanner.close();
	}
	public static boolean esBisiesto(int year) {
		return ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0));
	}


}