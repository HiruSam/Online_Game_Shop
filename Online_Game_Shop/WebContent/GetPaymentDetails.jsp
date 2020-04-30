<%@page import="com.oop.model.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OOP Project - Gaming Site</title>
<style type="text/css">

			.delete-button
			{
			    background-color: black;
			    color: white;
			    width: 50%;
			    padding: 8px 100px;
			    text-align: center;
			    text-decoration: none;
			    display: inline-block;
			    font-size: 16px;
			}
			.update-button
			{
			    background-color: black;
			    color: white;
			    width: 50%;
			    padding: 8px 100px;
			    text-align: center;
			    text-decoration: none;
			    display: inline-block;
			    font-size: 16px;
			}
			.back-button
			{
			    background-color: black;
			    color: white;
			    width: 25%;
			    padding: 8px 100px;
			    text-align: center;
			    text-decoration: none;
			    display: inline-block;
			    font-size: 16px;
			}
			.border
			{
				width:800px;
				height:300px;
				padding:100px ,100px;
				border-width:2px;
				border-color:black;
				border:solid;
				margin: 5% auto;
						
			}
			input[type=text], select 
			{
 				width: 50%;
 				padding: 10px 16px;
 				margin: 8px 0;
 				display: inline-block;
 				border: 1px solid #ccc;
 				border-radius: 4px;
 				box-sizing: border-box;
			}
</style>		
</head>
<body>
<div class = "border">
<h2 class="h2"><center>Get Payment Details</center></h2>
<%
		Payment payment = new Payment();
%>

<form method="POST" action="UpdateCardNumber" >
<pre>
	
			   <input type="hidden" name="UserID"  value="<%=payment.getUserID() %>" /> 
			   <input type="submit" value="Update Card Number" class="update-button"/>
</pre>
</form>

<form method="POST" action="DeletePaymentHistory">
<pre>
			   <input type="hidden" name="UserID" value="<%=payment.getUserID() %>"/>
			   <input type="submit" value="Delete Payment Details" class="delete-button"/>
			   
			   
			   
</pre>	
</form>

</div>
</body>
</html>