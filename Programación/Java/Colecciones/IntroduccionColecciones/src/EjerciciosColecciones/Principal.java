package map;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Principal {

	public static void main(String[] args) {

			
		Map<String, Integer> mapa = new HashMap<>();
		
		mapa.put("par", 10);
		mapa.put("impar", 7);
		
		System.out.println(mapa);  // Mostarar mapa completo.
		System.out.println(mapa.get("par"));	//Mostrar valores buscando por llave.
		System.out.println(mapa.get("impar"));
		
		//Añadir Listas a un Mapa.
		Map<String, List<Integer>> mapa2 = new HashMap<>();
		List<Integer> numeros =  Arrays.asList(1,13,23,14,19,21,30,32);
		
		
		
		//LLAMBDAS
		numeros.forEach(n -> {
			if(n%2==0) {
				if(!mapa2.containsKey("par")) {
					mapa2.put("par", new ArrayList<Integer>());
				}
				mapa2.get("par").add(n);
			}else {
				if(!mapa2.containsKey("impar")) {
					mapa2.put("impar", new ArrayList<Integer>());
				}
				mapa2.get("impar").add(n);
				}
		});
		
		System.out.println(mapa2);

	}

}
