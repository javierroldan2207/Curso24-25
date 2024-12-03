package ejercicios;

public class Multiplos {

	public static void main(String[] args) {
		 for (int i = 0; i <=100; i++) {
			 
			 if (i % 7 == 0 && i % 13 == 0 ) {
				 System.out.println(i+" es multiplo de 7 y 13.");
			 }else if (i % 13 == 0){
				 System.out.println(i+" es multiplo de 13.");
			 }else if (i % 7 == 0) {
				 System.out.println(i+" es multiplo de 7.");
			 }
		 }
	}

}
