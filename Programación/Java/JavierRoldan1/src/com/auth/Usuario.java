package com.auth;
public class Usuario {
	
	private String nombre;
	private String apellidos;
	private String email;
	private int intentos;
	private Credencial credencial;
	
	public Usuario(String nombre, String apellidos, String email, int intentos, Credencial credencial) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.email = "";
		this.intentos = 0;
	}

	public void setCredencial(Credencial credencial) {
		this.credencial = credencial;
	}
	
	public boolean esCuentaBloqueada(int intentos) {
		if (intentos >=3) {
			return true;
		}
		return false;
	}
	
	public boolean esPasswordSegura(String password) {
		
		return false;
	}
	
}
