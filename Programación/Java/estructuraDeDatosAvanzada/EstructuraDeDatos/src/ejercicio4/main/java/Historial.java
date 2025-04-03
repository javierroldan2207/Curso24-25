package ejercicio4.main.java;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Historial {

	private List<Pagina> historial;

	public Historial(List<Pagina> historial) {
		super();
		this.historial = new ArrayList<>();
	}


    

	  public void añadirPagina(Pagina pag) throws PaginaWebException {
	        if (historial.isEmpty() || historial.get(historial.size() - 1).getFecha().isBefore(pag.getFecha())) {
	            historial.add(pag);
	        } else {
	            throw new PaginaWebException("La fecha de la nueva página debe ser posterior a la última guardada.");
	        }
	    }
	  
	  public void mostrarHistorial() throws PaginaWebException {
		  if (this.historial.isEmpty()) {
			  throw new PaginaWebException("El historial esta vacio.");
		  }else {
			  for(Pagina p : historial) {
				  System.out.println(p);
			  }
		  }
	  }
	  
	  public List<Pagina> historialDeUnDia(LocalDateTime dia) {
		 return this.historial.stream().filter(a -> a.getFecha().toLocalDate().equals(dia.toLocalDate()))
		 	 .collect(Collectors.toList());	 
	  }
	  
	  public void borrarHistorial() {
		  this.historial.clear();
		  System.out.println("Historial borrado correctamente.");
	  }
	  
	  public void boorarVisitaPagina(Pagina pagina) throws PaginaWebException {
		  if (!this.historial.contains(pagina)) {
			  throw new PaginaWebException("No se a encontrado la pagina que deseas borrar.");
		  }else {
			  this.historial.remove(pagina);
		  }
		  
	  }
    
	@Override
	public String toString() {
		return "Historial: " + historial;
	}

}
