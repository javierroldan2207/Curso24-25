package EjerciciosColecciones;

import java.util.Random;
import java.util.TreeSet;

public class Ejercicio1 {

	public static void main(String[] args) {
		
	
	System.out.println(generarNumerosAleatoriosOrdenados(30));
		
	}
	
	
	 public static TreeSet<Integer> generarNumerosAleatoriosOrdenados(int cantidad) {
	        TreeSet<Integer> numerosOrdenados = new TreeSet<>();
	        Random random = new Random();
	        
	        while (numerosOrdenados.size() < cantidad) {
	            int numeroAleatorio = random.nextInt(100) + 1; 
	            numerosOrdenados.add(numeroAleatorio); 
	        }
	        
	        return numerosOrdenados; 
	    }

}
