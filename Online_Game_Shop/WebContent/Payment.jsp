<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "css/HnF.css" type = "text/css" rel = "stylesheet"/>
<title>OOP Project - Gaming Site</title>
<style type="text/css">
			.h2
			{
				color: #fff;
				width: 200px;
				margin: 0% auto;
				padding: 20px 10px;
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
			input[type=date], select 
			{
 				width: 75%;
 				padding: 10px 16px;
 				margin: 8px 0;
 				display: inline-block;
 				border: 1px solid #ccc;
 				border-radius: 4px;
 				box-sizing: border-box;
			}
			
			
			form
			{
 				text-align: left;
 				width: 450px;
 				margin: 0 auto;
			}
			.border
			{
				width:800px;
				height:900px;
				padding:100px ,100px;
				border-width:2px;
				border-color:black;
				border:solid;
				margin: 0 auto;
				color : #fff;
				
			}
			.Add-button 
			{
			   	background-color: black;
			    color: white;
			    width: 100%;
			    padding: 8px 100px;
			    text-align: center;
			    text-decoration: none;
			    display: inline-block;
			    font-size: 16px;
			}

			.Display-button
			{
			    background-color: black;
			    color: white;
			    width: 100%;
			    padding: 8px 100px;
			    text-align: center;
			    text-decoration: none;
			    display: inline-block;
			    font-size: 16px;
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
	
<h2 class = "h2"> <center> Buy Game  </center> </h2>
<form action="PaymentDetails" method="post">
<pre>

UserID   		<input id="User_ID" type="text" name="UserID" required />
		
UserName  		<input id="User_Name" type="text" name="UserName" required />
		
GameID			<input id="Game_ID" type="text" name="GameID" />
		
GamePrice		<input id="Game_Price" type="text" name="GamePrice" />

Payment Method 	 	<select id = "PayMethod" name ="PayMethod">
						<option value = "1" > Credit Card </option>
						<option value = "2" >PayPal</option>
				 	</select>
			
Card Number		<input id="Card_Number" type="text" name="CardNumber" required/>

Security Code		<input id="Security Code" type="text" name="SecurityCode" required/>

Expiration Month 	<select id="ExpirationM" name="ExpirationM">
	
		           		<option value=""selected="selected">Month</option>
	
		           		<option value="1">January</option>                                
	
		                <option value="2">February</option>                             
		
			            <option value="3">March</option>                          
		
			            <option value="4">April</option>                          
		
			        	<option value="5">May</option>                           
		
			            <option value="6">June</option>                           
		
			            <option value="7">July</option>                          
		
			            <option value="8">August</option>                            
		
			            <option value="9">September</option>                    
		
			            <option value="10">October</option>                             
	
			            <option value="11">November</option>                            
		
			            <option value="12">December</option>                            
		
			      	</select>                       
	
Expiration Year  	<select id="ExpirationY" name="ExpirationY">
		
						<option value="" selected="selected">Year</option>
		
			            <option value="2016">2016</option>                                
		
			            <option value="2017">2017</option>                             
		
			            <option value="2018">2018</option>                          
		
			            <option value="2019">2019</option>                          
		
			            <option value="2020">2020</option>                           
		
			            <option value="2021">2021</option>                           
		
			            <option value="2022">2022</option>                          
		
			            <option value="2023">2023</option>                            
		
			            <option value="2024">2024</option>                    
		
			         	<option value="2025">2025</option>                             
		
			            <option value="2026">2026</option>                            
		
			            <option value="2027">2027</option>
					
						<option value="2028">2028</option>                            
		
			            <option value="2029">2029</option>
				
						<option value="2030">2030</option>
		
			         </select>                          

		
</pre>

<input type="submit" name="submitPayment" value="Submit Payment"  class="Add-button"/>
</form>
</br>
<form method="post" action="DispalyHistory">
		
		<input type="submit" value="Display Payment History & Edit Details" class="Display-button" />
		
</form>
</div>
		<div class="footer">
			<p>© 2019 Viking Gaming. All Rights Reserved </p>
		</div>
		
	</div>

</body>
</html> 