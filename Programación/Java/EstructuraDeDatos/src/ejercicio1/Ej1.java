package ejercicio1;

public class Ej1 {
		
		protected static <T> T[] reverse(T[] arrayOriginal) {
		    T[] delReves = (T[]) new Object[arrayOriginal.length];
		    
		    for (int i = 0; i < arrayOriginal.length; i++) {
		    	delReves[i] = arrayOriginal[arrayOriginal.length - 1 - i];
		    }
		    return delReves;
		}

	}

