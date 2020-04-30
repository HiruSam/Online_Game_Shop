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
 * Servlet implementation class PaymentDetails
 */
@WebServlet("/PaymentDetails")
public class PaymentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentDetails() {
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
		String UserName = request.getParameter("UserName");
		String GameID = request.getParameter("GameID");
		String GamePrice = request.getParameter("GamePrice");
		String PayMethod = request.getParameter("PayMethod");
		String CardNumber = request.getParameter("CardNumber");
		String SecurityCode = request.getParameter("SecurityCode");
		String ExpirationM = request.getParameter("ExpirationM");
		String ExpirationY = request.getParameter("ExpirationY");
		
		Payment payment = new Payment();
		
		payment.setUserID(UserID);
		payment.setUserName(UserName);
		payment.setGameID(GameID);
		payment.setGamePrice(GamePrice);
		payment.setPayMethod(PayMethod);
		payment.setCardNumber(CardNumber);
		payment.setSecurityCode(SecurityCode);
		payment.setExpirationMonth(ExpirationM);
		payment.setExpirationYear(ExpirationY);
		
		PaymentDetailsService PDS = new PaymentDetailsServiceImpl();
		PDS.PaymentDetails(payment);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Notice.jsp");
		dispatcher.forward(request, response);
	}

}
