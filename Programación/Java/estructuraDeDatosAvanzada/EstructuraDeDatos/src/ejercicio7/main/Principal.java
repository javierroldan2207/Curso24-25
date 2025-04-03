package ejercicio7.main;

import ejercicio7.main.java.Caja;
import ejercicio7.main.java.exceptio.CajaException;

public class Principal {
    public static void main(String[] args)  {
    	
    	
    	
    	try {
    		
    		Caja c1 = new Caja(1);
    		c1.abrirCaja(1);
    		c1.cerrarCaja(1);
    	}catch(CajaException c) {
    		System.out.println(c.getMessage());
    	}
    }
}
