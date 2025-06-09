package com.jacaranda.publicacion;

import com.jacaranda.usuario.Usuario;

public class Tweet extends Publicacion{
	private static final int MAX_CARACTER = 50;

	public Tweet(String texto, Usuario usuario) {
		super(texto, usuario);
	}
	
	protected void setTexto(String texto) {
		super.setTexto(texto);
	}

	@Override
	public String toString() {
		return "Tweet." +
				"Publicacion: " + texto + 
				"Realizado por: "+ getLoginUsuario()+
				"Valoracion: "+valoracion+
				"Fecha de publicacion: "+ getFechaCreacion();
	}
	
	
	public boolean valorar(String publi) {
		return false;
	}
	

}

