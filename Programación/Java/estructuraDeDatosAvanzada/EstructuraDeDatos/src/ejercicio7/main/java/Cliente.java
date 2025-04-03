package ejercicio7.main.java;

import java.util.Objects;

public class Cliente implements Comparable<Cliente> {
	
	private static int contadorClientes = 1;
	private int numero;
	private int numCaja;

	public Cliente() {
		super();
		this.numero = numero;
		this.numCaja = numCaja;
		this.contadorClientes++;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public void setNumCaja(int numCaja) {
		this.numCaja = numCaja;
	}

	@Override
	public int hashCode() {
		return Objects.hash(numero);
	}

	@Override
	public boolean equals(Object obj) {
		return this==obj || obj!= null & obj instanceof Cliente && this.hashCode() == obj.hashCode();
	}

	

	@Override
	public int compareTo(Cliente o) {
		return Integer.compare(this.numero, o.numero);
	}
	
	

}
