package Ejercicios.Ej2.Main;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import Ejercicios.Ej2.Alumno;
import Ejercicios.Ej2.Equipo;
import Ejercicios.Ej2.EquipoException;

public class Main {

	public static void main(String[] args) throws EquipoException {
		
		Equipo eq1 = new Equipo("jjj");
		Alumno al1 = new Alumno("Javier", "1234567N");
		Alumno al2 = new Alumno("Antonio", "1544567N");
		Alumno al3 = new Alumno("Javier", "1239477N");
		
		eq1.añadirAlumno(al3);
		eq1.añadirAlumno(al2);
		eq1.añadirAlumno(al1);
		
		eq1.borrarAlumno(al3);
		System.out.println(eq1.toString());
		
		
		Set<Alumno> conjunto = new HashSet<>();
		
		Iterator<Alumno> it = conjunto.iterator();
		
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
	}

}
