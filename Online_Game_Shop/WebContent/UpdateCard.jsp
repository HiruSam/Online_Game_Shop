<%@page import="com.oop.model.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OOP Project - Gaming Site</title>
<style>
	.border
	{
		width:900px;
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
	.Submit-button
	{
	    background-color: black;
		color: white;
	    width: 50%;
	    padding: 10px 16px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	}
</style>
</head>
<body>
<div class = "border">
	
<h2 class = "h2"> <u> <i> <center> Update Card Number  </center> </i> </u> </h2>

<%
		Payment payment = new Payment();
%>

<form action="UpdateCardNumber" method="post">
<pre>
	UserID   		<input id="User_ID" type="text" name="UserID"  value="<%= payment.getUserID() %>"/>
			
	Card Number		<input id="Card_Number" type="text" name="CardNumber"value = "<%= payment.getCardNumber() %>"/>
	
	<input type="submit" name="submitPayment" value="Update"  class="Submit-button"/>
</pre>
</form>

</div>
</body>
</html>