<%@page import="com.oop.model.Games" %>
<%@page import="com.oop.service.*" %>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "css/HnF.css" type = "text/css" rel = "stylesheet"/>
<link href = "css/ListGames.css" type = "text/css" rel = "stylesheet"/>
<title>OOP Project - Gaming Site</title>
</head>
<body>
	<div class = "padding-all">
	<div class="header">
		<h1><img src = "images\12.png">IKING GAMING</h1>
	</div>
	<div>
	<ul class = "nav_bar">
		<li style="float:right"><a href ="Logout.jsp">Log out</a></li>	
	</ul>
	</div>
	
	
	<h2 align = "center">List Of Games</h2>
	<div class= "add">
	<form method = "POST" action = "AddGames.jsp">
		<table>
			<tr>
				<td>
					<input type = "submit" value = "Add Games">
				</td>
			</tr>
		</table>
	</form>
	</div>
	<br><br>
	<center>
	<table border = "1">		
		<tr>
			<th>Game ID</th>
			<th>Game Name</th>
			<th>Game Type</th>
			<th>Price</th>
			<th>Select</th>
		</tr>
		<% 
			GamesService gamesService = new GamesServiceImpl();
			ArrayList<Games> arrayList = gamesService.getGames();
			
			for(Games game : arrayList){
		%>
		
		<tr>
			<td> <%=game.getGameID() %></td>
			<td> <%=game.getGameName() %></td>
			<td> <%=game.getGameType() %></td>
			<td> <%=game.getPrice() %></td>
			<td>
				<div class = "sel">
				<form method = "POST" action = "GetGameServlet">
					<input type = "hidden" name = "gameID" value = "<%=game.getGameID() %>">
					<input type = "submit" value = "Select Game" >
				</form>
				</div>
			</td>			
		</tr>
		<% } %>
	</table>
	</center>
	<div class="footer">
		<p>© 2019 Viking Gaming. All Rights Reserved </p>
	</div>
	</div>
</body>
</html>