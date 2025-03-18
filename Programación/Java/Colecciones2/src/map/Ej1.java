package map;

import java.util.HashMap;
import java.util.Map;

public class Ej1 {

	public static void main(String[] args) {
		
		Map<String,Integer> mapa = new HashMap<>();
		mapa.put("Manuel", 20);
		mapa.put("Javier",23);
		mapa.put("Juan", 25);
		
		
		mapa.forEach((String k, Integer v) ->{
			System.out.println("La persona con nombre "+k+" tiene "+v+" años.");
		});
		
		
	}

}
