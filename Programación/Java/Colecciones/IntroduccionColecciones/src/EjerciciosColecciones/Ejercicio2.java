package EjerciciosColecciones;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;

public class Ejercicio2 {

	public static void main(String[] args) {
		
		System.out.println(numerosAleatoriosOrdenadosAsc(30));
		System.out.println(numerosAleatoriosOrdenadorDesc(30));
		
	}
	 public static TreeSet<Integer> numerosAleatoriosOrdenadosAsc(int cantidad) {
	        TreeSet<Integer> numerosOrdenados = new TreeSet<>();
	        Random random = new Random();
	        
	        while (numerosOrdenados.size() < cantidad) {
	            int numeroAleatorio = random.nextInt(100) + 1; 
	            numerosOrdenados.add(numeroAleatorio); 
	        }
	        
	        return numerosOrdenados; 
	    }
	 
	 public static List<Integer> numerosAleatoriosOrdenadorDesc(int cantidad){
		 TreeSet<Integer> numerosOrdenados = numerosAleatoriosOrdenadosAsc(30);
	     Random random = new Random();
	     ArrayList<Integer> lista2 = new ArrayList<>(numerosOrdenados);  
	     lista2.sort(Collections.reverseOrder());
	     return lista2;
	 }
	
	
}
