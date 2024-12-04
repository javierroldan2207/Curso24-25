package ejercicios;

public class BuclesInicio {

	public static void main(String[] args) {
		//Cuenta de 0 a 10.
		for (int i = 0; i < 11; i++) {
			System.out.println(i);
		}
		System.out.println("**************");
		
		//Cuenta atras de 10 a 0.
		for (int i = 10; i >= 0; i--) {
			System.out.println(i);
		}
		System.out.println("**************");
		
		//Cuenta de 0 a 100 de 2 en 2.
		for (int i = 0; i < 101; i+=2) {
			System.out.println(i);
		}
		
		System.out.println("**************");
		
		//Cuenta de 0 a 10.
		int i = 0;
		while (i <= 10) {
			System.out.println(i);
			i++;
		}
		
		System.out.println("**************");
		
		//Cuenta atras de 10 a 0.
		int k = 10;
		while (k > -1) {
			System.out.println(k);
			k--;
		}
		
		System.out.println("**************");

		//Cuenta de 0 a 100 de 2 en 2.
		int j = 0;
		while (j < 101) {
			System.out.println(j);
			j+=2;
		}
		
		System.out.println("**************");

		//Bucle para mostrar los multiplos de 7 y 13 o de ambos numeros.
		for (int y = 0; y <=100; y++) {
			 
			 if (y % 7 == 0 && y % 13 == 0 ) {
				 System.out.println(y+" es multiplo de 7 y 13.");
			 }else if (y % 13 == 0){
				 System.out.println(y+" es multiplo de 13.");
			 }else if (y % 7 == 0) {
				 System.out.println(y+" es multiplo de 7.");
			 }
		 }
		
		System.out.println("**************");

		//Metodo SWITCH
		
		int dia = 1;
		switch(dia) {
		case 1 : {
			System.out.println("Lunes");
			break;
		}
		case 2 : {
			System.out.println("Martes");
			break;
		}
		case 3 : {
			System.out.println("Miercoles");
			break;
		}
		case 4 : {
			System.out.println("Jueves");
			break;
		}
		case 5 : {
			System.out.println("Viernes");
			break;
		}
		case 6 : {
			System.out.println("Sabado");
			break;
		}
		case 7 : {
			System.out.println("Domingo");
			break;
		}
		default : {
			System.out.println("Dia no valido.");
		}
		}
		//Cuenta de 0 a 10.
		int num = 0;
		do {
			System.out.println(num);
			num++;
		}while (num < 11);
		
		System.out.println("**************");

		//Cuenta atras de 10 a 0.
		int n = 10;
		do {
			System.out.println(n);
			n--;
		}while (n > -1);
		
		System.out.println("**************");
		
		num = 0;
		do {
			System.out.println(num);
			num += 2;
		}while (num <= 100);
		
		System.out.println("**************");
		
		int numero = 100;
		do {
			System.out.println(numero);
			numero -= 2;
		}while (numero >= 0);
		
	}
	
}
