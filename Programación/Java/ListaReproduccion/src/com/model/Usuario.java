package com.model;

public class Usuario {
	
	private String nombre;
	private String email;
	private int clave;
	private boolean premium;
	private ListaReproduccion listaReproduccion;
	
	public Usuario(String nombre, String email, int clave, boolean premium) {
		super();
		this.nombre = nombre;
		this.email = email;
		this.clave = clave;
		this.premium = premium;
	}
	
	public Usuario(ListaReproduccion listaReproduccion) {
		super();
		this.listaReproduccion = listaReproduccion;
	}


	

	
	
	
	
}
