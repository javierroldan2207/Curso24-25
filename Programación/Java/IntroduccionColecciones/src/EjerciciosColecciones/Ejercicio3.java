package EjerciciosColecciones;

import java.util.List;

public class Ejercicio3 {
			
	private List<Integer> numeros;

	public Ejercicio3(List<Integer> numeros) {
		super();
		this.numeros = numeros;
		}
		
		
	public void addNumber(Integer numero) {
		int indice = 0;
		while(indice < numeros.size() && numeros.get(indice).compareTo(numero)<=0) {
			indice++;
		}
		this.numeros.add(indice,numero);
		
	}
	
	@Override
	public String toString() {
		return numeros.toString();
	}
}
