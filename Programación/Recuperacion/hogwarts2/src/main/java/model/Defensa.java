package main.java.model;

import java.time.LocalDate;

public class Defensa extends Hechizo {

	public Defensa(String nombre, int puntos, LocalDate fechaLanzamiento) {
		super(nombre, puntos, fechaLanzamiento);
		
	}

	 @Override
	    public String toString() {
	        return "Defensa --> " + super.toString();
	    }
}
