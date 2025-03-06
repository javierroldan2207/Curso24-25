package com;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		int numero = 0;
		
	do {
		
		try {
			numero = Integer.valueOf(new Scanner(System.in).nextLine());
	
		}catch (NumberFormatException e){
			System.out.println(e.getLocalizedMessage());
		}
		
	}while(numero >= 0);
		for (int i = 0; i<10; i++) {
			System.out.println(i*numero);
		}
			
		
	}

}
