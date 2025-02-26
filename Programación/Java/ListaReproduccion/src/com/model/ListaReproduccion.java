package com.model;

import java.time.LocalDate;
import java.util.Arrays;

import com.model.exception.CancionNoEncontradaException;
import com.model.exception.CancionRepeticionException;
import com.model.exception.ListaCompletaException;

public class ListaReproduccion {
	
	private String nombre;
	private Usuario usuario;
	private int numeroReproducciones;
	private LocalDate fechaCreacion;
	private LocalDate ultimaReproduccion;
	private Cancion[] canciones;
	private int cancionActual;
	
	public ListaReproduccion(String nombre, Usuario usuario) {
		super();
		this.nombre = nombre;
		this.usuario = usuario;
		this.numeroReproducciones = 0;
		this.fechaCreacion = LocalDate.now();
		this.canciones =  new Cancion[10];
	}
	
	
	int i = 0;
	public void agregarCancion(Cancion cancion) throws CancionRepeticionException, ListaCompletaException {
		boolean add = false;
		if(contieneCancion(cancion)) {
			throw new CancionRepeticionException();
		}else {
			for (int i = 0; i<canciones.length && ! add; i++) {
				if(this.canciones[i]==null) {
					this.canciones[i]=cancion;
					add=true;
				}
			}
			if(!add) {
				throw new ListaCompletaException();
			}
		}
		
	}
	
	private boolean contieneCancion(Cancion cancion) {
		boolean contiene = false;
		for (int i =0; i<canciones.length && !contiene; i++) {
			contiene = cancion.equals(this.canciones[i]);
		}
		return contiene;
	}

	
	public void eliminarCancion(Cancion otro) throws CancionNoEncontradaException {		
		if(!contieneCancion(otro)) {
			throw new CancionNoEncontradaException();
		}
	}

	public String mostrarLista() {
		return Arrays.toString(canciones);
	}
	
	
	public String cancionActual() {
	if(this.canciones[cancionActual%this.canciones.length]==null) {
		
	}
	return "";
	}
	
	public String  siguienteCancion() {
		this.cancionActual++;
		return cancionActual();
	}
	
	
	public String buscarPorArtista(String artista) {
		Cancion[] resultado = new Cancion[100];
		int contador = 0;
		for (Cancion cancion : canciones) {
			if (cancion != null && cancion.getArtista().equals(artista)) {
				resultado[contador] = cancion;
				contador++;
			}
		}
		return Arrays.toString(resultado);
		
	}
	
	public String ordenDeReproduccion(int num) {
		Cancion[] resultado = new Cancion[this.canciones.length];
		int contador = 0;
		
		if (num == 1) {
			for (Cancion cancion : canciones) {
				resultado[contador]= cancion;
				contador++;
			}
		}
		
		if (num == 2) {
			int contador = 0;
			for (Cancion cancion : canciones) {
				return canciones[contador] > canciones[contador+1] ; 
				
			}
		}
		return Arrays.toString(resultado);
	}
	
	public String toString() {
		StringBuilder sb =  new StringBuilder("Lista de reproducción: "+ nombre + ", usuario: "+usuario + " y canciones: ");
		for(Cancion c: canciones) {
			sb.append(c!=null? c+"\n": "");
		}
		
		return sb.toString();
	}


}





