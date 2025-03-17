package map;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EjercicioClase {

    public static void main(String[] args) {
        
        Map<String, Map<Integer, Integer>> mapa2 = new HashMap<>();
        List<Integer> numeros = Arrays.asList(1, 13, 23, 14, 19, 21, 30, 32, 14, 23, 30, 32, 1);

        numeros.forEach(n -> {
            String clave = (n % 2 == 0) ? "par" : "impar";
            
            mapa2.putIfAbsent(clave, new HashMap<>());
            Map<Integer, Integer> contador = mapa2.get(clave);
            
            contador.put(n, contador.getOrDefault(n, 0) + 1);

        });

        System.out.println(mapa2);
    }
}
