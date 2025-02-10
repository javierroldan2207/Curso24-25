package com.model;

import java.time.LocalDate;

public class Profesor extends Persona {
	
	private String especialidad;

	public Profesor(String nombre, String apellido, String dni, LocalDate fechaNacimiento) {
		super(nombre, apellido, dni, fechaNacimiento);

	}

	public Profesor(String nombre, String apellido, String dni, LocalDate fechaNacimiento, String especialidad) {
		super(nombre, apellido, dni, fechaNacimiento);
		this.especialidad = especialidad;
	}

	@Override
	public String toString() {
		return super.toString()+" "+"Especialidad: "+this.especialidad;	}
	
	
	

}
