package EjerciciosColecciones;

import java.util.ArrayList;
import java.util.List;

public class Conjuntos<T> {
    
    public static <T> List<T> unionManual(List<T> lista1, List<T> lista2) {
        List<T> resultado = new ArrayList<>(lista1); 
        
        for (T elemento : lista2) { 
            if (!resultado.contains(elemento)) { 
                resultado.add(elemento);
            }
        }
        return resultado;
    }

    public static <T> List<T> interseccion(List<T> lista1, List<T> lista2) {
        List<T> resultado = new ArrayList<>();
        
        for (T elemento : lista1) {
            if (lista2.contains(elemento) && !resultado.contains(elemento)) {
                resultado.add(elemento);
            }
        }
        return resultado;
    }

    public static <T> List<T> diferencia(List<T> lista1, List<T> lista2) {
        List<T> resultado = new ArrayList<>();
        
        for (T elemento : lista1) {
            if (!lista2.contains(elemento)) {
                resultado.add(elemento);
            }
        }
        return resultado;
    }

    public static void main(String[] args) {
        List<Integer> conjunto1 = new ArrayList<>();
        conjunto1.add(1);
        conjunto1.add(2);
        conjunto1.add(3);
        conjunto1.add(4);

        List<Integer> conjunto2 = new ArrayList<>();
        conjunto2.add(3);
        conjunto2.add(4);
        conjunto2.add(5);
        conjunto2.add(6);

        System.out.println(unionManual(conjunto1, conjunto2));
        System.out.println(interseccion(conjunto1, conjunto2));
        System.out.println(diferencia(conjunto1, conjunto2));
    }
}
