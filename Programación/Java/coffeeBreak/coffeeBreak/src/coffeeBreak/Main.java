package coffeeBreak;


public class Main {

	public static void main(String[] args) {
		
		MaquinaCafe m1 = new MaquinaCafe(null, 0, 0, 0, 0, 0, 0, 0, null);
		MaquinaCafe m2 = new MaquinaCafe(null, 0, 0, 0, 0, 0, 0, 0, null);
		m1.encender();
		m2.encender();
		m1.servirCafe();
		m1.servirCapuchino();
		m1.servirChocolate();
		m1.mostrarVentas();
		m1.mostrarInformacion();
		
	}

}
