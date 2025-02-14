package com.auth;

public class Credencial {
	
	private String usurname;
	private String password;
	private static int secuencia = 0;
	
	

	
	public Credencial(String nombre, String apellidos, String password) {
		super();
		this.password = password;
		this.generarUsername(nombre, apellidos);
	}


	public String getUsurname() {
		return usurname;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public boolean esPasswordSegura() {
		boolean estado = false;
		boolean tieneMayus = false;
		boolean tieneNum = false;
		if(password.length()>8) {
		for(int i = 0;i<password.length(); i++) {
			if(Character.isDigit(password.charAt(i))) {
				tieneNum = true;
			}
			else if(Character.isUpperCase(password.charAt(i))) {
				tieneMayus = true;
			}
		}
			
	}
	
		return tieneMayus && tieneNum;
	}
	
	public String generarUsername(String nombre, String apellido) {
		String parteNombre = nombre.length() >= 3 ? nombre.substring(0,3).toLowerCase() : nombre.toLowerCase();
		String parteApellido = apellido.length() >= 3 ? apellido.substring(0,3).toLowerCase() : apellido.toLowerCase();
		return parteNombre + parteApellido + (secuencia++);
	}
	
	public boolean comprobarPassword(String otra) {
		return this.password.equals(otra) ;
	}


}

