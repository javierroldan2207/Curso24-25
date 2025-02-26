package com.model;

public abstract class Figuras {
	
	protected int numeroLados;
	protected double area;
	protected double perimetro;
	
	public Figuras() {
		super();
		this.numeroLados = 0;
	}

	abstract protected double calcularArea();
	abstract protected double calcularPerimetro();
	
	@Override
	public String toString() {
		return "Soy un " + getClass().getSimpleName()+" tengo "+this.numeroLados+" y mi area es: "+calcularArea();
		
	}

}
