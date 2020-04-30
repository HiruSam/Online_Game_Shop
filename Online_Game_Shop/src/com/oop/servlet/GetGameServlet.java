package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.service.GamesService;
import com.oop.service.GamesServiceImpl;
import com.oop.model.Games;

/**
 * Servlet implementation class GetGameServlet
 */
@WebServlet("/GetGameServlet")
public class GetGameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetGameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		
		String gameID = request.getParameter("gameID");

		GamesService gamesService = new GamesServiceImpl();
		Games game = gamesService.getGameByID(gameID);
		
		request.setAttribute("game", game);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/GetGame.jsp");
		dispatcher.forward(request, response);
	}

}
