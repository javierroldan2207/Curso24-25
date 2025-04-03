package ejercicio2.main.java;

import java.util.Objects;

public class Alumno {
	
	private String nombre;
	private String dni;
	private char sexo;
	private int edad;
	private String ciudad;
	
	
	public Alumno(String nombre, String dni, char sexo, int edad, String ciudad) {
		super();
		this.nombre = nombre;
		this.dni = dni;
		this.sexo = sexo;
		this.edad = edad;
		this.ciudad = ciudad;
	}


	@Override
	public String toString() {
		return "Alumno: " + nombre + " ,con  dni: " + dni;
	}


	@Override
	public int hashCode() {
		return Objects.hash(dni);
	}


	@Override
	public boolean equals(Object obj) {
	    return this==obj || obj!=null && obj instanceof Alumno o && this.hashCode() == o.hashCode();
	}

	public String getDni() {
		return dni;
	}
	
	public char getSexo() {
		return sexo;
	}


	public int getEdad() {
		return edad;
	}


	public String getCiudad() {
		return ciudad;
	}
	
	public String getNombre() {
		return nombre;
	}

}
