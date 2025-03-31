package Ejercicios.Ej2;

import java.util.HashSet;
import java.util.Set;

public class Equipo {
	
	private String nombreEquipo;
	private Set<Alumno> grupoAlumnos;
	
	
	public Equipo(String nombreEquipo) {
		super();
		this.nombreEquipo = nombreEquipo;
		this.grupoAlumnos = new HashSet();
	}
	
	public void añadirAlumno(Alumno alumno) throws EquipoException {
		if (this.grupoAlumnos.contains(alumno)) {
			throw new EquipoException("El alumno ya esta dentro del equipo");
		}else {
			this.grupoAlumnos.add(alumno);
			}
	}
	
	public void borrarAlumno(Alumno alumno) throws EquipoException {
		if (this.grupoAlumnos.contains(alumno)) {
			this.grupoAlumnos.remove(alumno);
		}else {
			throw new EquipoException("No se a encontrado el alumno que desea borrar");
		}
	}
	
	public Alumno perteneceEquipo(Alumno alumno) {
		return null;
	}

	@Override
	public String toString() {
		return "Equipo: " + nombreEquipo + ", Alumnos: " + grupoAlumnos ;
	}
	
}

