package com.oop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oop.util.DBConnection;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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

		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		
		try {
			Connection conn = DBConnection.getConnection();
			Statement stm = conn.createStatement();
			ResultSet res = stm.executeQuery("select username, password, type from user where username = '"+username+"' and password = '"+password+"'");
	
			if(res.next()) {				
					HttpSession session = request.getSession();
					session.setAttribute("uname", username);
					response.sendRedirect("Home.jsp?uname="+res.getString(2)+"");
				}
			else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Incorrect Username or Password');");
				out.println("</script>");
				response.sendRedirect("Login.jsp");
			}
			
			
			stm.close();
			conn.close();
			
		}catch(ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
