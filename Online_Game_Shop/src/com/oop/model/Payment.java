package com.oop.model;

public class Payment {

	private String UserID;
	
	private String UserName;
	
	private String GameID;
	
	private String GamePrice;
	
	private String PayMethod;
	
	private String CardNumber;
	
	private String SecurityCode;
	
	private String ExpirationMonth;
	
	private String ExpirationYear;

	public String getUserID() {
		return UserID;
	}

	public void setUserID(String userID) {
		UserID = userID;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getGameID() {
		return GameID;
	}

	public void setGameID(String gameID) {
		GameID = gameID;
	}

	public String getGamePrice() {
		return GamePrice;
	}

	public void setGamePrice(String gamePrice) {
		GamePrice = gamePrice;
	}

	public String getPayMethod() {
		return PayMethod;
	}

	public void setPayMethod(String payMethod) {
		PayMethod = payMethod;
	}

	public String getCardNumber() {
		return CardNumber;
	}

	public void setCardNumber(String cardNumber) {
		CardNumber = cardNumber;
	}

	public String getSecurityCode() {
		return SecurityCode;
	}

	public void setSecurityCode(String securityCode) {
		SecurityCode = securityCode;
	}

	public String getExpirationMonth() {
		return ExpirationMonth;
	}

	public void setExpirationMonth(String expirationMonth) {
		ExpirationMonth = expirationMonth;
	}
	public String getExpirationYear() {
		return ExpirationYear;
	}

	public void setExpirationYear(String expirationYear) {
		ExpirationYear = expirationYear;
	}
	
	
	
}
