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


public void validar() throws PublicacionException {
	if(texto == null || texto.length() > MAX_CARACTER) {
		throw new PublicacionException("El tewwt supera los 50 carcteres o esta en blanco.");
	}
}
	

public boolean valorar(String nota) throws PublicacionException {

		
		if(nota.equals(Valoraciones.SUPERBUENA.toString())) {
			valoracion = valoracion +6;
		}
		else if(nota.equals(Valoraciones.MUYBUENA.toString())) {
			valoracion = valoracion +4;
		}
		else if(nota.equals( Valoraciones.BUENA.toString())) {
			valoracion = valoracion +2;
		}
		else if(nota.equals(Valoraciones.NORMAL.toString())) {
			valoracion = valoracion;
		}
		else if(nota.equals(Valoraciones.REGULAR.toString())) {
			valoracion = valoracion -2;
		}
		else if(nota.equals(Valoraciones.MUYMALA.toString())) {
			valoracion = valoracion -4;
		}else {
			throw new PublicacionException("Valoracion no valida.");
		}
		
		return true;
	}


@Override
public String toString() {
	return "Tweet:\n" +
	       "Publicación: " + texto + "\n" +
	       "Realizado por: " + getLoginUsuario() + "\n" +
	       "Valoración: " + valoracion + "\n" +
	       "Fecha de publicación: " + getFechaCreacion();
}

}

