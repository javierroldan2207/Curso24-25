package auth;

import com.auth.Usuario;

public class Principal {

	public static void main(String[] args) {
		
		Usuario us1 = new Usuario("Javier","Roldan","javier@gmail.com", 4, null);
		
		System.out.println(us1.esCuentaBloqueada(2));
		
	}

	
}
