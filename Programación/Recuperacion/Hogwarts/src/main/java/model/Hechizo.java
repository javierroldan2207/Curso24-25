package main.java.model;

import java.time.LocalDate;

public class Hechizo {
	
	private String nombre;
	private int puntos;
	private LocalDate fechaLanzamiento ;
	
	
	public Hechizo(String nombre, int puntos) {
		super();
		this.nombre = nombre;
		this.puntos = puntos;
	}

	
	public Hechizo(String nombre, int puntos, LocalDate fechaLanzamiento) {
		super();
		this.nombre = nombre;
		this.puntos = puntos;
		this.fechaLanzamiento = fechaLanzamiento;
	}

	public int consumoMagico() {
		return 1;
	}

	public String getNombre() {
		return nombre;
	}


	public int getPuntos() {
		return puntos;
	}


	public LocalDate getFechaLanzamiento() {
		return fechaLanzamiento;
	}




	
	
}
