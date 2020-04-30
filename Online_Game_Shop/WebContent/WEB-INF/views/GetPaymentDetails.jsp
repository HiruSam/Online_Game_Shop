<%@page import="com.oop.model.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Payment Details</title>
</head>
<body>
<h2 class="h2">Get Payment Details</h2>
<%
		Payment payment = (Payment) request.getAttribute("payment");
%>

<form action="UpdateCardNumber" method="post">

UserID   		<input id="User_ID" type="text" name="UserID"  value="<%=payment.getUserID() %>"/>
			
Card Number		<input id="Card_Number" type="text" name="CardNumber"value = "<%=payment.getCardNumber() %>"/>

		<input type="hidden" name="UserID"  value="<%=payment.getUserID() %>" /> 
		<input type="submit" value="Update Card Number" class="update-button"/>

</form>

<form method="POST" action="DeletePaymentHistory">

		<input type="hidden" name="UserID" value="<%=payment.getUserID() %>"/>
		<input type="submit" value="Delete Payment Details" class="delete-button"/>
		
</form>

</body>
</html>