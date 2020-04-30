<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<liink href = "css/HnF.css" type = "text/css" rel = "stylesheet"/>
<style>
    * {
        box-sizing: border-box;
    }

    .row {
        display: -ms-flexbox;
        /* IE10 */
        display: flex;
        -ms-flex-wrap: wrap;
        /* IE10 */
        flex-wrap: wrap;
        margin: 0 -16px;
    }

    .col-25 {
        -ms-flex: 25%;
        /* IE10 */
        flex: 25%;
    }

    .col-50 {
        -ms-flex: 50%;
        /* IE10 */
        flex: 50%;

    }

    .col-75 {
        -ms-flex: 75%;
        /* IE10 */
        flex: 75%;
    }

    .col-25,
    .col-50,
    .col-75 {
        padding: 0 16px;
    }

    .container {
        background-color: #f2f2f2;
        padding: 5px 20px 15px 20px;
        border: 1px solid lightgrey;
        border-radius: 3px;
    }

    input[type=text] {
        width: 100%;
        margin-bottom: 20px;
        padding: 12px;
        border: 1px solid black;
        border-radius: 3px;

    }

    label {
        margin-bottom: 10px;
        display: block;
    }

    .icon-container {
        margin-bottom: 20px;
        padding: 7px 0;
        font-size: 24px;
    }

    .btn {
        background-color: #4CAF50;
        color: white;
        padding: 12px;
        margin: 10px 0;
        border: none;
        width: 100%;
        border-radius: 3px;
        cursor: pointer;
        font-size: 17px;
    }

    .btn:hover {
        background-color: #45a049;
    }

    a {
        color: #2196F3;
    }

    hr {
        border: 1px solid lightgrey;
    }

    span.price {
        float: right;
        color: grey;
    }

    /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */

    @media (max-width: 800px) {
        .row {
            flex-direction: column-reverse;
        }
        .col-25 {
            margin-bottom: 20px;
        }

    }

    /* The container */

    .containercb {
        display: block;
        position: relative;
        padding-left: 35px;
        margin-bottom: 12px;
        cursor: pointer;
        font-size: 22px;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    /* Hide the browser's default checkbox */

    .containercb input {
        position: absolute;
        opacity: 0;
        cursor: pointer;
    }

    /* Create a custom checkbox */

    .checkmark {
        position: absolute;
        top: 0;
        left: 0;
        height: 25px;
        width: 25px;
        background-color: #eee;
    }

    /* On mouse-over, add a grey background color */

    .containercb:hover input~.checkmark {
        background-color: #ccc;
    }

    /* When the checkbox is checked, add a blue background */

    .containercb input:checked~.checkmark {
        background-color: #2196F3;
    }

    /* Create the checkmark/indicator (hidden when not checked) */

    .checkmark:after {
        content: "";
        position: absolute;
        display: none;
    }

    /* Show the checkmark when checked */

    .containercb input:checked~.checkmark:after {
        display: block;
    }

    /* Style the checkmark/indicator */

    .containercb .checkmark:after {
        left: 9px;
        top: 5px;
        width: 5px;
        height: 10px;
        border: solid white;
        border-width: 0 3px 3px 0;
        -webkit-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        transform: rotate(45deg);
    }

</style>



<title>OOP Project - Gaming Site</title>
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


<div style=" background-color:darkgrey;  background-attachment: fixed; background-position: center; display: block; margin: 0; padding: 0; overflow-x: hidden;">
        

        <div class="row">
            <div class="col-75">
                <div class="container" style="width: 800px;margin-left: 80px;">
                    

                        <div class="row">
                            <div class="col-50">

    
<center><b>
<h1>Feedback Form</h1>
</center>

<form method="post" action="Feedback"><BR><br><BR><br>


<h2>Player details</h2><hr>

                                <label for="fname"><i class="fa fa-user"></i> First Name</label>
                                <input type="text" style="background-color: darkgray" id="fname" name="firstname" placeholder="Enter your first name ">
								<label for="fname"><i class="fa fa-user"></i> Last Name</label>
                                <input type="text" style="background-color: darkgray" id="lname" name="laststname" placeholder="Enter your last name ">
			
								
								
                                <label for="email"><i class="fa fa-envelope"></i> Email</label>
                                <input type="text" style="background-color: darkgray;" id="email" name="email" placeholder="Enter email address">
								
								<h2>Game Ratings</h2><hr>
								
								<leble> Game name </leble>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	
	<select name="gname" style="background-color: darkgray" id ="gname">
		<option>SELECT</option>
		<option>parkour</option>
		<option>Hide</option>
		<option>Skywars</option>
		<option>The walls</option>
		<option>Spleef</option>
	
	 </select>
	<br><br/> 

	
	<leble> originality </leble>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	
	<select name="originality" style="background-color: darkgray">
		<option>SELECT</option>
		<option>Poor</option>
		<option>Good</option>
		<option>Exellent</option>
	
	 </select>
	<br><br/> 
	
	<leble> Fun,enjoyble </leble>&nbsp&nbsp&nbsp&nbsp&nbsp
	
	<select name="fun"style="background-color: darkgray">
		<option>SELECT</option>
		<option>Poor</option>
		<option>Good</option>
		<option>Exellent</option>
	
	 </select>
	<br><br/> 
	
	

<h2>Your Comment</h2><hr><br> 
	<textarea name="comments" rows="6" cols="80">

Enter any comments 

	</textarea><br><br>

<INPUT type="submit" value="Send"  >
<INPUT type="reset" value="Clear">

</form>
           <br><br>                     
		<div class="footer">
			<p>© 2019 Viking Gaming. All Rights Reserved </p>
		</div>
		
	</div>

                                



</body>

</html>
