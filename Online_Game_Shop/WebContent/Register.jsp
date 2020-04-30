<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "css/HnF.css" type = "text/css" rel = "stylesheet"/>
<link href = "css/Register.css" type = "text/css" rel = "stylesheet"/>
<title>OOP Project - Gaming Site</title>
</head>
<body>
	<div class="padding-all">
		
		<div class="header">
			<h1><img src = "images\12.png">IKING GAMING</h1>
		</div>
		
		<div>
			<ul class = "nav_bar">
				<li><a href = "Login.jsp">Home</a></li>		
				<li><a href = "Login.jsp">Contact Us</a></li>        			              								                  
				<li style="float:right"><a href ="Login.jsp">Log in</a></li>	
				<li style="float:right"><a href = "Register.jsp">Sign Up</a></li>
			</ul>
		</div>

		<div class = "design">
			<div class = "register_box">
				<form name = "register" action = "Register" method = "post">
					<label> Name : </label> <input type = "text" name = "name" required><br><br>
					<label> Email : </label> <input type = "text" name = "email" required><br><br>
					<label> Username : </label> <input type = "text" name = "username" required><br><br>
					<label> Password : </label> <input type = "password" name = "password" id = "pwd" required><br><br>
					<input type = "submit" value = "Sign Up">
				</form>
			</div>
		</div>
		
		<div class="footer">
			<p>© 2019 Viking Gaming. All Rights Reserved </p>
		</div>
		
	</div>
	
		
	
</body>
</html>