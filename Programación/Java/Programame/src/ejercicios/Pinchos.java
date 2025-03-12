package ejercicios;

public class Pinchos {
    public static void main(String[] args) {
        int[] lista1 = {11, 13, 19, 14, 18, 10, 12, 15, 20, 16};
        int[] lista2 = {20, 21, 22, 23, 24, 26, 27, 28, 29, 30};
        int[] lista3 = {5, 4, 3, 1};
        int[] lista4 = {10,7,6,3,2,1,8,5,4};
        
        System.out.println(encontrarNumeroFaltante(lista1));
        System.out.println(encontrarNumeroFaltante(lista2));
        System.out.println(encontrarNumeroFaltante(lista3));
        System.out.println(encontrarNumeroFaltante(lista4));
    }

    public static int encontrarNumeroFaltante(int[] lista) {
        int menor = lista[0];
        int mayor = lista[0];
        int sumaEsperada = 0;
        int sumaReal = 0;

        for (int num : lista) {
            if (num < menor) 
            	menor = num;
            if (num > mayor) 
            	mayor = num;
            sumaReal += num;
        }
        sumaEsperada = (mayor - menor + 1)*(menor + mayor)/2;
        return sumaEsperada - sumaReal;
    }
}

