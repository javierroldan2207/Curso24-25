package com.model.exception;

public class CancionRepeticionException extends Exception {
	
	private static final String DEFAULT_MESSAGE = "La cancion ya estaba incluida, no se puede añadir";

	public CancionRepeticionException() {
		// TODO Auto-generated constructor stub
	}

	public CancionRepeticionException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public CancionRepeticionException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	public CancionRepeticionException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public CancionRepeticionException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

}
