package com.model;

public class Linea implements Desplazable{
	private Punto p1;
	private Punto p2;
	
	
	public Linea() {
		super();
	}

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
		return "Punto1: "+this.p1 + " Punto2: "+this.p2 ;
	}
	
	@Override
	public boolean equals(Object otro) {
		return otro!=null && otro instanceof Linea && ((Linea)otro).p1.equals(this.p1) && ((Linea)otro).p2.equals(this.p2)
		|| ((Linea)otro).p2.equals(this.p1) && ((Linea)otro).p1.equals(this.p2);
	}

	@Override
	public void desplazarVertical(double desplazamiento) {
		
	}

	@Override
	public void desplazarHorizontal(double desplazamiento) {
		
	}
	
	public double longitudLinea() {
		return this.p1.distanciaOtroPunto(this.p2);
	}
	
	
}





















