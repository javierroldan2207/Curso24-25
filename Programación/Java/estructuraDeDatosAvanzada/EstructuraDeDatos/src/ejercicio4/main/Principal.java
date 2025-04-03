package ejercicio4.main;

import java.time.LocalDateTime;
import java.util.List;

import ejercicio4.main.java.Historial;
import ejercicio4.main.java.Pagina;
import ejercicio4.main.java.PaginaWebException;

public class Principal {

	public static void main(String[] args) {
		Pagina pagina1 = new Pagina("pagina1", LocalDateTime.now().minusDays(2));
		Pagina pagina2 = new Pagina("pagina2", LocalDateTime.now().minusDays(1));
		Pagina pagina3 = new Pagina("pagina3", LocalDateTime.now());

		Historial historial = new Historial(null);

		try {
			historial.añadirPagina(pagina1);
			historial.añadirPagina(pagina2);
			historial.añadirPagina(pagina3);

			
			historial.mostrarHistorial();
			
			System.out.println("----------------");
			
			LocalDateTime diaConsultado = LocalDateTime.now().minusDays(1);
			List<Pagina> paginasDelDia = historial.historialDeUnDia(diaConsultado);

			System.out.println("\nHistorial de páginas visitadas en el día " + diaConsultado.toLocalDate() + ":");
			for (Pagina pagina : paginasDelDia) {
				System.out.println(pagina);
				
				System.out.println("----------------");
			
			historial.boorarVisitaPagina(pagina3);
			historial.mostrarHistorial();
			historial.borrarHistorial();
			}
		} catch (PaginaWebException e) {
			System.out.println("Error: " + e.getMessage());
		}
	}
}
