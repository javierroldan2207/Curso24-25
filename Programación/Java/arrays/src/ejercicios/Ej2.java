package ejercicios;

public class Ej2 {

	public static void main(String[] args) {
		int [][] matriz = crear(3);
		for(int [] fila: matriz) {
			System.out.println();
		}
		
	}
	public static int [][]crear(int dim) {
		int [][] matriz = new int [dim][dim];
		for(int i = 0; i < dim; i ++) {
			matriz [i][i] = 1;
		}
		return matriz;
		
	}

}
