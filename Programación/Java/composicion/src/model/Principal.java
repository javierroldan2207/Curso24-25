package model;

import com.model.Linea;
import com.model.Punto;

public class Principal {

	public static void main(String[] args) {

		Punto p1 = new Punto(1,3);
		Punto p2 = new Punto(4,1);
		Punto p3 = new Punto(1,3);
		
		
		System.out.println(p1);
		System.out.println(p2);
		
		Linea l1 = new Linea(1,2,4,5);
		
		System.out.println(l1);
		System.out.println(p1.equals(p3));
		
	}
}
