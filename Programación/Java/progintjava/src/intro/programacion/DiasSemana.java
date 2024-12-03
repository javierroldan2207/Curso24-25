package intro.programacion;

import java.util.Scanner;

public class DiasSemana {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Introduce el dia de la semana que quieras(1-7.)");
		int dia = Integer.valueOf(scanner.nextLine());
		
		if (dia == 1) {
			System.out.println("Lunes");
		}else if (dia == 2) {
			System.out.println("Martes");
		}else if (dia == 3) {
			System.out.println("Miercoles");
		}else if (dia == 4) {
			System.out.println("Jueves");
		}else if (dia == 5) {
			System.out.println("Viernes");
		}else if (dia == 6) {
			System.out.println("Sabado");
		}else if (dia == 7) {
			System.out.println("Domingo");
		}else {
			System.out.println("Numero erroneo.");
		}
	}

}
