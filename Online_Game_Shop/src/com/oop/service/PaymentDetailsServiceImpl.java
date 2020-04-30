package com.oop.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.oop.model.Payment;
import com.oop.util.DBConnection;


public class PaymentDetailsServiceImpl implements PaymentDetailsService{

	public static final Logger log = Logger.getLogger(PaymentDetailsService .class.getName());
	
	private static Connection con;

	private static PreparedStatement prestatement;
	
	private static Statement statement;
	@Override
	public void PaymentDetails(Payment payment) {
		// TODO Auto-generated method stub
		try {
			
			con = DBConnection.getConnection();			
			prestatement = con.prepareStatement("insert into Payment values(?,?,?,?,?,?,?,?,?)");
			
			prestatement.setString(1, payment.getUserID());
			prestatement.setString(2, payment.getUserName());
			prestatement.setString(3, payment.getGameID());
			prestatement.setString(4, payment.getGamePrice());
			prestatement.setString(5, payment.getPayMethod());
			prestatement.setString(6, payment.getCardNumber());
			prestatement.setString(7, payment.getSecurityCode());
			prestatement.setString(8, payment.getExpirationMonth());
			prestatement.setString(9, payment.getExpirationYear());
			prestatement.executeUpdate();
				
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			
			try {
				if (prestatement != null) {
					prestatement.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		
	}
	@Override
	public ArrayList<Payment> DisplayPaymentDetails() {
		// TODO Auto-generated method stub
		ArrayList<Payment> payment = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			statement = con.createStatement();		
			ResultSet rs = statement.executeQuery("select * from Payment");
			
			while(rs.next()) {
				Payment pay = new Payment();
								
				pay.setUserID(rs.getString("UserID"));
				pay.setUserName(rs.getString("UserName"));
				pay.setGameID(rs.getString("GameID"));
				pay.setGamePrice(rs.getString("GamePrice"));
				pay.setPayMethod(rs.getString("PayMethod"));
				pay.setCardNumber(rs.getString("CardNumber"));
				pay.setSecurityCode(rs.getString("SecurityCode"));
				pay.setExpirationMonth(rs.getString("ExpiarationM"));
				pay.setExpirationYear(rs.getString("ExpiarationY"));
				
				payment.add(pay);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			log.log(Level.SEVERE, e.getMessage());
		}
		
		return payment;
		
	}
	
	@Override								
	public void updateCardNumber(String UserID, String payment) {
		// TODO Auto-generated method stub
		
			
			try {
				con = DBConnection.getConnection();								
				prestatement  = con.prepareStatement("update Payment set CardNumber = '"+payment+"' where UserID = '"+UserID+"'");
				prestatement.executeUpdate();

			} catch (SQLException | ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				
				try {
					if (prestatement != null) {
						 prestatement.close();
					}
					if (con != null) {
						con.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		
	}
	
	
	@Override
	public void deletePaymentHistory(String UserID){
		// TODO Auto-generated method stub
		if (UserID != null && !UserID.isEmpty()) {
			
			try {
				Connection con  = DBConnection.getConnection();
				PreparedStatement PID = con.prepareStatement("delete from Payment where UserID = '"+UserID+"'");
				PID.executeUpdate();
				
			} catch (SQLException | ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
				
			} finally {
				
				try {
					if (prestatement != null) {
						prestatement.close();
					}
					if (con!= null) {
						con.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
	}
	
}

