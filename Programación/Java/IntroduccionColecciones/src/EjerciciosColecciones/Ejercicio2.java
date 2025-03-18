package EjerciciosColecciones;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

public class Ejercicio2 {

	public static void main(String[] args) {
		Set<Integer> numerosOrdenados = new TreeSet<>();
        Random random = new Random();
		System.out.println(numerosAleatoriosOrdenadosAsc(Ejercicio1.generarNumerosAleatoriosOrdenados(10)));
		System.out.println(numerosAleatoriosOrdenadosAsc2(Ejercicio1.generarNumerosAleatoriosOrdenados(10)));
		
	}
	 public static List<Integer> numerosAleatoriosOrdenadosAsc(Collection<Integer> numeros) {
	     List<Integer> lista2 = new ArrayList<>(numeros); 
	     Collections.sort(lista2);
	     return lista2; 
	    }
	 
	 public static Collection<Integer> numerosAleatoriosOrdenadosAsc2(Collection<Integer> numeros){
		 return new TreeSet<>(numeros);
	 }
	 
	 
	 public static List<Integer> numerosAleatoriosOrdenadorDesc(){
		 HashSet<Integer> numerosOrdenados = Ejercicio1.generarNumerosAleatoriosOrdenados(10);
	     Random random = new Random();
	     ArrayList<Integer> lista2 = new ArrayList<>(numerosOrdenados);  
	     lista2.sort(Collections.reverseOrder());
	     return lista2;
	 }
	
	
}
