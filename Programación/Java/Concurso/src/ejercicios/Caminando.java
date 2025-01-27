package ejercicios;

public class Caminando {

	public static void main(String[] args) {
		int[] numero= {1200,1250,1350,1400,1550,1550,1550,1700,1500,1300};
		System.out.println(estadoPrueba(300,numero));
	}
	
	public static boolean estadoPrueba(int desnivel,int [] metros) {
		int acomula = 0;
		int partida = 0;
		int siguiente = 0;
		boolean estado = true;
		for (int i = 1; i < metros.length && estado; i ++) {
			partida = metros[i-1];
			siguiente = metros[i];
			if (partida < siguiente) {
				acomula += siguiente-partida;
				
			}else if (partida >= siguiente) {
				acomula = 0;
			}
			if (acomula > desnivel) {
				estado = false;
			}
		}
		return estado ;
	}
}
