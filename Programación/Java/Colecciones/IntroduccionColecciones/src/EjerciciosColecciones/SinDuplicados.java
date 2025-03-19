package EjerciciosColecciones;
import java.util.ArrayList;
import java.util.List;

public class SinDuplicados {
    public static List<Integer> eliminarDuplicados(List<Integer> lista) {
        List<Integer> resultado = new ArrayList<>();
        
        for (int elemento : lista) {
            if (!resultado.contains(elemento)) { 
                resultado.add(elemento); 
            }
        }
        
        return resultado;
    }

    public static void main(String[] args) {
        List<Integer> numeros = new ArrayList<>();
        numeros.add(1);
        numeros.add(2);
        numeros.add(2);
        numeros.add(3);
        numeros.add(1);
        numeros.add(4);
        
        List<Integer> sinDuplicados = eliminarDuplicados(numeros);
        System.out.println(sinDuplicados);
    }
}

