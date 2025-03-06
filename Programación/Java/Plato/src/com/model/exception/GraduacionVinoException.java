package com.model.exception;

public class GraduacionVinoException extends Exception {

	private static final String MENSAJE_GRADUACION = "Graduacion incorrecta, no puede ser menor a 0.";
	
	public GraduacionVinoException() {
		super(MENSAJE_GRADUACION);
	}

	public GraduacionVinoException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public GraduacionVinoException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	public GraduacionVinoException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public GraduacionVinoException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

}
