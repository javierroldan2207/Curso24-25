package main.java.model;

import java.time.LocalDate;

import main.java.exception.HogwartsException;

public class Bruja {

	private Hechizo[] historial;
	private int totalHechizos;
	private int puntosGastadosHoy;
	private LocalDate hoy;
	
	
	public Bruja() {
		super();
		this.historial = new Hechizo[100];
		this.totalHechizos = 0;
		this.puntosGastadosHoy = 0;
		this.hoy = LocalDate.now();
	}
	
	public void  lanzarEchizo(Hechizo h) throws HogwartsException {
		if(!LocalDate.now().equals(hoy)) {
			puntosGastadosHoy = 0;
			hoy = LocalDate.now();
		}
		
		if(puntosGastadosHoy + h.getPuntos() > 50) {
	        throw new HogwartsException("¡No se puede lanzar el hechizo! Excede los 50 puntos mágicos por día.");		
	        }
		
		if(totalHechizos >= 2) {
			Hechizo h1 = historial[totalHechizos -1];
			Hechizo h2 = historial[totalHechizos -2];
			
			if(h.getClass() == h1.getClass() && h.getClass() == h2.getClass()) {
				throw new HogwartsException("No se puede lanzar dos hechizos del mismo tipo mas de dos veces seguidas.");
			}
			
			historial[totalHechizos] = h;
			totalHechizos++;
			puntosGastadosHoy += h.getPuntos();
			System.out.println("Echizo lanzado correctamente.");
		}
	}
	
	public void mostrarHistorialDefensa() {
		for(int i = 0; i > totalHechizos; i++) {
			if (historial[i] instanceof Defensa) {
				System.out.println(historial[i]);
			}
		}
	}
	
	public void mostrarHistorialAtaque() {
		for(int i = 0; i > totalHechizos; i++) {
			if(historial[i] instanceof Maldicion) {
				System.out.println(historial[i]);
			}
		}
	}
	
	public void mostrarUltimoHechizoRealizado() throws HogwartsException {
		if(totalHechizos == 0) {
			throw new HogwartsException("No se a realizado ningun echizo aun.");
		}
		else {
			System.out.println(historial[totalHechizos -1]);
		}
	}
	
	public LocalDate FechaLanzamientoHechizo(String nombre) {
		LocalDate fecha = null;
		for(int i = totalHechizos -1; i >= 0; i--) {
			if(historial[i].getNombre().equalsIgnoreCase(nombre)) {
				fecha = historial[i].getFechaLanzamiento();
			}
		}
		return fecha;
	}
	
	public int consumoMagicoTotal() {
		int total = 0;
		for(int i =0; i< totalHechizos; i++) {
			total += historial[i].consumoMagico();
		}
		return total;
	}
	
	public double consumoMagicoMedio() throws HogwartsException {
		double total = 0.0;
		if(totalHechizos == 0) {
			total = 0.0;
		}
		total = (double) consumoMagicoTotal()/totalHechizos;
		return total;
	}
	
}

