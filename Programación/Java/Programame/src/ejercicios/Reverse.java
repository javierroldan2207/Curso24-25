package ejercicios;

public class Reverse {

	public static void main(String[] args) {
		
		        String cadena = "perro";
		        String invertida = "";

		        for (int i = cadena.length() - 1; i >= 0; i--) {
		            invertida += cadena.charAt(i);
		        }

		        System.out.println(invertida); 
		    }
	
	}


