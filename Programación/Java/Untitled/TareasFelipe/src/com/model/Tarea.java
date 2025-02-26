package com.model;

public class Tarea implements Comparable<Tarea>{
	
	private int id;
	private int prioridad;
	private int duracion;
	private static int secuencia = 1; 
	
	public Tarea(int prioridad, int duracion, int id) {
		super();
		this.prioridad = prioridad;
		this.duracion = duracion;
		this.id= id ++;
	}
	
	@Override
    public String toString() {
        return "Tarea " + id + " (Prioridad: " + prioridad + ", Duración: " + duracion + " min)";
    }

	  @Override
	    public boolean equals(Object otro) {
	        boolean resultado = false;
	        if (otro instanceof Tarea) {
	            Tarea tarea = (Tarea) otro;
	            resultado = (this.id == tarea.id);
	        }
	        return resultado;
	    }
	  
	  @Override
	  public int compareTo(Tarea otro) {
		return this.prioridad == otro.prioridad ? otro.duracion - this.duracion : otro.prioridad - this.prioridad;
	}
}
