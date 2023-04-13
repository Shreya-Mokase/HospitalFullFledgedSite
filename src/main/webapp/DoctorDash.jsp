<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Doctor DashBoard -Bhave's Multispeciality hospital</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/Admin_DashBoard.css">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/MainHeader.css">
<link rel="stylesheet" href="css/Footer.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script>
		$(function(){
			$('#footer').load('Footer.html');
		});
	</script>
<style>
.MainContent {
	height: 80vh;
}

#i2 {
	height: 114px;
}

@
keyframes text { 0%{
	width: 0ch;
}

50
%
{
width
:
20ch;
}
}
html, body {
	background-position: 50% 10%;
	background-size: cover;
}

@
keyframes fadeInRight { 0%{
	opacity: 0;
	right: 20%;
}

100
%
{
opacity
:
1;
right
:
0;
}
}
#op1 {
	background: whitesmoke;
	border-radius: 20px;
	border-left: 5px solid black;
	border-right: 5px solid black;
	box-shadow: 0 0 6px black;
}

#a1 {
	margin-top: 70px;
	margin-bottom: 50px;
	font-size: 35px;
}

@
keyframes fadeUp { 0%{
	opacity: 0;
	right: 20%;
}

100
%
{
opacity
:
1;
left
:
0;
}
}
#img {
	width: 175px;
	height: 150px;
	animation: fadeUp 4s ease forwards;
}

#link {
	color: blue;
	text-decoration: none;
}

#op1:hover {
	transform: scale(1.08);
	transition: 1s ease;
	box-shadow: 0 0 4px #001f33;
}

.padd {
	height: 300px;
	margin-top: 30px;
	font-size: 18px;
}
</style>
</head>

<body>
	<div class="topbar">
		<div class="num">
			<i class="fa fa-cloud"></i><span>bhavehospital@gmail.com</span>
			&nbsp;&nbsp;&nbsp; <i class="fa fa-mobile"></i><span>+91
				9045327865</span>
		</div>
		<div class="sym">

			<i class="fa fa-twitter"></i> <i class="fa fa-facebook"></i> <i
				class="fa fa-instagram"></i> <i class="fa fa-linkedin"></i>
		</div>
	</div>
	<style>
.collapse ul li {
	color: #001f33;
	margin: 0px 6px;
	font-weight: 500;
}
</style>
	<nav class="navbar navbar-expand-lg bg-light navbar-light sticky-top">
		<a class="navbar-brand" href="#">Bhave Multispeciality&nbsp;<br
			id="break">Hospital
		</a>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">

			<ul class="nav navbar-nav navbar-right">
				<li class="nav-item"><a href="index.jsp">Logout</a></li>
			</ul>
		</div>
	</nav>
	<% String name=session.getAttribute("name").toString();
    %>
	<div class="MainContent">
		<center>
			<h2 id="a1">
				Welcome
				<%=name%><br>
			</h2>
		</center>
		<div class="container-fluid" id="maindiv">
			<br>
			<br>
			<div class="row">
				<div class="col-sm-2"></div>
				<div id="op1" class="col-sm-3 padd">
					<center>
						<span> <img src="images/patients/my appointment.png"
							id="img" style="margin-top: 35px;">
						</span><br>
						<br> <a href="doc_Active_appointments.jsp" id="link">Active
							Appointments</a>
					</center>
					<br>
				</div>
				<div class="col-sm-2"></div>
				<div id="op1" class="col-sm-3 padd">
					<br>
					<center>
						<span><img src="images/patients/appointment-hist.png"
							id="img"></span> <br>
						<br>
						<br> <a href="doc_appointment_history.jsp" id="link">View
							Appointment History</a>
					</center>
					<br>
				</div>

				<div class="col-sm-1"></div>
			</div>
			<br>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>
