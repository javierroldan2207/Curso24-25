package ejercicios;

public class BuclesInicio {

	public static void main(String[] args) {
		
		for (int i = 0; i < 11; i++) {
			System.out.println(i);
		}
		System.out.println("**************");
		
		for (int i = 10; i > 1; i--) {
			System.out.println(i);
		}
		System.out.println("**************");

		for (int i = 0; i < 11; i+=2) {
			System.out.println(i);
		}
		
		System.out.println("**************");
		
		int i = 0;
		while (i <= 10) {
			System.out.println(i);
			i++;
		}
		
		System.out.println("**************");
		
		while (i >-1) {
			System.out.println(i);
			i--;
		}
		
		System.out.println("**************");

		for (int y = 0; y <=100; y++) {
			 
			 if (y % 7 == 0 && y % 13 == 0 ) {
				 System.out.println(y+" es multiplo de 7 y 13.");
			 }else if (y % 13 == 0){
				 System.out.println(y+" es multiplo de 13.");
			 }else if (y % 7 == 0) {
				 System.out.println(y+" es multiplo de 7.");
			 }
		 }
		
		
		
	}
	
}
