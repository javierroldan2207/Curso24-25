package com.model;

import java.time.LocalDate;

public class Persona {
	
	private String nombre;
	private String apellido;
	private String dni;
	protected LocalDate fechaNacimiento;
	
	

	public Persona(String nombre, String apellido, String dni, LocalDate fechaNacimiento) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = dni;
		this.fechaNacimiento = fechaNacimiento;
		
		
	}
	
	public String toString() {
		return this.nombre+" "+this.apellido;	}
	
	
	public boolean equals(Object pers) {
		boolean esPersona = pers!=null & pers instanceof Persona;
		Persona perOtra =  esPersona? (Persona)pers: null;
		return esPersona && this.dni.equals(perOtra.dni);
	}

}
