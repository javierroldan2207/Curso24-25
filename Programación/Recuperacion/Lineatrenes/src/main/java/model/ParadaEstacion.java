package main.java.model;

import java.time.LocalDate;
import java.util.Objects;

public class ParadaEstacion {
	
	private String estacion;
	private LocalDate momento;
	
	
	public ParadaEstacion(String estacion, LocalDate momento) {
		super();
		this.estacion = estacion;
		this.momento = momento;
	}


	public String getEstacion() {
		return estacion;
	}


	public LocalDate getMomento() {
		return momento;
	}


	@Override
	public int hashCode() {
		return Objects.hash(estacion);
	}


	@Override
	public boolean equals(Object obj) {
		return this == obj || obj == null && obj instanceof ParadaEstacion && this.hashCode() == obj.hashCode();
	}


	@Override
	public String toString() {
		return "Nombre de la parada:" + " " + estacion +" " + ", hora: "+ "" + momento + ".";
	}

}
