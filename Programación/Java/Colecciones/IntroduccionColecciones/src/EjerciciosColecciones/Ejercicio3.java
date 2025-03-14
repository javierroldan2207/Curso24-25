package EjerciciosColecciones;

import java.util.ArrayList;
import java.util.List;

public class Ejercicio3 {

	public static void main(String[] args) {
		List<Integer> numeros = new ArrayList<>();
		
		agregarNumero(5,numeros);
		agregarNumero(10, numeros);
		agregarNumero(2, numeros);
		agregarNumero(2, numeros);
		agregarNumero(1, numeros);
		agregarNumero(4, numeros);

		System.out.println(numeros);
		
	}
	public static void agregarNumero(int numero, List<Integer> numeros) {
		int i = 0;
		while (i < numeros.size() && numeros.get(i) < numero) {
			i++;
		}
		numeros.add(i,numero);
	} 

}
