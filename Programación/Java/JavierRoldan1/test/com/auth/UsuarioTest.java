package com.auth;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class UsuarioTest {

	@Test
	void testModificarPassword() {
		Usuario u1 = new Usuario("Javier", "Roldan", "Javier123");
		assertTrue(u1.modificarPassword("JR4ier123", "Javier123", "JR4ier123"));
		assertFalse(u1.modificarPassword("Javier123", "Javier123", "Javier123"));
		assertFalse(u1.modificarPassword("Javier123", "javier123", "javier123"));


	}
	
	@Test
	void testHacerLogin(){
		Usuario u1 = new Usuario("Javier", "Roldan", "Javier123");
		assertTrue(u1.hacerLogin("Javier","Javier123"));
	}
}
