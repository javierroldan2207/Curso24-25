package com.model;

import java.util.Objects;

public class Cancion {
	
	private String titulo;
	private String artista;
	private double duracion;
	private String disco;
	private int anio;
	private int numeroReproduccion;
	
	public Cancion(String titulo, String artista, double duracion, String disco, int anio) {
		super();
		this.titulo = titulo;
		this.artista = artista;
		this.duracion = duracion;
		this.disco = disco;
		this.anio = anio;
		this.numeroReproduccion = 0;
	}

	@Override
	public String toString() {
		return "Cancion [titulo=" + titulo + ", artista=" + artista + ", duracion=" + duracion + ", disco=" + disco
				+ ", anio=" + anio + ", numeroReproduccion=" + numeroReproduccion + "]";
	}

	public String getArtista() {
		return artista;
	}

	public int getNumeroReproduccion() {
		return numeroReproduccion;
	}

	@Override
	public int hashCode() {
		return Objects.hash(artista, disco, titulo);
	}

	@Override
	public boolean equals(Object obj) {
		
		return this==obj || obj!=null && obj instanceof Cancion && this.hashCode() == obj.hashCode();
		
	}
	
	
	
	

	
}
