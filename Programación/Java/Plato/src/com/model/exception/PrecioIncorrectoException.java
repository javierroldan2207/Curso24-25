package com.model.exception;

public class PrecioIncorrectoException extends Exception {
	
	private static String MENSAJE_PRECIO = "Precio incorrecto, no puede ser menor a 0.";

	public PrecioIncorrectoException() {
		super(MENSAJE_PRECIO);
	}

	public PrecioIncorrectoException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public PrecioIncorrectoException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	public PrecioIncorrectoException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public PrecioIncorrectoException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

}
