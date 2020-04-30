<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "css/HnF.css" type = "text/css" rel = "stylesheet"/>
<title>OOP Project - Gaming Site</title>
<style>
	.play-button 
	{
		float:left;
		margin-right: px;
		margin-top: 20px;
		background-color: red ;
		border: none;
		color: white;
		padding: 12px 18px;
		text-align: center;
		text-decoration: none;
		font-size: 12px;
		cursor: pointer;
		border-radius: 20px;
	}
	.buy-button
	{	
		float:left;
		margin-right: 70px;
		margin-top: 20px;
		background-color: green;
		border: none;
		color: white;
		padding: 12px 18px;
		text-align: center;
		text-decoration: none;
		font-size: 12px;
		cursor: pointer;
		border-radius: 20px;	
	}
	.border
	{
		width:400px;
		height:100px;
		padding:100px ,100px;
		border-width:2px;
		border-color:white;
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

<form>
	<div class = "border">
	<center>
	<a href = "Payment.jsp" class = "buy-button"> Buy Game </a>
	<a href = "FreeTrial.jsp" class = "play-button"> Play Game </a>
	</center>
	</div>
</form>
		<div class="footer">
			<p>© 2019 Viking Gaming. All Rights Reserved </p>
		</div>
		
	</div>

</body>
</html>