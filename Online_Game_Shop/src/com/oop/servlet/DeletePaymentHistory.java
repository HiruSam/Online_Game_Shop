package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.service.PaymentDetailsService;
import com.oop.service.PaymentDetailsServiceImpl;

/**
 * Servlet implementation class DeleteCardNumber
 */
@WebServlet("/DeletePaymentHistory")
public class DeletePaymentHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePaymentHistory() {
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
		
		PaymentDetailsService paymentDetailsService = new PaymentDetailsServiceImpl();
		paymentDetailsService.deletePaymentHistory(UserID);


		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Thanks.jsp");
		dispatcher.forward(request, response);
	}
}
