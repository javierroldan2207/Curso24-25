package Ejercicios.Ej2;

import java.util.Objects;

public class Alumno {
	
	private String nombre;
	private String dni;
	
	
	public Alumno(String nombre, String dni) {
		super();
		this.nombre = nombre;
		this.dni = dni;
	}


	@Override
	public String toString() {
		return  nombre ;
	}

	
	@Override
    public int hashCode() {
        return Objects.hash(nombre, dni);
    }
	
	
	@Override
    public boolean equals(Object o) {
        return (this == o) || (o instanceof Alumno && Objects.equals(nombre, ((Alumno) o).nombre) && Objects.equals(dni, ((Alumno) o).dni));
    }

    
		
}
