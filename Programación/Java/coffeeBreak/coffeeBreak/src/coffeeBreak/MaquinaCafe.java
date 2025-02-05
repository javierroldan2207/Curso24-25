package coffeeBreak;

import java.time.LocalDate;

public class MaquinaCafe {
	
	private String id;
	private static int contador =0;
	private double cafe;
	private double leche;
	private double chocolate;
	private int cafesServidos;
	private int capuchinosServidos;
	private int chocolatesServidos;
	private double importe;
	private LocalDate ultimoEncendido;
	
	
	
	public MaquinaCafe(String id, double cafe, double leche, double chocolate, int cafesServidos,
			int capuchinosServidos, int chocolatesServidos, double importe, LocalDate ultimoEncendido) {
		super();
		this.id = String.valueOf(contador++);
		this.cafe = 1000;
		this.leche = 1000;
		this.chocolate = 1000;
		this.cafesServidos = 0;
		this.capuchinosServidos = 0;
		this.chocolatesServidos = 0;
		this.importe = 0;
		this.ultimoEncendido = null;
	
	}
	
	
	public void encender() {
		this.ultimoEncendido = LocalDate.now();
		System.out.println("Maquina encendida, Ultima vez encendida: " + this.ultimoEncendido);
	}
	
	public void apagar() {
		this.importe = 0;
		this.cafesServidos = 0;
		this.chocolatesServidos = 0;
		this.capuchinosServidos = 0;
		this.ultimoEncendido = null;
		
		System.out.println("Maquina apagada.");
	}
	
	public void relenarDepositos()  {
		this.cafe = 1000;
		this.leche = 1000;
		this.chocolate = 0;
		
		System.out.println("Depositos rellenos.");
	}
	
	public boolean servirCafe() {
		if (this.cafe >= 5) {
			this.cafe -= 5;
			this.importe +=1;
			this.cafesServidos++;
			
			return true;
		}
		return false;
	}
	
	public boolean servirCapuchino() {
		if (this.cafe >= 5 && this.leche >= 10 && this.chocolate >= 9) {
			this.cafe -= 5;
			this.chocolate -= 9;
			this.leche -= 10;
			this.importe += 1.50;
			this.capuchinosServidos ++;
			
			return true;
		}
		return false;
	}	
	
	public boolean servirChocolate() {
		if (this.chocolate >=20 && this.leche >= 10) {
			this.chocolate -= 20;
			this.leche -= 10;
			this.importe += 0.90;
			this.chocolatesServidos++;
			
			return true;
		}
		return false;
	}
	
	public double mostrarVentas() {
		return  this.importe;
	}
	
	public void mostrarInformacion() {
		System.out.println("Id de la maquina: "+this.id);
		System.out.println("Ultima vez encendida: "+this.ultimoEncendido);
		System.out.println("Cantidad de cafe: "+this.cafe);
		System.out.println("Cantidad de chocolate: "+this.chocolate);
		System.out.println("Cantidad de leche: "+this.leche);
		System.out.println("Total de cafes vendidos: "+this.cafesServidos);
		System.out.println("Total de chocolates servidos: "+this.chocolatesServidos);
		System.out.println("Total de capuchinos servidos: "+this.capuchinosServidos)
		;
	}
	
	public boolean compararMaquinas() {
		if (this.id.equals(this.id)) {
			return true;
		}
		return false;
	}

}




















