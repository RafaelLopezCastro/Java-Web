package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import Clases.Encuesta;

/**
 * Servlet implementation class NewEncuestas
 */
@WebServlet("/NewEncuestas")
public class NewEncuestas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewEncuestas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String sonido = request.getParameter("sonido");
		int sonidoInt = Integer.parseInt(sonido);
		String calidad = request.getParameter("calidad");
		int calidadInt = Integer.parseInt(calidad);
		String facilidad = request.getParameter("facilidad");
		int facilidadInt = Integer.parseInt(facilidad);
		
		Encuesta newEncuesta = new Encuesta (sonidoInt, calidadInt, facilidadInt);
		
		ArrayList<Encuesta> encuestas = (ArrayList<Encuesta>) getServletContext().getAttribute("encuestas");
		
		encuestas.add(newEncuesta);
		
		response.sendRedirect("GestorEncuestas");
		
	}

}
