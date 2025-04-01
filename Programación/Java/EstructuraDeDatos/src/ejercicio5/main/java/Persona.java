package ejercicio5.main.java;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public abstract class Persona {
	
	
	private String nombre;
	private LocalDate fechaNacimiento;
	private List<Mensaje> buzon;
	
	public Persona(String nombre, LocalDate fechaNacimiento) {
		super();
		this.nombre = nombre;
		this.fechaNacimiento = fechaNacimiento;
		this.buzon = new ArrayList<>();
	}
	
	
}
