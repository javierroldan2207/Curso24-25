package com.model;

public class principal {

	public static void main(String[] args) {
		
		Figuras figura = new Circulo(3);
		System.out.println(figura.calcularArea());
		System.out.println(figura);
		figura = new Triangulo(1,1,1);
		System.out.println(figura.calcularArea());
		System.out.println(figura);
	}

}
