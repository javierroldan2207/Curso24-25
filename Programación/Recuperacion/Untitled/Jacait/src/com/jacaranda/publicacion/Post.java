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

	@Override
	public String toString() {
		return "Post." +
				"Publicacion: "+ texto + 
				"Realizada por: "+ getLoginUsuario()+
				"Valoracion :"+ valoracion + 
				"Fecha de publicacion: " + getFechaCreacion();
	}
	
	public int getNumLecturas() {
		return this.numeroLecturas;
	}
	
	

}
