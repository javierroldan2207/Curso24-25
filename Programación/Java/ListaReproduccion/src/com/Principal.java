package com;

import java.time.LocalDate;

import com.model.Cancion;
import com.model.ListaReproduccion;
import com.model.Usuario;

public class Principal {

	public static void main(String[] args) {
		
		Cancion c1 = new Cancion("Pepito", "David", 1.2, "David el vaquilla", 2025, 80);
		Cancion c2 = new Cancion("Juan", "ttt", 3, "Burro", 2025, 0);
		Cancion c3 =new Cancion("Bendecido", "Eladio Carrion", 3, "Sol Maria", 2024, 30000000);
		Usuario u1 = new Usuario("Javier", "Javierroldan@gmail.com", 20, true);
		ListaReproduccion ls1 = new ListaReproduccion("Lista 1", u1, 2, LocalDate.now(), LocalDate.now());
		ls1.agregarCancion(c1);
		ls1.agregarCancion(c2);
		ls1.agregarCancion(c3);
		System.out.println(ls1.mostrarLista());
		ls1.cancionActual();
		ls1.siguienteCancion();
		ls1.siguienteCancion();
		ls1.siguienteCancion();
		
	}

}
