package ejercicios;

import java.util.Scanner;

public class diasDelMes {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Introduzca el año.");
		int año = scanner.nextInt();
		System.out.println("Introduzca el numero del mes del año.");
		int mes = scanner.nextInt();
		int dias = 0;
		if (mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12) {
			dias = 31;
		}else if(mes == 4 || mes == 6 || mes == 9 || mes == 11) {
			dias = 30;
		}else if (mes ==2) {
			 if ((año % 4 == 0 && año % 100 != 0) || (año % 400 == 0)) {
                 dias = 29; 
             } else {
                 dias = 28; 
             }
		}else {
			System.out.println("Numero de mes incorrecto.");
		}
		
		System.out.println("El mes "+mes+" del año "+año+" tiene "+dias+" dias.");
		
	}

}
