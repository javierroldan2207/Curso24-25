package com.model;

import java.util.List;

public class Cuaderno {
	
	private int capacidad;
	private Tarea[] tareas;
	
	public Cuaderno(int capacidad) {
		super();
		this.capacidad = capacidad;
	}
	
	public void agregarTarea(String lineaTarea) {
		String[] valores = lineaTarea.split(" ");
		int prioridad; Integer.valueOf(valores[0]);
		int duracion = Integer.valueOf(valores[1]);
		boolean asignada = false;
		
		for(int i = 0; i<tareas.length; i++) {
			if (tareas[i]==null) {
				this.tareas[i] = new Tarea[prioridad,duracion];
				
			}
		}
	}
    

}
