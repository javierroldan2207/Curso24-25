package com.model;

public class Cancion {
	
	private String titulo;
	private String artista;
	private double duracion;
	private String disco;
	private int anio;
	private int numeroReproduccion;
	
	public Cancion(String titulo, String artista, double duracion, String disco, int anio, int numeroReproduccion) {
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
	
	

	
}
