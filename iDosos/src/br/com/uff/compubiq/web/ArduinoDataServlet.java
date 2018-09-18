package br.com.uff.compubiq.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.uff.compubiq.model.ArduinoConnector;
import br.com.uff.compubiq.model.LocalArduinoConnector;

/**
 * Servlet implementation class ArduinoDataServlet
 */
@WebServlet("/ArduinoDataServlet")
public class ArduinoDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ArduinoConnector javino;
    HashMap<String, Double> temp;
    HashMap<String, Double> lum;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArduinoDataServlet() {
        super();
        // TODO Auto-generated constructor stub
        temp = new HashMap<String, Double>();
        lum  = new HashMap<String, Double>();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String source = request.getParameter("source");
		String port   = request.getParameter("port");
		if (source == "local") {
			javino = new LocalArduinoConnector(port);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
