<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "css/HnF.css" type = "text/css" rel = "stylesheet"/>
<title>OOP Project - Gaming Site</title>

<style type="text/css">
			
			h2
			{
				color: #fff;
				width: 200px;
				margin: 0% auto;
				padding: 20px 10px;
			}
			h3
			{
				color: #333;
				width: 300px;
				margin: 5% auto;
			}
			input[type=text], select 
			{
 				width: 75%;
 				padding: 10px 16px;
 				margin: 8px 0;
 				display: inline-block;
 				border: 1px solid #ccc;
 				border-radius: 4px;
 				box-sizing: border-box;
			}
			input[type=submit] 
			{
 				width: 75%;
	 			background-color: green;
 				color: white;
 				padding: 10px 10px;
 				margin: 2px auto;
 				border: solid;
 				border-radius: 4px;
 				cursor: pointer;
			}
			
			form
			{
 				text-align: left;
 				width: 450px;
 				margin: 0 auto;
			}
			.border
			{
				width:600px;
				height:400px;
				padding:100px ,100px;
				border-width:2px;
				border-color:black;
				border:solid;
				margin: 0 auto;
				color:#fff;
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
			<br>
		</div>


<div class = "border">
	
			<h2><u><i> Free Trial </i></u></h2>
	
<form id="FreeTrial" name="FreeTrial" action="FreeTrialDetails" method="post">  
<pre>
		
User ID 		<input id="User_ID" type="text" name="UserID" />
	    	
User Name 		<input id="User_Name" type="text" name="UserName" />

Gender 
	      	<input type="radio" name="gender" value="1" /> Male
	      
	    	<input type="radio" name="gender" value="2" /> Female

	     
	    <input type="submit" name="PlayGame" id="PlayGame" value="PlayGame" /> 
	                
</pre>
</form>
	  
</div>
		</div>
		
		<div class="footer">
			<p>© 2019 Viking Gaming. All Rights Reserved </p>
		</div>
		
	</div>

</body>
</html>