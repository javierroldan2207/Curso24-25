package ejercicio2.main.java;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

import ejercicio2.main.java.exceptions.EquipoException;

public class Equipo {
	
	private String nombre;
	private Set<Alumno> grupoAlumnos;
	
	public Equipo(String nombre, Set<Alumno> grupoAlumnos) {
		super();
		this.nombre = nombre;
		this.grupoAlumnos = new HashSet<>();
	}
	
	public void añadirAlumno(Alumno alu) throws EquipoException {
		if(this.grupoAlumnos.contains(alu)) {
			throw new EquipoException("El jugador que intentas introducir ya existe");
		}
		this.grupoAlumnos.add(alu);
	}
	
	public void eliminarAlumno(Alumno alu) throws EquipoException {
		if(!this.grupoAlumnos.contains(alu)) {
			throw new EquipoException("No se a encontrado el alumno.");
		}
		this.grupoAlumnos.remove(alu);
	}
	
	public Alumno buscarAlumnoEnEquipo (Alumno alu) throws EquipoException {
		Alumno resultado = null;
		if(!this.grupoAlumnos.contains(alu)) {
			resultado = null;
			throw new EquipoException("No se a encontrado al alumno.");
		}
		return resultado;
	}

	@Override
	public String toString() {
		return "Equipo: " + nombre + " , grupoAlumnos: " + grupoAlumnos;
	}
	
	public Equipo unirEquipos(Equipo otroEquipo) {
        Set<Alumno> nuevosAlumnos = new HashSet<>(this.grupoAlumnos);
        nuevosAlumnos.addAll(otroEquipo.grupoAlumnos);
        return new Equipo(nombre, nuevosAlumnos);
    }
	
	
	public List<Alumno> listahombresMayorEdad() {
		return grupoAlumnos.stream().filter(a -> a.getSexo() == 'H' && a.getEdad()>=18)
				.sorted((a1,a2) -> Integer.compare(a1.getEdad(),a2.getEdad())).toList();
		}
	
	public boolean exclusiboFemenino() {
		return grupoAlumnos.stream()
						   .allMatch(a -> a.getSexo() == 'M');	
		}
	
	public int jugadorasMayorEdad() {
		return	(int) grupoAlumnos.stream().filter(a -> a.getSexo() == 'M' && a.getEdad() >= 18)
										   .count();
		}
	
	public Optional<Integer> jugadorasConMenosEdadMayordeEdad() {
		return  grupoAlumnos.stream().filter(a -> a.getSexo() == 'M' && a.getEdad() >= 18)
							.map(Alumno::getEdad)
							.min(Integer::compareTo);
	}
	
	public Set<String> dniAlumnosmenoresEdad() {
		return grupoAlumnos.stream().filter(a -> a.getSexo() == 'H' && a.getEdad() < 18)
									.map(Alumno::getDni)
									.collect(Collectors.toSet());
	}
	
	public List<String> nombreOrdenadosAsc() {
		return grupoAlumnos.stream().filter(a -> a.getSexo() == 'M')
									.map(Alumno::getNombre)
									.collect(Collectors.toList());
	}
	
	public boolean existeJugadoramayorDeEdad() {
		return grupoAlumnos.stream().filter(a -> a.getSexo() == 'M' && a.getEdad() >= 18)
									.anyMatch(a -> true);
	}
	
	public int contarCiudadesDiferentes() {
		return grupoAlumnos.stream().map(Alumno::getCiudad)
							.collect(Collectors.toSet()).size();
	}
}