package ejercicio6.com;

import ejercicio6.com.model.Diccionario;
import ejercicio6.com.model.exception.DiccionarioException;

public class Principal {

	public static void main(String[] args) throws DiccionarioException {
		
		Diccionario d1 = new Diccionario();
		
		d1.añadirPalabra("Hola", "saludo");
		d1.añadirPalabra("abecedario", "ddd");
		d1.añadirPalabra("Hola", "sss");
		d1.añadirPalabra("abefjfj", "f");
		d1.añadirPalabra("aber", "fff");
		d1.añadirPalabra("David", "Tio bueno");
		
		System.out.println(d1.buscarpalabra("Hola"));
		System.out.println(d1.buscarPorLetra("abe"));
		
	}

}
