package com.model;

public class Triangulo extends Figuras{

	private double[] lados;
	
	
	public Triangulo(double l1, double l2, double l3) {
		super();
		this.numeroLados = 3;
		this.lados=new double[numeroLados];
		this.lados[0] = l1;
		this.lados[1] = l2;
		this.lados[2] = l3;
		this.perimetro = calcularPerimetro();
		this.area = calcularArea();
		
	}
	
	@Override
	protected double calcularArea() {
		double semiperimetro=calcularPerimetro()/2;		
		return Math.sqrt(semiperimetro*(semiperimetro-this.lados[0])*(semiperimetro-this.lados[1])*(semiperimetro-this.lados[2]));
	}

	@Override
	protected double calcularPerimetro() {
		return this.lados[0]+this.lados[1]+this.lados[2];
	}
	
	

}
