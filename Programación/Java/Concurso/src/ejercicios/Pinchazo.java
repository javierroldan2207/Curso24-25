package ejercicios;

public class Pinchazo {

	public static void main(String[] args) {

		System.out.println(buscaPinchazo(90,91));
		System.out.println(buscaPinchazo(0,359));
		System.out.println(buscaPinchazo(0,180));


	}
	
	public static String buscaPinchazo(int inicio, int pinchazo) {
		String resultado = "";
		int diferencia = 0;
		if (inicio >= 0 && inicio <= 360 && pinchazo >=0 && pinchazo <= 360) {
			if (inicio < pinchazo) {
				diferencia = pinchazo - inicio;
			}else {
				diferencia = inicio - pinchazo;
			}
			if (diferencia == 180) {
				resultado = "DA IGUAL";
			}else if (diferencia > 180){
				resultado = "DESCENDENTE";
			}else {
				resultado = "ASCENDENTE";
			}
		}
		return resultado;
	}

}
