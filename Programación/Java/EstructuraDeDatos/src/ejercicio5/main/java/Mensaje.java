package ejercicio5.main.java;

import java.time.LocalDateTime;

public class Mensaje {
	
	private Persona remitente;
	private String mensaje;
	private LocalDateTime fecha;
	private int id;
	private static int secuencia=1;
	
	
	public Mensaje(Persona remitente, String mensaje) {
		super();
		this.remitente = remitente;
		this.mensaje = mensaje;
		this.fecha = LocalDateTime.now();
		this.id = secuencia++;
	}


	@Override
	public String toString() {
		return "Mensaje [remitente=" + remitente + ", mensaje=" + mensaje + ", fecha=" + fecha + ", id=" + id + "]";
	}
	
	
}
