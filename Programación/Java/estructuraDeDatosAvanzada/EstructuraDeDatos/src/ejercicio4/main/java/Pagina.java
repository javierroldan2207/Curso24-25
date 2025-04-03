package ejercicio4.main.java;

import java.time.LocalDateTime;

public class Pagina {

	private String url;
	private LocalDateTime fecha;
	
	
	public Pagina(String url, LocalDateTime fecha) {
		super();
		this.url = url;
		this.fecha = fecha;
		
	}
	

	public String getUrl() {
		return url;
	}

	public LocalDateTime getFecha() {
		return fecha;
	}

	@Override
	public String toString() {
		return "Pagina, url: " + url + " , fecha: " + fecha ;
	}
	
	

}
