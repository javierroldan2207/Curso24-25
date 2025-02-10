package com.model;

import java.time.LocalDate;

public class Estudiante extends Persona {
	
	private String codigoMatricula;
	private int curso;
	private String estudio;

	public Estudiante(String nombre, String apellido, String dni, LocalDate fechaNacimiento) {
		super(nombre, apellido, dni, fechaNacimiento);
	
	}

	public Estudiante(String nombre, String apellido, String dni, LocalDate fechaNacimiento, String codigoMatricula,
			int curso, String estudio) {
		this(nombre, apellido, dni, fechaNacimiento);
		this.codigoMatricula = codigoMatricula;
		this.curso = curso;
		this.estudio = estudio;
	}
	
	public LocalDate getFechaNacimiento() {
		return super.fechaNacimiento;
	}

	@Override
	public String toString() {
		return super.toString()+" "+"Curso: "+this.curso;
	}

	
}
