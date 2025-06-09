package main;

import java.time.LocalDate;

import main.java.exception.HogwartsException;
import main.java.model.Bruja;
import main.java.model.Defensa;
import main.java.model.Hechizo;
import main.java.model.Maldicion;

public class Principal {
    public static void main(String[] args) {
        Bruja bruja = new Bruja();

        Hechizo h1 = new Defensa("Protego", 6, LocalDate.of(2025, 6, 1));
        Hechizo h2 = new Maldicion("Cruciatus", 12, LocalDate.of(2025, 6, 2));
        Hechizo h3 = new Maldicion("Imperius", 10, LocalDate.of(2025, 6, 2));
        Hechizo h4 = new Defensa("Escudo", 7, LocalDate.of(2025, 6, 3));
        Hechizo h5 = new Maldicion("Lumos", 5, LocalDate.of(2025, 6, 3));

        try {
            bruja.lanzarHechizo(h1);
            bruja.lanzarHechizo(h2);
            bruja.lanzarHechizo(h3);
            bruja.lanzarHechizo(h4);
            bruja.lanzarHechizo(h5);
        } catch (HogwartsException e) {
            System.out.println("ERROR al lanzar hechizo: " + e.getMessage());
        }

        
        try {
            bruja.mostrarUltimoHechizoRealizado();
            LocalDate fechaUlt = bruja.fechaUltimoEchizoLanzado();
            System.out.println("Fecha del último hechizo lanzado: " + fechaUlt);
        } catch (HogwartsException e) {
            System.out.println( e.getMessage());
        }

        
        bruja.mostrarHechizosDeUnaFecha(LocalDate.of(2025, 6, 2));
    }
}



