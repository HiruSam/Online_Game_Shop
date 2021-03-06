package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Games;
import com.oop.service.GamesService;
import com.oop.service.GamesServiceImpl;
/**
 * Servlet implementation class UpdateGameServlet
 */
@WebServlet("/UpdateGameServlet")
public class UpdateGameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGameServlet() {
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
		
		Games game = new Games();
		
		String gameID = request.getParameter("gameID");
		game.setGameID(gameID);
		game.setGameName(request.getParameter("gameName"));
		game.setGameType(request.getParameter("gameType"));
		game.setPrice(request.getParameter("price"));
		
		GamesService gamesService = new GamesServiceImpl();
		gamesService.updateGame(gameID, game);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ListGames.jsp");
		dispatcher.forward(request, response);

	}

}
