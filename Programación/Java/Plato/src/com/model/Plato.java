package com.model;

import java.util.Objects;

import com.model.exception.PrecioIncorrectoException;

public class Plato {
	
	private String nombre;
	private double precio;
	private static final double IVA = 0.21;
	private Vino vinoRecomendado;
	
	public Plato(String nombre) {
		super();
		this.nombre = nombre;
	}
	
	public Plato(String nombre, double precio) throws PrecioIncorrectoException {
		super();
		this.nombre = nombre;
		if (precio <=0) {
			throw new PrecioIncorrectoException ();
		}
		this.precio = precio;
	}

	public double getPrecioBase() {
		return precio;
	}
	
	public double getprecioVentaPublico() {
		return precio *(1+IVA);
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}
	
	
	
	public void setVinoRecomendado(Vino vino) {
		this.vinoRecomendado = vino;
	}
	
	public double getGradosvinorecomendado(Vino vino) {
		return this.vinoRecomendado.getGraduacion();
		}

	public double incrementarPrecio(double incremento) {
		return precio + incremento;
	}


	@Override
	public boolean equals(Object obj) {
		return (this == obj) || (obj != null && getClass() == obj.getClass() && 
	               Objects.equals(nombre, ((Plato) obj).nombre));
	}

	@Override
	public String toString() {
		String resultado = "";
		if (vinoRecomendado == null) {
			resultado = "Plato: " + nombre + ", precio sin IVA: " + precio + ", precio con IVA: " + getprecioVentaPublico() + ", sin vino recomendado.";
		}else {
			resultado = "Plato: " + nombre + ", precio sin IVA: " + precio + ", precio con IVA: " + getprecioVentaPublico() + ", vino: " + vinoRecomendado  ;
		}
		return resultado;
	}
	
	
	
	

}
