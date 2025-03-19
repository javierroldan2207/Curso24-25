package EjerciciosColecciones;

import java.util.ArrayList;
import java.util.List;

public class PalabrasRepetidas {
    public static List<String> encontrarRepetidas(String frase) {
        String[] palabras = frase.toLowerCase().split(" ");
        List<String> repetidas = new ArrayList<>();
        List<String> revisadas = new ArrayList<>();
        
        for (int i = 0; i < palabras.length; i++) {
            int contador = 0;
            for (int j = 0; j < palabras.length; j++) {
                if (palabras[i].equals(palabras[j])) {
                    contador++;
                }
            }
            if (contador > 1 && !repetidas.contains(palabras[i])) {
                repetidas.add(palabras[i]);
            }
        }
        
        return repetidas;
    }

    public static void main(String[] args) {
        String frase = "Pues ná, que me dijo no ni ná";
        
        
        List<String> resultado = encontrarRepetidas(frase);
        System.out.println(resultado);
    }
}
