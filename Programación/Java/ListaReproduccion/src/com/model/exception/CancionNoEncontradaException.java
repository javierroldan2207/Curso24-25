package com.model.exception;

public class CancionNoEncontradaException extends Exception {

	private static final String CANCION_NO_ENCONTRADA = "La cancion no se a encontrado, ";

	
	public CancionNoEncontradaException() {
		// TODO Auto-generated constructor stub
	}

	public CancionNoEncontradaException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public CancionNoEncontradaException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	public CancionNoEncontradaException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public CancionNoEncontradaException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

}
