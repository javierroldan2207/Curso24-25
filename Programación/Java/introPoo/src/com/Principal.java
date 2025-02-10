package com;

import java.time.LocalDate;

import com.model.Estudiante;
import com.model.Persona;
import com.model.Profesor;


public class Principal {

	public static void main(String[] args) {
		
		Persona persona = new Persona("Javier","Roldan","11111111N",LocalDate.of(2001, 07, 22));
		
		Estudiante jr = new Estudiante("Jose","Garcia","2222222M",LocalDate.of(2002, 06, 10));
		
		Estudiante carlos = new Estudiante("Carlos","Morenos","3333333J",LocalDate.of(2006, 04, 07),"C07",1,"DAW");
		
		Profesor profesor1 = new Profesor("Juan","Dominguez","66666666H",LocalDate.of(1876, 10, 12),"Matematico");
		
		
		
		//System.out.println(persona.getDni());
		System.out.println(carlos.getFechaNacimiento());
		System.out.println(carlos.toString());
		System.out.println(profesor1);
		
		System.out.println(jr.equals(carlos));
		System.out.println(jr.equals(jr));
	}

}
