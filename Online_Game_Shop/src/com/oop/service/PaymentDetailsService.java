package com.oop.service;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.oop.model.Payment;

public interface PaymentDetailsService {

	public static final Logger log = Logger.getLogger(PaymentDetailsService .class.getName());
	
	public void PaymentDetails(Payment payment);
	
	public ArrayList<Payment> DisplayPaymentDetails();
	
	public void updateCardNumber(String CardNumber , String payment );
	
	public void deletePaymentHistory(String UserID);

	
	
}

