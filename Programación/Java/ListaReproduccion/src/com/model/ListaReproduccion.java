package com.model;

import java.time.LocalDate;
import java.util.Arrays;

public class ListaReproduccion {
	
	private String nombre;
	private Usuario usuario;
	private int numeroReproducciones;
	private LocalDate fechaCreacion;
	private LocalDate ultimaReproduccion;
	private Cancion[] canciones = new Cancion[100];
	
	public ListaReproduccion(String nombre, Usuario usuario, int numeroReproducciones, LocalDate fechaCreacion,
			LocalDate ultimaReproduccion) {
		super();
		this.nombre = nombre;
		this.usuario = usuario;
		this.numeroReproducciones = numeroReproducciones;
		this.fechaCreacion = fechaCreacion;
		this.ultimaReproduccion = ultimaReproduccion;
	}
	
	
	int i = 0;
	public void agregarCancion(Cancion otro) {
		canciones[i]=otro;
		i++;
	}
	
	public void eliminarCancion(Cancion otro) {		
		for (int i= 0; i<canciones.length-1; i++) {
			if(canciones[i] == otro) {
				canciones[i]=null;
			}
		}
	}

	public String mostrarLista() {
		return Arrays.toString(canciones);
	}
	
	int j = 0;
	public void cancionActual() {
	System.out.println("Reproduciendo: " + canciones[j]);
	}
	
	public void siguienteCancion() {
		if (canciones[j+1] != null) {
		System.out.println("Reproduciendo siguiente cancion: " + canciones[j+1]);
		j++;
		}else {
			j=0;
			System.out.println("Reproduciendo siguiente cancion: " + canciones[j]);
			
		}
		this.numeroReproducciones +=1;
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
				return canciones[contador] > canciones[contador+1] ? 
				
			}
		}
		return Arrays.toString(resultado);
	}
	

}





