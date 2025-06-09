package com.jacaranda.publicacion;

import java.time.LocalDate;
import java.util.Objects;

import com.jacaranda.usuario.Usuario;

public abstract class Publicacion implements Valorable, Comparable<Publicacion>{

	protected String texto;
	private LocalDate fechaCreacion;
	protected int valoracion;
	private int codigo;
	private int codigoSiguiente = 0;
	private Usuario usuario;
	
	public Publicacion(String texto, Usuario usuario) {
		super();
		this.texto = texto;
		this.usuario = usuario;
		this.codigoSiguiente++;
		this.fechaCreacion = LocalDate.now();
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

	@Override
	public abstract boolean valorar(String publi) throws PublicacionException ;
	
	@Override
	public int compareTo(Publicacion otra) {
	   return Integer.compare(this.codigo, otra.codigo);
	}
	
	
	public boolean isAnterior(Publicacion otra) {
        return this.fechaCreacion.isBefore(otra.getFechaCreacion());
    }

}
