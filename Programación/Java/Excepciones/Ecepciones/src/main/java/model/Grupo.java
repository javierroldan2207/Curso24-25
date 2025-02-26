package main.java.model;

public class Grupo {
	
	private Persona[] personas;
	private static final int MAXIMO_INTEGRANTES = 5;
	
	
	public Grupo() {
		super();
		this.personas = new Persona[MAXIMO_INTEGRANTES];
	}
	
	public void addPersona(Persona persona) throws Exception {
		boolean encontrado = false;
		for(int i = 0; i<personas.length && !encontrado; i++) {
			if(personas[i]==null) {
				personas[i]=persona;
				encontrado = true;
			}
		}
		if (!encontrado) {
			throw new Exception("La persona no a sido añadida.");
		}
	}
	
	public String toString() {
		StringBuilder sb = new StringBuilder();
		
		for(Persona p : this.personas) {
			sb.append(sb).append(System.getProperty("line.separator"));
		}
		return sb.toString();
		
	}
}
