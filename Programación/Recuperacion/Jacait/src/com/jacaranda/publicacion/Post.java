package com.jacaranda.publicacion;

import com.jacaranda.usuario.Usuario;

public class Post extends Publicacion{
	
	private int numeroLecturas;
	private String tema;

	public Post(String texto, Usuario usuario) {
		super(texto, usuario);
		this.numeroLecturas = numeroLecturas;
		this.tema = tema;
	}
	
	protected void setTexto(String texto) {
		super.setTexto(texto);
	}
	
	public void validar() throws PublicacionException {
		if(texto == null) {
			throw new PublicacionException("El contenido esta en blanco.");
		}
	}

	@Override
	public String toString() {
		return "Post:\n" +
		       "Publicación: " + texto + "\n" +
		       "Realizada por: " + getLoginUsuario() + "\n" +
		       "Valoración: " + valoracion + "\n" +
		       "Fecha de publicación: " + getFechaCreacion();
	}

	
	public int getNumLecturas() {
		return this.numeroLecturas;
	}

	@Override
	public boolean valorar(String publi) throws PublicacionException {

		numeroLecturas++;
		return false;
	}
	
	
	
	

}
