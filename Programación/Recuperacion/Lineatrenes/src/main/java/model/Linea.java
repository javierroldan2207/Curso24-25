package main.java.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;

import main.java.exception.FerrocarrilesException;

public class Linea {
	
	private ParadaEstacion origen;
	private ParadaEstacion destino;
	private String identificador;
	
	private Collection<ParadaEstacion> paradas;

	public Linea(ParadaEstacion origen, ParadaEstacion destino) {
		super();
		this.origen = origen;
		this.destino = destino;
		this.paradas = new ArrayList<>();
	}

	public void addParada(ParadaEstacion parada) throws FerrocarrilesException {
		if(this.paradas.contains(parada)) {
			throw new FerrocarrilesException("La parada ya existe.");
		}
		paradas.add(parada);
	}
	
	public LocalDate obtenerHoraDeParadaEnestacion(String a) {
		return paradas.stream().filter(p -> p.getEstacion().equals(a)).map(m -> m.getMomento()).toList().getFirst();
		
	}
	
	
}
