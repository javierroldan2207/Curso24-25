package com.model;

import com.jacaranda.memoryStorage.MemoryStorage;
import com.jacaranda.memoryStorage.MemoryStorageException;
import com.jacaranda.publicacion.Post;
import com.jacaranda.publicacion.PublicacionException;
import com.jacaranda.publicacion.Tweet;
import com.jacaranda.usuario.Usuario;

public class Principal {

	public static void main(String[] args) {
MemoryStorage memoria = new MemoryStorage();
		
		try {
			// Añadir usuarios
			memoria.addUsuario("pepe", "1234");
			memoria.addUsuario("ana", "abcd");
			memoria.addUsuario("luis", "pass");
			
			// Añadir publicaciones tipo Tweet
			memoria.addPublicacion("pepe", "Este es mi primer tweet!");
			memoria.addPublicacion("ana", "¡Hola a todos desde el tweet!");
			
			// Añadir publicaciones tipo Post
			memoria.addPublicacion("pepe", "Este es un post largo", "post");
			
			// Añadir recomendaciones
			memoria.addPost("luis", "Recomiendo este libro!", 4);
			
			//Valorar
			
			// Mostrar todas las publicaciones
			System.out.println("\n--- Todas las publicaciones ---");
			System.out.println(memoria.mostarListaPublicaciones());

			// Mostrar solo tweets
			System.out.println("\n--- Tweets ---");
			System.out.println(memoria.mostrartweet());

			// Mostrar solo posts
			System.out.println("\n--- Posts ---");
			System.out.println(memoria.mostrarPost());

			// Mostrar solo recomendaciones
			System.out.println("\n--- Recomendaciones ---");
			System.out.println(memoria.mostrarRecomendaciones());

		} catch (MemoryStorageException e) {
			System.err.println(e.getMessage());
		}
	
	}

	
}
