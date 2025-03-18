package com.main;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class Principal {

	public static void main(String[] args) {

		Set<Integer> hash = new HashSet<>();
		Set<Integer> tree = new TreeSet<>();
		Set<Integer> linked = new LinkedHashSet<Integer>();
		List<Integer> lista = new ArrayList<>();
		
		for (int i = 0; i<10; i++) {
			hash.add(i);
			tree.add(i);
			linked.add(i);
			lista.add(i);
		}
		
		for(Integer n:hash) {
			System.out.println(n);
		}
		
		System.out.println("---SOLO PARA LISTAS-");
		for(int i = 0; i<lista.size(); i++) {
			System.out.println(lista.get(i));
		}
		
		
	}

}
