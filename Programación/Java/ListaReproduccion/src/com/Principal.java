package com;

import java.time.LocalDate;

import com.model.Cancion;
import com.model.ListaReproduccion;
import com.model.Usuario;

public class Principal {

	public static void main(String[] args) {
		
		Cancion c1 = new Cancion("Pepito", "David", 1.2, "David el vaquilla", 2025, 80);
		Cancion c2 = new Cancion("Juan", "Javier", 3, "Burro", 2025, 0);
		Cancion c3 =new Cancion("Bendecido", "Eladio Carrion", 3, "Sol Maria", 2024, 30000000);
		Cancion c4 = new Cancion("Manolin", "David", 1.2, "David el vaquilla", 2025, 456);
		Cancion c5 = new Cancion("Rios verdes", "David", 1.2, "David el vaquilla", 2025, 65);
		Cancion c6 = new Cancion("El monte", "David", 1.2, "David el vaquilla", 2025, 7);
		Usuario u7 = new Usuario("Javier", "Javierroldan@gmail.com", 20, true);
		Usuario u1 = new Usuario("Javier", "javier@gmail.com", 0, false);
		ListaReproduccion ls1 = new ListaReproduccion("Lista 1", u1, 2, LocalDate.now(), LocalDate.now());
		ls1.agregarCancion(c1);
		ls1.agregarCancion(c2);
		ls1.agregarCancion(c4);
		ls1.agregarCancion(c5);
		ls1.agregarCancion(c6);
		System.out.println("+++++++++++++++++++++++++++++++++++++++");
		System.out.println(ls1.mostrarLista());
		ls1.cancionActual();
		ls1.siguienteCancion();
		ls1.siguienteCancion();
		ls1.siguienteCancion();
		ls1.buscarPorArtista("David");
		System.out.println("+++++++++++++++++++++++++++++++++++++++");
		System.out.println(ls1.buscarPorArtista("Javier"));
		System.out.println("+++++++++++++++++++++++++++++++++++++++");
		System.out.println(ls1.ordenDeReproduccion(2));
		
	}

}
