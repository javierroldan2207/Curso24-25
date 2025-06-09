package com.jacaranda.publicacion;

import com.jacaranda.usuario.Usuario;

public class Recomendacion extends Publicacion{
	
	private int numeroEstrellas;
	
	public Recomendacion(String texto, Usuario usuario, int numeroEstrellas) {
		super(texto, usuario);
		this.numeroEstrellas = numeroEstrellas;
	}

	public int getNumeroEstrellas() {
		return numeroEstrellas;
	}
	
	
	
	
	

}
