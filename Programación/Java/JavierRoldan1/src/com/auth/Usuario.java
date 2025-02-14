package com.auth;
public class Usuario {
	
	private String nombre;
	private String apellidos;
	private String email;
	private int intentos;
	private Credencial credencial;
	
	public Usuario(String nombre, String apellidos,String password) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.credencial = new Credencial(nombre, apellidos, password);
		
	}
	
	public Usuario(String nombre, String apellidos,String email, String password) {
		this(nombre,apellidos,password);
		this.email=email;
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
	
	public boolean esPasswordSegura() {
		
		return this.credencial.esPasswordSegura();
	}
	
	public boolean modificarPassword(String newpass, String oldpass, String newpassverif) {
		boolean resultado = false;
		if(this.credencial.comprobarPassword(oldpass) && newpass.equals(newpassverif) && !oldpass.equals(newpass)) {
			resultado = true;
			this.credencial.setPassword(newpassverif);	
		}
		return resultado;
	}
	
	public boolean hacerLogin(String nombre, String password) {
		if(this.credencial.getUsurname().equals(nombre) && this.credencial.comprobarPassword(password)) {
			
		}
		return true;
	}
}



