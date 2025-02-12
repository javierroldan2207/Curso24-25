package com.auth;

public class Credencial {
	
	private String usurname;
	private String password;
	private static int secuencia = 0;
	
	
	
	public Credencial(String usurname, String password, int secuencia) {
		super();
		this.usurname = usurname;
		this.password = password;
		
	}
	
	public String getUsurname() {
		return usurname;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String generarUsername(String nombre, String apellido) {
		String parteNombre = nombre.length() >= 3 ? nombre.substring(0,3).toLowerCase() : nombre.toLowerCase();
		String parteApellido = apellido.length() >= 3 ? apellido.substring(0,3).toLowerCase() : apellido.toLowerCase();
		return parteNombre + parteApellido + (secuencia++);
	}
	
	

}
