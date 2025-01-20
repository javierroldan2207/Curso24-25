package main.java.model;

public class Persona {
	private String nombre;
	private double altuta;
	private int edad;
	private double peso;
	private String etnia;
	private boolean feliz;
	
	public Persona(String nombre, double altuta, int edad, double peso, String etnia, boolean feliz) {
		super();
		this.nombre = nombre;
		this.altuta = altuta;
		this.edad = edad;
		this.peso = peso;
		this.etnia = etnia;
		this.feliz = feliz;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public double getAltuta() {
		return altuta;
	}

	public void setAltuta(double altuta) {
		this.altuta = altuta;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public String getEtnia() {
		return etnia;
	}

	public void setEtnia(String etnia) {
		this.etnia = etnia;
	}

	public boolean isFeliz() {
		return feliz;
	}

	public void setFeliz(boolean feliz) {
		this.feliz = feliz;
	}
	

	
	
}

