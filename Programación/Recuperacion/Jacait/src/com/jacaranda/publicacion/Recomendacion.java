package com.jacaranda.publicacion;

import com.jacaranda.usuario.Usuario;

public class Recomendacion extends Publicacion{
	
	private static final int MINIMO_CARACTERES = 100;
	private static final int MAXIMO_CARACTERES = 200;
	private int numeroEstrellas;
	
	public Recomendacion(String texto, Usuario usuario, int numeroEstrellas) {
		super(texto, usuario);
		this.numeroEstrellas = numeroEstrellas;
	}

	public int getNumeroEstrellas() {
		return numeroEstrellas;
	}

	@Override
	public boolean valorar(String publi) throws PublicacionException {
		// TODO Auto-generated method stub
		return false;
	}
	
	public void validar() throws PublicacionException {
		if(texto.length() < MINIMO_CARACTERES || texto.length()> MAXIMO_CARACTERES) {
			throw new PublicacionException("No tiene el tamaño adecuado.");
		}
	}

	@Override
	public String toString() {
		return "Recomendación:\n" +
		       "Publicación: " + texto + "\n" +
		       "Realizada por: " + getLoginUsuario() + "\n" +
		       "Valoración: " + getValoracion() + "\n" +
		       "Fecha de publicación: " + getFechaCreacion() + "\n" +
		       "Número de estrellas: " + getNumeroEstrellas();
	}

	
	

}
