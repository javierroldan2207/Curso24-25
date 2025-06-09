package com.jacaranda.memoryStorage;

import com.jacaranda.publicacion.Post;
import com.jacaranda.publicacion.Publicacion;
import com.jacaranda.publicacion.Recomendacion;
import com.jacaranda.publicacion.Tweet;
import com.jacaranda.usuario.Usuario;

public class MemoryStorage {
	
	private static final int NUM_MAXIMO_USUARIOS = 15;
	private static final int NUM_MAXIMO_PUBLICACIONES = 50;
	private int numUsuariosActuales;
	private int numPublicacionesActuales;
	private Publicacion[] publicaciones;
	private Usuario[] usuarios;
	
	public MemoryStorage() {
		super();
		this.usuarios = new Usuario[NUM_MAXIMO_USUARIOS];
		this.publicaciones = new Publicacion[NUM_MAXIMO_PUBLICACIONES];
		this.numUsuariosActuales = 0;
		this.numPublicacionesActuales = 0;
	}
	
	private int posicionUsuario(String usu) {
		int resultado = -1;
		for(int i = 0; i< numUsuariosActuales; i++) {
			if(usuarios[i].getLogin().equals(usu)) {
				resultado = i;
			}
		}
		return resultado;
	}
	
	public void addUsuario(String nombre, String pass) throws MemoryStorageException {
		if(numUsuariosActuales >= NUM_MAXIMO_USUARIOS) {
			throw new MemoryStorageException("Maxio de usuarios alcanzado");
		}
		if(posicionUsuario(nombre) != -1) {
			throw new MemoryStorageException("El usuario ya existe");

		}
		
		usuarios[numUsuariosActuales++] = new Usuario(nombre,pass);
	}
	
	
	public void addPublicacion(String nombre, String texto) throws MemoryStorageException {
		if(posicionUsuario(nombre) == -1) {
			throw new MemoryStorageException("El usuario no existe");
		}
		if(numPublicacionesActuales >= NUM_MAXIMO_PUBLICACIONES) {
			throw new MemoryStorageException("maximo de publicaciones alcanzado");
		}
		
		Tweet tweet = new Tweet(texto,usuarios[posicionUsuario(nombre)]);
		publicaciones[numPublicacionesActuales++] = tweet;
	}
	
	public void addPublicacion(String nombre,String texto, String tipo) throws MemoryStorageException {
		if(posicionUsuario(nombre) == -1) {
			throw new MemoryStorageException("El usuario no existe");
		}
		if(numPublicacionesActuales > NUM_MAXIMO_PUBLICACIONES) {
			throw new MemoryStorageException("maximo de publicaciones alcanzado.");
		}
		if(!tipo.equalsIgnoreCase("post")) {
			throw new MemoryStorageException("Tipo de publicacion incorrecto.");
		}
		
		Post post = new Post(texto, usuarios[posicionUsuario(nombre)]);
		publicaciones[numPublicacionesActuales++] = post;
		
	}
	
	public void addPost(String nombre, String texto, int estrellas) throws MemoryStorageException {
		if(posicionUsuario(nombre) == -1) {
			throw new MemoryStorageException("El usuario no existe");
		}
		if(numPublicacionesActuales > NUM_MAXIMO_PUBLICACIONES) {
			throw new MemoryStorageException("maximo de publicaciones alcanzado.");
		}
		
		Recomendacion recomendacion = new Recomendacion(texto,usuarios[posicionUsuario(nombre)],estrellas);
		publicaciones[numPublicacionesActuales++] = recomendacion;
	}
	
	public String mostarListaPublicaciones() {
		String resultado = " ";
		for(int i = 0; i< numPublicacionesActuales; i++) {
			resultado = publicaciones[i].toString() + "/n";
			}
		return resultado;
	}
	
	public String mostrartweet() {
		String resultado = " ";
		for(int i =0; i < numPublicacionesActuales; i++) {
			if(publicaciones[i] instanceof Tweet) {
				resultado = publicaciones[i].toString()+"/n";
			}
		}
		return resultado;
	}
	
	public String mostrarPost() {
		String resultado = " ";
		for(int i = 0; i < numPublicacionesActuales; i++) {
			if(publicaciones[i] instanceof Post) {
				resultado = publicaciones[i].toString()+"/n";
			}
		}
		return resultado;
	}
	
	public String mostrarRecomendaciones() {
		String resultado = " ";
		for(int i = 0; i < numPublicacionesActuales; i++) {
			if(publicaciones[i] instanceof Recomendacion) {
				resultado = publicaciones[i].toString()+"/n";
			}
		}
		return resultado;
	}
}
