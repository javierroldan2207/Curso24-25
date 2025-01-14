package ejercicios;

public class recorrer {

	public static void main(String[] args) {
		//Mostrar filas y columnas seguidas de una array.
		
		int [][] matriz = new  int [3][3];
		
		for(int[]fila:matriz) {
			for(int celda:fila) {
				System.out.println(celda);
			}
		}
	}
	
	

}
