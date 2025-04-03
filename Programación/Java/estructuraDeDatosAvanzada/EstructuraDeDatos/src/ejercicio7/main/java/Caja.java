package ejercicio7.main.java;

import java.util.ArrayList;
import java.util.List;

import ejercicio7.main.java.exceptio.CajaException;

public class Caja {
	
	private int numero;
	private List<Cliente> clientes;
	private char estado;
	
	public Caja(int numero) {
		super();
		this.numero = numero;
		this.clientes = new ArrayList<>();
		this.estado = 'c';
	}
	
	public void abrirCaja(int num) throws CajaException {
		if(this.numero != num || this.estado == 'a') {
			throw new CajaException("La caja no existe o ya esta abierta.");
		}else {
			this.estado ='a';
			System.out.println("Caja abierta.");
		}
	}
	
	public void cerrarCaja(int num) throws CajaException {
		if(!this.clientes.isEmpty() || this.estado == 'a') {
			throw new CajaException("La caja tiene algun cliente o ya esta cerrada.");
		}else {
			this.estado = 'c';
			System.out.println("Caja cerrada.");
		}
	}
	
	public void nuevoCliente(Cliente cliente) {
		this.clientes.add(cliente);
		cliente.setNumero(numero);
	}
	
	
	
	
}


