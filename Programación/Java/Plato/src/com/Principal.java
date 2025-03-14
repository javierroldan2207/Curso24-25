package com;

import com.model.Plato;
import com.model.Vino;
import com.model.exception.GraduacionVinoException;
import com.model.exception.PrecioIncorrectoException;

public class Principal {

	public static void main(String[] args) throws PrecioIncorrectoException, GraduacionVinoException {
		
		try{
			Plato plato1 = new Plato("Patatas fritas",2);
			Plato plato2 = new Plato("Macarrones",1);
			Plato plato3 = new Plato("Hamburguesa",0);
			}catch(PrecioIncorrectoException e) {
				System.out.println(e.getLocalizedMessage());
			}finally{
				System.out.println("Creacion de platos finalizado.");
			}
				
		try {
			Vino vino1 = new Vino("Tinto",1);
			Vino vino2 = new Vino("Blanco",0);
		}catch (GraduacionVinoException e){
			System.out.println(e.getLocalizedMessage());
		}finally{
			System.out.println("Creacion de vinos finalizado.");
		}

		
		Plato plato = new Plato("h",10);
		Plato plato12 = new Plato("h",10);
		System.out.println(plato.equals(plato12));
		
		Vino v = new Vino("j",2);
		Vino v1 = new Vino("j",0.2);
		System.out.println(v.equals(v1));
		
		System.out.println(plato.toString());	
		System.out.println(plato.getprecioVentaPublico());
		
		System.out.println(v.getGraduacion());
		plato.setVinoRecomendado(v);
		System.out.println(plato.toString());
		System.out.println(plato.getGradosvinorecomendado(v));

	}

}
