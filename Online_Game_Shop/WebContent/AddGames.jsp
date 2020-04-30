<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "css/HnF.css" type = "text/css" rel = "stylesheet"/>
<link href = "css/AddGames.css" type = "text/css" rel = "stylesheet"/>
<title>OOP Project - Gaming Site</title>
</head>
<body>

	<div class="padding-all">
	<div class="header">
		<h1><img src = "images\12.png">IKING GAMING</h1>
	</div>
		<div>
	<ul class = "nav_bar">
		<li style="float:right"><a href ="Logout.jsp">Log out</a></li>	
	</ul>
	</div>
	
	<div class = "heading">
		<h2 align = "center"> Add games page </h2> <br>
	</div>
	
	<div class = "design">
	<div class = "add_box">
		<form method = "POST" action = "AddGameServlet">
			<table border = "0">
				<tr>
					<td><label>Name of the game : </label></td>
					<td> <input type = "text" name = "gameName"> </td>
				</tr>
	
				<tr>
					<td><label>Game Type : </label></td>
					<td> <input type = "text" name = "gameType"> </td>
				</tr>
	
				<tr>
					<td><label>Price of the game : </label></td>
					<td> <input type = "text" name = "price"> </td>
				</tr>
				<tr>
					<td><br><br></td>
					<td><br><br></td>
				</tr>
				<tr>
					<td align = "left" colspan = "2"> <input type = "submit" value = "Add Game"> </td>
				</tr>

				<tr>
					<td><br></td>
					<td><br></td>
				</tr>

				<tr>	
					<td align = "left" colspan = "2"> <input type = "reset" value = "Reset"> </td>
				</tr>
				<tr>
					<td><br></td>
					<td><br></td>
				</tr>
							
			</table>			
		</form>
		<div class = "list_box">
			<form method = "POST" action = "ListGameServlet">
				<table>
					<tr>
						<td colspan = "2"><input type = "submit" value = "List All Games"></td>
					</tr>
				</table>
			</form>	
		</div>
		</div>	
	</div>
	<div class="footer">
		<p>© 2019 Viking Gaming. All Rights Reserved </p>
	</div>

	</div>	
</body>
</html>