package com.jacaranda.usuario;

import java.util.Objects;

public class Usuario {

	private String login;
	private String pass;
	
	
	public Usuario(String login, String pass) {
		super();
		this.login = login;
		this.pass = pass;
	}


	public String getLogin() {
		return login;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public boolean chechkPass(String pass) {
		boolean bandera = false;
		if(this.pass.equals(pass)) {
			bandera = true;
		}
		return bandera;
	}


	@Override
	public int hashCode() {
		return Objects.hash(login, pass);
	}


	@Override
	public boolean equals(Object obj) {
		return this==obj || obj ==null && obj instanceof Usuario && this.hashCode() == obj.hashCode();
	}
}
