package com.model;

public class Circulo extends Figuras{
	private static final int RADIO_DEFECTO = 1;
	private double radio;


	public Circulo() {
		super();
		this.numeroLados=0;
		this.radio = RADIO_DEFECTO;
		this.area = calcularArea();
		this.perimetro=calcularPerimetro();
	}
	
	  public Circulo(double radio) {
	       this();
	       this.radio = (radio<RADIO_DEFECTO)?this.radio:radio;
	    }

	public double getRadio() {
		return radio;
	}

	public void setRadio(double radio) {
		this.radio = (radio<RADIO_DEFECTO)?RADIO_DEFECTO:radio;
	}
	
	public double calcularRadio() {
		return (this.radio * this.radio) * 3.14;
	}
	
    public double calcularPerimetro() {
        return 2 * 3.14 * this.radio ;  
    }

	@Override
	protected double calcularArea() {
		return Math.PI*Math.pow(radio, 2);
	}

	
	
}
