package com.model.exception;

public class ListaCompletaException extends Exception {

	private static final String LISTA_COMPLETA = "La lista esta completa, no se puede añadir la cancion";
	
	public ListaCompletaException() {
		// TODO Auto-generated constructor stub
	}

	public ListaCompletaException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public ListaCompletaException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	public ListaCompletaException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public ListaCompletaException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

}
