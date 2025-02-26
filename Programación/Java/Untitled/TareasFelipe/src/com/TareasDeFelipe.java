package com;

import com.model.Tarea;

public class TareasDeFelipe {

	public static void main(String[] args) {
		Tarea tarea1 = new Tarea(1, 2);
		Tarea tarea2 = new Tarea(4,3);
		
		System.out.println(tarea1.equals(tarea2));
		System.out.println(tarea1.toString());
		System.out.println(tarea2.toString());
		
		System.out.println(tarea1.compareTo(tarea2));
	}

}
