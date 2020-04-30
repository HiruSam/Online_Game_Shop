<%@page import="com.oop.model.Payment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oop.service.PaymentDetailsServiceImpl"%>
<%@page import="com.oop.service.PaymentDetailsService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "css/HnF.css" type = "text/css" rel = "stylesheet"/>
<title>OOP Project - Gaming Site</title>
<style>
.Edit-button
	{	
		float:left;
		margin-right: 70px;
		margin-top: 20px;
		background-color: black;
		border: none;
		color: white;
		padding: 12px 18px;
		text-align: center;
		text-decoration: none;
		font-size: 12px;
		cursor: pointer;
		border-radius: 20px;	
	}
	.select-button {
	    background-color: black;
	    color: white;
	    width: 100%;
	    padding: 8px 50px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	}
	.border
	{
		width:900px;
		height:300px;
		padding:100px ,100px;
		border-width:2px;
		border-color:black;
		border:transparent;
		margin: 5% auto;
		color: #fff;		
	}
</style>
</head>
<body>
	<div class="padding-all">
		
		<div class="header">
			<h1><img src = "images\12.png">IKING GAMING</h1>
		</div>
		
		<div>
			<ul class = "nav_bar">
				<li><a href = "Home.jsp">Home</a></li>		
				<li><a href = "New.jsp">Contact Us</a></li>        			              								                  
				<li style="float:right"><a href ="Logout.jsp">Log out</a></li>	
				<li style="float:right"><a href = "Register.jsp">Sign Up</a></li>
			</ul>
		</div>

<div class = "border">
 	<table border="1" cellpadding="12">
	<caption> <h2> Payment History </h2> </caption>
	<a href="GetPaymentDetails.jsp" class = "Edit-button"> Edit Details </a>
	<tr>
        <th>User ID</th>
        <th>User Name</th>
        <th>Game ID</th>
        <th>Game Price</th>
        <th>Payment Method </th>
        <th>Card Number</th>
        <th>Security Code</th>
        <th>Expiration Month</th>
    </tr>
    <%
         PaymentDetailsService paymentDetailsService = new PaymentDetailsServiceImpl();
		 ArrayList<Payment> arrayList = paymentDetailsService.DisplayPaymentDetails();
			
		for(Payment payment : arrayList){
	%>
	 <tr>
		<td> <%=payment.getUserID() %> </td>
		<td> <%=payment.getUserName() %> </td>
		<td> <%=payment.getGameID() %> </td>
		<td> <%=payment.getGamePrice() %> </td>
		<td> <%=payment.getPayMethod() %> </td>
		<td> <%=payment.getCardNumber() %> </td>
		<td> <%=payment.getSecurityCode() %> </td>
		<td> <%=payment.getExpirationMonth()%> </td>	
		<td> 
			<form method="POST" action="DisplayHistory">
				<input type="hidden" name="UserID" value="<%=payment.getUserID()%>"/>
				<input type="submit" value= "ShowDetails" class="select-button" /> 
			</form>
		</td>	
	</tr>			
	<%	
		  }
	%>     
</table>
</div>
		<div class="footer">
			<p>© 2019 Viking Gaming. All Rights Reserved </p>
		</div>
		
	</div>

</body>
</html>