<!DOCTYPE html>
<html lang="en">

<head>
<title>Doctor Registration- Bhave's Multispeciality hospital</title>
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
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/Footer.css">
<link rel="stylesheet" href="css/MainHeader.css">
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script>
	$(function() {
		$('#footer').load('Footer.html');
	});
</script>
<style>
.MainContent {
	height: 80vh;
	margin-top: 85px;
}

@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

.container {
	max-width: 700px;
	width: 100%;
	background-color: #fff;
	padding: 25px 30px;
	border-radius: 5px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
}

.container .title {
	font-size: 25px;
	font-weight: 500;
	position: relative;
}

.container .title::before {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	height: 3px;
	width: 30px;
	border-radius: 5px;
	background: linear-gradient(135deg, #001f33, rgb(0, 153, 255, 0.2));
}

.content form .user-details {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin: 20px 0 12px 0;
}

form .user-details .input-box {
	margin-bottom: 15px;
	width: calc(100%/ 2 - 20px);
}

form .input-box span.details {
	display: block;
	font-weight: 500;
	margin-bottom: 5px;
}

.user-details .input-box input {
	height: 45px;
	width: 100%;
	outline: none;
	font-size: 16px;
	border-radius: 5px;
	padding-left: 15px;
	border: 1px solid #ccc;
	border-bottom-width: 2px;
	transition: all 0.3s ease;
}

.user-details .input-box input:focus, .user-details .input-box input:valid
	{
	border-color: #001f33;
}

.user-details .input-box select {
	height: 45px;
	width: 100%;
	outline: none;
	font-size: 16px;
	border-radius: 5px;
	padding-left: 15px;
	border: 1px solid #ccc;
	border-bottom-width: 2px;
	transition: all 0.3s ease;
}

.user-details .input-box select:focus, .user-details .input-box select:valid
	{
	border-color: #001f33;
}

form .gender-details .gender-title {
	font-size: 20px;
	font-weight: 500;
}

form .category {
	display: flex;
	width: 25%;
	margin: 14px 0;
	justify-content: space-between;
}

form .category label {
	display: flex;
	align-items: center;
	cursor: pointer;
}

form .category label .dot {
	height: 18px;
	width: 18px;
	border-radius: 50%;
	margin-right: 10px;
	background: #d9d9d9;
	border: 5px solid transparent;
	transition: all 0.3s ease;
}

#dot-1:checked ~ .category label .one, #dot-2:checked ~ .category label .two,
	#dot-3:checked ~ .category label .three {
	background: #001f33;
	border-color: #d9d9d9;
}

form input[type="radio"] {
	display: none;
}

form .button {
	height: 45px;
	margin: 35px 0
}

form .button input {
	height: 100%;
	width: 30%;
	border-radius: 5px;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	cursor: pointer;
	transition: all 0.3s ease;
	background: linear-gradient(135deg, #001f33, rgb(0, 153, 255, 0.2));
}

form .button input:hover {
	/* transform: scale(0.99); */
	background: linear-gradient(135deg, rgb(0, 153, 255, 0.2), #001f33);
}

@media ( max-width : 584px) {
	.container {
		max-width: 100%;
	}
	form .user-details .input-box {
		margin-bottom: 15px;
		width: 100%;
	}
	form .category {
		width: 100%;
	}
	.content form .user-details {
		max-height: 300px;
		overflow-y: scroll;
	}
	.user-details::-webkit-scrollbar {
		width: 5px;
	}
}

@media ( max-width : 459px) {
	.container .content .category {
		flex-direction: column;
	}
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
		<div class="container">
			<div class="title">Doctor Registration</div>
			<div class="content">
				<form action="Doctor_register" method="post">
					<div class="user-details">
						<div class="input-box">
							<span class="details">Name</span> <input type="text"
								placeholder="Enter your name" name="Name" required>
						</div>
						<div class="input-box">
							<span class="details">Contact</span> <input type="tel"
								id="contact" name="contact" placeholder="Enter your contact"
								required>
						</div>
						<div class="input-box">
							<span class="details">Email</span> <input type="email"
								placeholder="Enter your email" name="email" required>
						</div>
						<div class="input-box">
							<span class="details">Password</span> <input type="password"
								placeholder="Enter your Password" name="pass" required>
						</div>
						<div class="input-box">
							<span class="details">Qualification</span> <select
								name="qualification" required>
								<option selected disabled>Select your qualification</option>
								<option value="MBBS">MBBS</option>
								<option value="BDS">BDS</option>
								<option value="PG in Orthopedics">PG in Orthopedics</option>
								<option value="MD">MD</option>
								<option Value="BHMS">BHMS</option>
								<option value="PDCC">PDCC</option>
								<option value="MDS">MDS</option>
								<option value="MS">MS</option>
								<option value="M.Ch">M.Ch</option>
							</select>
						</div>
						<div class="input-box">
							<span class="details">Specialization</span> <select
								name="specialization" required>
								<option selected disabled>Select your specialization</option>
								<option value="Physician">PHYSICIAN</option>
								<option value="Dentist">DENTIST</option>
								<option value="Surgeon">SURGEON</option>
								<option value="Family Physician">FAMILY PHYSICIAN</option>
								<option value="Orthopedics">ORTHOPEDICS</option>
							</select>
						</div>
					</div>
					<div class="gender-details">
						<input type="radio" name="gender" id="dot-1" value="Male">
						<input type="radio" name="gender" id="dot-2" value="Female">
						<span class="gender-title">Gender</span>
						<div class="category">
							<label for="dot-1"> <span class="dot one"></span> <span
								class="gender">Male</span>
							</label> <label for="dot-2"> <span class="dot two"></span> <span
								class="gender">Female</span>
							</label>
						</div>
					</div>
					<center>
						<div class="button">
							<input type="submit" value="Register">
						</div>
					</center>
				</form>
			</div>
		</div>

	</div>
	<div id="footer"></div>
</body>
</html>
