package ejercicios;

public class CuadradoDoblado {
	
    public static void main(String[] args) {
        int[][] matriz = {
            {1, 2, 3},
            {4, 5, 6},
            {7, 8, 36}
        };
        int[][] matriz2 = {
        	{1,1,1,1},
        	{1,1,1,1},
        	{1,1,1,1},
        	{5,1,1,1}
    	};

        if (esSumaIgualAlMayor(matriz)) {
            System.out.println("Sí");
        } else {
            System.out.println("No");
        }
        
        if (esSumaIgualAlMayor(matriz2)) {
            System.out.println("Sí");
        } else {
            System.out.println("No");
        }
    }

    public static boolean esSumaIgualAlMayor(int[][] matriz) {
        int sumaTotal = 0;
        int mayor = matriz[0][0];

        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[i].length; j++) {
                sumaTotal += matriz[i][j];
                if (matriz[i][j] > mayor) {
                    mayor = matriz[i][j];
                }
            }
        }

        sumaTotal -= mayor;

        return sumaTotal == mayor;
    }
}

