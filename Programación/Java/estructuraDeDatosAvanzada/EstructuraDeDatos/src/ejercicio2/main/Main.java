package ejercicio2.main;

import java.util.HashSet;
import java.util.Set;

import ejercicio2.main.java.Alumno;
import ejercicio2.main.java.Equipo;

public class Main {
    public static void main(String[] args) {
        try {
            Alumno a1 = new Alumno("Carlos", "12345678A", 'H', 20, "Madrid");
            Alumno a2 = new Alumno("Ana", "87654321B", 'M', 22, "Barcelona");
            Alumno a3 = new Alumno("Luis", "11112222C", 'H', 17, "Sevilla");
            Alumno a4 = new Alumno("Elena", "33334444D", 'M', 19, "Valencia");
            
            Set<Alumno> grupo1 = new HashSet<>();
            grupo1.add(a1);
            grupo1.add(a2);
            Equipo equipo1 = new Equipo("Tigres", grupo1);
            
            Set<Alumno> grupo2 = new HashSet<>();
            grupo2.add(a3);
            grupo2.add(a4);
            Equipo equipo2 = new Equipo("Panteras", grupo2);
            
            Equipo equipoUnido = equipo1.unirEquipos(equipo2);
            System.out.println("Equipo unido: " + equipoUnido);
            
            System.out.println(equipoUnido.listahombresMayorEdad());
            
            System.out.println(equipoUnido.exclusiboFemenino());
            
            System.out.println(equipoUnido.jugadorasConMenosEdadMayordeEdad().orElse(-1));
            
            System.out.println(equipoUnido.dniAlumnosmenoresEdad());
            
            System.out.println(equipoUnido.contarCiudadesDiferentes());
            
            System.out.println(equipo1.equals(equipo2));
            
            System.out.println(equipo1.equals(equipo1));
        } catch (Exception e) {
            System.out.println("Se ha producido un error: " + e.getMessage());
        }
    }
}
