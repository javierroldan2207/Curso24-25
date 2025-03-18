package map;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class NumerosPorTipo {

	public static void main(String[] args) {
		
		Map<String,Collection<Integer>> numeros = new HashMap<>();
		
		numeros.put("par", Arrays.asList(2,4,6,8,10,12,120));
		numeros.put("impar", Arrays.asList(21,41,61,81,101,121));
		
		Set<Integer> set = new TreeSet<>();
		
		numeros.forEach((String k, Collection<Integer> v)-> {set.addAll(numeros.get(k));});
		
		for(int n : set) {
			System.out.println(n);
		}
	}

}
