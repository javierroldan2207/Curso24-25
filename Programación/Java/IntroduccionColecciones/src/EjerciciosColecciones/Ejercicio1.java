package EjerciciosColecciones;

import java.util.HashSet;
import java.util.Random;

public class Ejercicio1 {

	public static void main(String[] args) {
		
	
	System.out.println(generarNumerosAleatoriosOrdenados(30));
		
	}
	
	
	 public static HashSet<Integer> generarNumerosAleatoriosOrdenados(int cantidad) {
	        HashSet<Integer> numerosOrdenados = new HashSet<>();
	        Random random = new Random();
	        
	        while (numerosOrdenados.size() < cantidad) {
	            int numeroAleatorio = random.nextInt(100) + 1; 
	            numerosOrdenados.add(numeroAleatorio); 
	        }
	        
	        return numerosOrdenados; 
	    }

}
