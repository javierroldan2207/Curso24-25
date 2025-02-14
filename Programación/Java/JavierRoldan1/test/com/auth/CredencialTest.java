package com.auth;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class CredencialTest {

	@Test
	void testSpasswordSegura() {
		Credencial c1 = new Credencial("Javier","Roldan","Ho4oola2h");
		assertTrue(c1.esPasswordSegura());
		c1.setPassword("quququ");
		assertFalse(c1.esPasswordSegura());
		c1.setPassword("111wwweee");
		assertFalse(c1.esPasswordSegura());
		c1.setPassword("lkadsjnajnf");
		assertFalse(c1.esPasswordSegura());
		c1.setPassword("AJAJAJAJ3");
		assertTrue(c1.esPasswordSegura());
	}
	
	@Test
	void testComprobarPassword() {
		Credencial c1 = new Credencial("Javier","Roldan","Ho4oola2h");
		assertTrue(c1.comprobarPassword("Ho4oola2h"));
		assertFalse(c1.comprobarPassword("werweD3"));
	}
	
}




