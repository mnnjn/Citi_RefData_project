<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
	<script type="text/javascript" src="livevalidation_standalone.js"></script>		
	<link rel="stylesheet" href="./css/style.css">
</head>
<body>
	
<a href="indexnew.jsp">go to try</a>
<!-- <a href="index1.jsp">index1</a> -->

<div class="cotn_principal">
 	<div class="cont_centrar">

 		<div class="cont_login">
    		<div><p align="center" id="message"><%  if(session.getAttribute("message")!=null) {out.println(session.getAttribute("message")+"<br> Please login to continue!"); session.invalidate();} %></p><br>
    		<p><%if(request.getAttribute("msg")!=null){out.println(request.getAttribute("msg"));}; %></p></div>
    		
    <div class="cont_info_log_sign_up">

			<div class="col_md_login">
			<div class="cont_ba_opcitiy">	        
			        <h2>LOGIN</h2>  
			  	<p>Already have an account? </p><br> 
			  	<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
			 </div>
			 </div>
			
			<div class="col_md_sign_up">
			<div class="cont_ba_opcitiy">
			  		<h2>SIGN UP</h2>
			  		<p>New User?</p>
				<br>
			  		<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
			</div>
			</div>
		</div>

		    <div class="cont_back_info">
		       <div class="cont_img_back_grey">
		       <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
		       </div>       
		    </div>
		    
			<div class="cont_forms" >
			    
			    <div class="cont_img_back_">
			       <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" /> 		
			    </div>
			    
				 <div class="cont_form_login" >
						<a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
				   <h2>LOGIN</h2>
				 	<form action="login" method="post" >  
					 	<input type="text" id="username" name="username" placeholder="Email" /><br>
						<input type="password" id="password" name ="password" placeholder="Password" /><br>
						<span id="error"><% if(request.getAttribute("error")!=null){%>
						<script type="text/javascript"> window.onload = function() { cambiar_login(); };</script>
						<% out.println(request.getAttribute("error"));request.removeAttribute("error");} %></span><br>
						<button  href="#" class="btn_login" id="login" onclick="cambiar_login1()">LOGIN</button>
					</form>
				 </div>
				  
				 <div class="cont_form_sign_up">
					<a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
					     <h2>SIGN UP</h2>
					<form action="signup" method="post" >
						<input type="text"  name="email" placeholder="Email" >
						<!-- <span id="demo"></span> -->
						<input type="text" name="username" placeholder="User" >
						<input type="password" id='pswd' name = "passcode" placeholder="Password" >
						<input type="password" id='pswd2' placeholder="Confirm Password" onkeyup="check()"><p id="message1" hidden></p><br id="linegap"> 
						<span id="error"><% if(request.getAttribute("err")!=null){%>
						<script type="text/javascript"> window.onload = function() { cambiar_sign_up(); };</script>
						<% out.println(request.getAttribute("err"));request.removeAttribute("err");} %></span><br>
						<button type="submit" class="btn_sign_up" id="submitsignup" onclick="cambiar_sign_up()">SIGN UP</button>
					</form>
				 </div>
			</div>    		
  	   </div>
 	</div>
</div>
    <script  src="index.js"></script>
</body>
</html>