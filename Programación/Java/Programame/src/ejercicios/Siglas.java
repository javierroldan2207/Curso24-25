package ejercicios;

public class Siglas {

	public static void main(String[] args) {
		        String frase = "Tren Articulado Ligero  GOICOCHEA ORIOL"; 
		        String[] palabras = frase.split(" ");
		        StringBuilder siglas = new StringBuilder();

		        for (int i = 0; i < palabras.length; i++) {
		            if (!palabras[i].isEmpty() && Character.isUpperCase(palabras[i].charAt(0))) {
		                siglas.append(Character.toUpperCase(palabras[i].charAt(0)));
		            }
		        }

		        System.out.println(siglas.toString());
		    }
		
	}


