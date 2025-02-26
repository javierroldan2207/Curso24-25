package com.model;

import java.util.Objects;

public class Usuario {
	
	private String nombre;
	private String email;
	private String clave;
	private CategoriaUsuario premium;
	private ListaReproduccion[] listaReproduccion;
	
	public Usuario(String nombre, String email, String clave, CategoriaUsuario premium) {
		super();
		this.nombre = nombre;
		this.email = email;
		this.clave = clave;
		this.premium = premium;
		this.listaReproduccion = new ListaReproduccion[10];
	}

	@Override
	public int hashCode() {
		return Objects.hash(email, nombre);
	}

	public String toString() {
		return this.nombre;
	}
	
	

	
}
