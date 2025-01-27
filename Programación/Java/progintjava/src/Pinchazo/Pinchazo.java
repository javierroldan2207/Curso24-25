package pinchazo;

public class Pinchazo {

	public static void main(String[] args) {
		
		System.out.println(buscaPinchazo(90,91));
		System.out.println(buscaPinchazo(0,359));
		System.out.println(buscaPinchazo(0,180));
	}
	
		
	public static String buscaPinchazo(int comienzo, int pinchazo) {
		String resultado = "";
		int diferencia = 0;
		if (comienzo > pinchazo) {
			diferencia = comienzo - pinchazo;
		}else {
			diferencia = pinchazo - comienzo;
		}
		
		if (diferencia == 180) {
			resultado = "DA IGUAL";
		}else if (diferencia > 180) {
			resultado = "DESCENDENTE";
		}else {
			resultado = "ASCENDENTE";
		}
		return resultado;
	} 

}

