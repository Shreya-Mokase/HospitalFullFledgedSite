<!DOCTYPE html>
<html lang="en">

<head>
<title>Admin Login -Bhave's Multispeciality hospital</title>
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
<link rel="stylesheet" href="css/Admin_Login.css">
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
	<nav class="navbar navbar-expand-lg bg-light navbar-light sticky-top">
		<a class="navbar-brand" href="index.jsp" style="font-size: 30px;">Bhave&nbsp;
			Multispeciality&nbsp;<br id="break">Hospital
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a>
				</li>
			</ul>
		</div>
	</nav>

	<div class="MainContent">
		<section class="vh-100">
			<div class="container-fluid h-custom">
				<div class="row d-flex justify-content-center align-items-center"
					style="height: 87% !important;">
					<div class="col-md-9 col-lg-6 col-xl-5">
						<img src="images/Home/Bhave's Hospital Logo.png" class="img-fluid"
							alt="Sample image">
					</div>
					<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1 temp">
						<form action="AdminAuthenticate" method="POST">
							<div
								class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start form-title">
								<p class="lead fw-normal mb-0 me-3">Admin Login...</p>
							</div>
							<div class="form-outline mb-4">
								<input type="text" id="form3Example3"
									class="form-control form-control-lg"
									placeholder="Enter a valid Username" name="username" />
							</div>
							<div class="form-outline mb-3">
								<input type="password" id="form3Example4"
									class="form-control form-control-lg"
									placeholder="Enter password" name="password" />
							</div>
							<div class="text-center text-lg-start mt-4 pt-2">
								<button type="submit" class="loginbtn"
									style="background-color: #3399ff; border-radius: 30px; color: #fff !important; padding: 9px 20px !important;"
									onMouseOver="this.style.color='#001f33'"
									onMouseOut="this.style.color='white'">Login</button>
							</div>
						</form>
						<br>
					</div>
				</div>
			</div>
		</section>
	</div>
	<div id="footer"></div>
</body>
</html>
