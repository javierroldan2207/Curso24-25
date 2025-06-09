package main.java.model;

import java.time.LocalDate;

public class Maldicion extends Hechizo{

	public Maldicion(String nombre, int puntos, LocalDate fechaLanzamiento) {
		super(nombre, puntos, fechaLanzamiento);
	}
	
	
	public boolean esImperdonable() {
	    String nombreHechizo = getNombre().toLowerCase();

	    return nombreHechizo.equals("avada kedavra") ||
	           nombreHechizo.equals("imperius") ||
	           nombreHechizo.equals("cruciatus");
	}


}
