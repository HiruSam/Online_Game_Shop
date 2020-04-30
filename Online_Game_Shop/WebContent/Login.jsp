<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "css/HnF.css" type = "text/css" rel = "stylesheet"/>
<link href = "css/Login.css" type = "text/css" rel = "stylesheet"/>
<title>OOP Project - Gaming Site</title>
</head>
<body>
	<div class="padding-all">
		
		<div class="header">
			<h1><img src = "images\12.png">IKING GAMING</h1>
		</div>
		
		
		<div class = "design">
			<div class = "login_box">
				<form action = "Login"  method = "post">
					<input type="text" name = "username" placeholder = "Username" required><br><br>
					<input type="password" name = "password" placeholder = "Password " required><br><br>
					<input type="submit" value = "Login">
					<p>Not registered?<a href = "Register.jsp"> Sign Up</a></p><br>
					<p><a href = "AdminLogin.jsp">Admin Login</a></p> 
				</form>
			</div>
		</div>	
		
		<div class="footer">
		<p>© 2019 Viking Gaming. All Rights Reserved </p>
		</div>
		
	</div>
</body>
</html>