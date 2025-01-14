package ejercicios;

public class Arrays {

	public static void main(String[] args) {
		
		int [] numeros = {1,2,3,4,};
		for(int i = 0; i < numeros.length; i++) {
			System.out.println(numeros[i]);
		}
		System.out.println("*****************");
		for(int numero:numeros) {
			System.out.println(numero);
		}
		System.out.println("*****************");
		String [] nombres = new String[5];
		nombres[0]="Javier";
		nombres[1]="Javier";
		nombres[2]="Javier";
		for(String nombre:nombres) {
			System.out.println(nombre != null && nombre.isEmpty());
		}
		System.out.println("*****************");
		System.out.println(suma(numeros));
		System.out.println(creaMatriz(3));
		
		
		
		
	}
	
	int [] numeros = {1,2,3,4,};
	public static int suma(int [] numeros){
		int resultado = 0;
		for(int numero:numeros) {
			resultado += numero ;
		}
		return resultado;
	}
	
	public static int [][] creaMatriz(int tam){
		int [][] matriz = new int [tam][tam];
		return matriz;
	}
	
	

}
