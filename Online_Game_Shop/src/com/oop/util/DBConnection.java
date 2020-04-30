package com.oop.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		String Driver = "com.mysql.jdbc.Driver";
		String URL = "jdbc:mysql://localhost:3306/gamingsite";
		String UserName = "root";
		String Password = "root";
		
		
		Class.forName(Driver);
		Connection conn = DriverManager.getConnection(URL, UserName, Password);
		
		return conn;
	}


}
