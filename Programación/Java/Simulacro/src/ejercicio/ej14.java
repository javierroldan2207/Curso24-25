package ejercicio;

import java.util.Scanner;

public class ej14 {

	public static void main(String[] args) {
		

		Scanner sc = new Scanner(System.in);
		System.out.println("Bienvenido al buzón de voz del gimnasio Jacafit");
		int opcion = 0;
		String m1 = "vvfdvd";
		String m2 = "sdf";
		
		while (opcion != 5) {
			
			System.out.println("Menu:");
	        System.out.println("1. Consultar número de mensajes");
	        System.out.println("2. Consultar mensaje");
	        System.out.println("3. Añadir mensaje");
	        System.out.println("4. Borrar todos los mensajes");
	        System.out.println("5. Salir");
	        System.out.print("Seleccione una opción: ");
	        
	        opcion = Integer.valueOf(sc.nextLine());
	        if (opcion == 1) {
	        	 System.out.println("Hay "+numMensajes(m1,m2)+" mensaje/s en el buzón.");
	        }else if (opcion == 2) {
	        	System.out.println("¿que mensaje desea consultar?");
	        	opcion = Integer.valueOf(sc.nextLine());
	        	
	        	if (opcion == 1) {
	        		System.out.println("1. Oir");
	        		System.out.println("2. Borrar");
	        		opcion = Integer.valueOf(sc.nextLine());
	        		if (opcion == 1) {
	        			System.out.println(m1);
	        		}else {
	        			m1="";
	        		}
	        	}else if (opcion == 2) {
	        		System.out.println("1. Oir");
	        		System.out.println("2. Borrar");
	        		opcion = Integer.valueOf(sc.nextLine());
	        		if (opcion == 1) {
	        			System.out.println(m2);
	        		}else {
	        			m2="";
	        		}
	        	}
	        	
	        }else if (opcion == 3) {
	        	if (m1 != "" && m2 != "") {
	        		System.out.println("Buzon completo, no puede dejar su mensaje.");
	        	}if (m1 == "") {
	        		System.out.println("Introduzca su mensaje: ");
	        		m1 = sc.nextLine();
	        	}else if (m2 == "") {
	        		System.out.println("Introduzca su mensaje: ");
	        		m2 = sc.nextLine();
	        	}
	        	
	        }else if (opcion == 4) {
	        	m1 = "";
	        	m2 = "";
	        	System.out.println("Mensajes borrdos.");
	        }else if (opcion == 5) {
	        	System.out.println("Adios, buen dia.");
	        }else {
	        	System.out.println("Opción introducida incorrecta.");
	        }
			
		}
		sc.close();
	}
	
	public static int numMensajes(String mnsj1, String mnsj2) {
		int contador = 0;
		if (mnsj1 != ""){
			contador++;
		}if (mnsj2 != "") {
			contador++;
		}
		
		return contador;
	}
	

}