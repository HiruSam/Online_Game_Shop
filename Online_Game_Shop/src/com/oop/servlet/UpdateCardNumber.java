package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Payment;
import com.oop.service.PaymentDetailsService;
import com.oop.service.PaymentDetailsServiceImpl;

/**
 * Servlet implementation class UpdateCradNumber
 */
@WebServlet("/UpdateCardNumber")
public class UpdateCardNumber extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCardNumber() {
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
		
		String UserID = request.getParameter("UserID");	
		String CardNumber = request.getParameter("CardNumber");
		
		
		Payment payment = new Payment();
		
		payment.setUserID(UserID);
		payment.setCardNumber(CardNumber);
		
		PaymentDetailsService paymentDetailsService = new PaymentDetailsServiceImpl();
		paymentDetailsService.updateCardNumber(UserID, CardNumber );

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UpdateCard.jsp");
		dispatcher.forward(request, response);
	}

}
