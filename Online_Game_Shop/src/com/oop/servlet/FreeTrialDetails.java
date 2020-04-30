package com.oop.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.FreeTrial;
import com.oop.util.DBConnection;

/**
 * Servlet implementation class FreeTrialDetails
 */
@WebServlet("/FreeTrialDetails")
public class FreeTrialDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeTrialDetails() {
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
		String Gender = request.getParameter("gender");
		
		FreeTrial FreeT = new FreeTrial();
		
		FreeT.setUserID(UserID);
		FreeT.setUserName(UserName);
		FreeT.setGender(Gender);
		
		try {
			
			Connection con = DBConnection.getConnection();
			PreparedStatement FTR = con.prepareStatement("insert into FreeTrial values (?, ?, ?)");
			
			FTR.setString(1, FreeT.getUserID());
			FTR.setString(2, FreeT.getUserName());
			FTR.setString(3, FreeT.getGender());
			FTR.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			response.sendRedirect("Thanks.jsp");
		}
	}

}
