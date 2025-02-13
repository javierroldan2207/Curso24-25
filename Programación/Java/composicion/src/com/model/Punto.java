package com.model;

public class Punto {
	private double x;
	private double y;

	public Punto(double x, double y) {
		super();
		this.x = x;
		this.y = y;
	}

	@Override
	public String toString() {
		return "Punto [x=" + x + ", y=" + y + "]";
	}
	
	public boolean equals(Object otro) {
		boolean esPunto = otro!=null && otro instanceof Punto;
		Punto elOtroPunto = esPunto? (Punto)otro: null;		
		return esPunto && this.x==elOtroPunto.x && this.y==elOtroPunto.y;
	}
	
	
	
}
