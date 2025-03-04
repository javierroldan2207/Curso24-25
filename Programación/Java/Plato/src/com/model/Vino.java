package com.model;

import java.util.Objects;

import com.model.exception.GraduacionVinoException;

public class Vino {
	
	private String nombre;
	private double graduacion;
	
	public Vino(String descripcion) {
		super();
		this.nombre = descripcion;
	}

	public Vino(String descripcion, double graduacion) throws GraduacionVinoException{
		super();
		this.nombre = descripcion;
		if (graduacion <= 0) {
			throw new GraduacionVinoException();
		}
		this.graduacion = graduacion;
	}

	public String getNombre() {
		return nombre;
	}

	public double getGraduacion() {
		return graduacion;
	}
	
	public boolean equals(Object obj) {
		return (this == obj) || (obj != null && getClass() == obj.getClass() && Objects.equals(nombre, ((Vino)obj).nombre));
	}

	@Override
	public String toString() {
		return "Nombre:" + nombre + ", graduacion:" + graduacion;
	}
	
	

}
