package com.model;

public class Punto implements Desplazable{
	
	private double x;
	private double y;
	
	public Punto() {
		super();
		this.x = 0;
		this.y = 0;
	}

	public Punto(double x, double y) {
		super();
		this.x = x;
		this.y = x;
	}

	@Override
	public String toString() {
		return "x=" + x + ", y=" + y ;
	}
	
	@Override
	public boolean equals(Object otro) {
		boolean esPunto = otro!=null && otro instanceof Punto;
		Punto elOtroPunto = esPunto? (Punto)otro: null;		
		return esPunto && this.x==elOtroPunto.x && this.y==elOtroPunto.y;
	}
	
	 public double distanciaOtroPunto(Punto otro) {
	        double dx = this.x - otro.x;
	        double dy = this.y - otro.y;
	        return Math.sqrt(dx * dx + dy * dy);
	    }
	 
	 public double distanciaAlOrigen() {
	        return Math.sqrt(x * x + y * y);
	    }
	 
	 public void desplazarVertical(double desplazamiento) {
			this.y += desplazamiento;
		}
	 
	 public void desplazarHorizontal(double desplazamiento) {
			this.x += desplazamiento;
		}
	
}
