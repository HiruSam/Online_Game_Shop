<%@page import = "com.oop.model.Games" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "css/HnF.css" type = "text/css" rel = "stylesheet"/>
<link href = "css/GetGames.css" type = "text/css" rel = "stylesheet"/>
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
		
		<br><br><br><br>
	
	<%
		Games game = (Games)request.getAttribute("game");
	%>
	
	<form method = "POST" action = "UpdateGameServlet">
		<table>
			<tr>
				<td>Game ID</td>
				<td><input type = "text" name = "gameID" disabled = "disabled" value = "<%=game.getGameID() %>"></td>
			</tr>

			<tr>
				<td>Game Name</td>
				<td><input type = "text" name = "gameName" value = "<%=game.getGameName() %>"></td>
			</tr>

			<tr>
				<td>Game Type</td>
				<td><input type = "text" name = "gameType" value = "<%=game.getGameType() %>"></td>
			</tr>

			<tr>
				<td>Price</td>
				<td><input type = "text" name = "price" value = "<%=game.getPrice() %>"></td>
			</tr>
			<tr>
				<td><br></td>
				<td><br></td>
			</tr>
			<tr>
				<td colspan = "2">
					<input type = "hidden" name = "gameID" value = "<%=game.getGameID()%>"> 
					<input type = "submit" value = "Update Game" class = "update">			
				</td>
			</tr>			
		</table>
	</form>
	
	<table>
		<tr>
			<td colspan = "2">
				<form method = "POST" action = "DeleteGameServlet">
					<input type = "hidden" name = "gameID" value = "<%=game.getGameID()%>">
					<input type = "submit" value = "Delete Game" class = "delete">
				</form>
			</td>
		</tr>
	</table>
	<div class="footer">
		<p>© 2019 Viking Gaming. All Rights Reserved </p>
	</div>
		
	</div>
	
</body>
</html>