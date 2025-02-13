package com.model;

public class Linea {
	private Punto p1;
	private Punto p2;
	
	
	public Linea(Punto p1, Punto p2) {
		super();
		this.p1 = p1;
		this.p2 = p2;
	}
	
	public Linea (double x1, double y1, double x2, double y2) {
		this(new Punto(x1,y1), new Punto (x2,y2));
	}


	@Override
	public String toString() {
		return this.p1 + " "+this.p2 ;
	}
	
}
