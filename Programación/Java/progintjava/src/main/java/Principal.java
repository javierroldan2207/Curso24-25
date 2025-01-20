package main.java;

import main.java.model.Persona;

public class Principal {

	public static void main(String[] args) {
		
		Persona javier = new Persona("Javier",1.7,23,60,"Europeo",true);
		
		Persona paco = new Persona("Paco",1.90,40,90,"Europeo",false);
		
		System.out.println(javier.getNombre());
	}
	
}

