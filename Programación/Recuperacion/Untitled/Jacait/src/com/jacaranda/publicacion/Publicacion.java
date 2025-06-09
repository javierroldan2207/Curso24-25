package com.jacaranda.publicacion;

import java.time.LocalDate;
import java.util.Objects;

import com.jacaranda.memoryStorage.MemoryStorageException;
import com.jacaranda.usuario.Usuario;

public class Publicacion {

	protected String texto;
	private LocalDate fechaCreacion;
	protected int valoracion;
	private int codigo;
	private int codigoSiguiente;
	private Usuario usuario;
	
	public Publicacion(String texto, Usuario usuario) {
		super();
		this.texto = texto;
		this.usuario = usuario;
	}

	protected String getTexto() {
		return texto;
	}

	protected void setTexto(String texto) {
		this.texto = texto;
	}

	public int getValoracion() {
		return valoracion;
	}

	
	
	public int getCodigo() {
		return codigo;
	}

	public LocalDate getFechaCreacion() {
		return fechaCreacion;
	}
	
	public String getLoginUsuario() {
		return this.usuario.getLogin().toString();
	}

	@Override
	public int hashCode() {
		return Objects.hash(codigo);
	}

	@Override
	public boolean equals(Object obj) {
		return this==obj || obj==null && obj instanceof Publicacion && this.hashCode() == obj.hashCode();
	}
	
	
	public boolean valorar(String publi) throws MemoryStorageException {
		boolean bandera = false;
		if(publi == null) {
			bandera = false;
			throw new MemoryStorageException("No se a encontardo ninguna publicacion para valorar.");
		}
		return bandera;
	}
	
	

}
