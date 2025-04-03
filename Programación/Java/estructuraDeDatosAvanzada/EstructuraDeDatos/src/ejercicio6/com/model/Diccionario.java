package ejercicio6.com.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ejercicio6.com.model.exception.DiccionarioException;

public class Diccionario {

	private Map<String, List<String>> diccionario;

	public Diccionario() {
		super();
		this.diccionario = new HashMap<>();
	}

	public void añadirPalabra(String palabra, String significado) {
		if (this.diccionario.containsKey(palabra)) {
			this.diccionario.get(palabra).add(significado);
		} else {
			List<String> significados = new ArrayList<>();
			significados.add(significado);
			this.diccionario.put(palabra, significados);
		}

	}

	public List<String> buscarpalabra(String palabra) throws DiccionarioException {
		if (!this.diccionario.containsKey(palabra)) {
			throw new DiccionarioException("No se a encontrado la palabra.");
		}

		return this.diccionario.get(palabra);
	}

	public void borrarPalabra(String palabra) throws DiccionarioException {
		if (!this.diccionario.containsKey(palabra)) {
			throw new DiccionarioException("");

		}

		this.diccionario.remove(palabra);

	}
	
	public List<String> buscarPorLetra(String letra){
		return  this.diccionario.keySet().stream()
			   .filter(a -> a.startsWith(letra))
			   .sorted((a1, a2) -> a1.compareTo(a2) )
			   .toList();
	}

	@Override
	public String toString() {
		return "Diccionario: " + diccionario;
	}

}
