<!DOCTYPE html>
<html lang="en">

<head>
<title>Appointment -Bhave's Multispeciality hospital</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="E:\Git Repository\webDevelopement-Hospital-Website\css\servies.css">
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
<link rel="stylesheet" href="css/appointments.css">
<link rel="stylesheet" href="css/MainHeader.css">
<link rel="stylesheet" href="css/Footer.css">

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
		<a class="navbar-brand" href="#">Bhave&nbsp; Multispeciality&nbsp;<br
			id="break">Hospital
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="services.jsp">Services
						and Specialities</a></li>
				<li class="nav-item"><a class="nav-link" href="doctors.jsp">Doctors</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="contactus.jsp">Review</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Login </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="AdminLogin.jsp">Admin</a> <a
							class="dropdown-item" href="PatientLogin.jsp">Patient</a> <a
							class="dropdown-item" href="DoctorLogin.jsp">Doctor</a>
					</div></li>
			</ul>
		</div>
	</nav>
	<br>
	<div id="demo" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<center>
					<img src="images/appointments/h2.jpg" alt="Los Angeles"
						width="1100" height="500">
				</center>
			</div>
			<div class="carousel-item">
				<center>
					<img src="images/appointments/h1.jpg" alt="Chicago" width="1100"
						height="500">
				</center>
			</div>
			<div class="carousel-item">
				<center>
					<img src="images/appointments/h3.jpg" alt="New York" width="1100"
						height="500">
				</center>
			</div>
		</div>
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>
	<br>
	<h1 id="unsure-h1">Unsure about your Service?</h1>

	<h5 class="more-about-us">More about Us</h5>
	<div class="coll">
		<button class="collapsible button1">Super Specialities</button>
		<div class="spec-content">
			<div class="container">
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/1.png">
							<h5>Baritaric and Metabolic Surgery</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/2.png">
							<h5>Cancer Services</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/3.png">
							<h5>Cardiac Sciences & CCU</h5>
						</div>
					</div>
				</div>
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/4.png">
							<h5>Cosmetic & Plastic Surgery</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/5.png">
							<h5>Critical Care</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/6.png">
							<h5>Diabetology & Endocrinology</h5>
						</div>
					</div>
				</div>
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/7.png">
							<h5>Gastroenterology</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/8.png">
							<h5>Haematology</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/9.png">
							<h5>ICU</h5>
						</div>
					</div>
				</div>
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/13.png">
							<h5>Neuro Sciences</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/14.png">
							<h5>Neuro Trauma</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/15.png">
							<h5>Fetal Medicine</h5>
						</div>
					</div>
				</div>
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/16.png">
							<h5>Orthopedics & Joint Replacement</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/17.png">
							<h5>Paediatrics Endocrinology</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/18.png">
							<h5>Spine Surgery</h5>
						</div>
					</div>
				</div>
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/10.png">
							<h5>Interventional Radiology</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/11.png">
							<h5>Laparoscopic Surgery</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/12.png">
							<h5>Molecular Imaging & Nucelar Medicine</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
		<button class="collapsible button1">Broad Specialities</button>
		<div class="spec-content">
			<div class="container">
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/19.png">
							<h5>Accident & Emergency</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/20.png">
							<h5>Anaesthia</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/21.png">
							<h5>Dentistry</h5>
						</div>
					</div>
				</div>
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/22.png">
							<h5>Dermatology</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/23.png">
							<h5>ENT</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/24.png">
							<h5>General Medicine</h5>
						</div>
					</div>
				</div>
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/25.png">
							<h5>General Surgery</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/26.png">
							<h5>Opthalmology</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/27.png">
							<h5>Pain Management & Palliative Care</h5>
						</div>
					</div>
				</div>
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/28.png">
							<h5>Psychiatry</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
		<button class="collapsible button1">Auxillary Services</button>
		<div class="spec-content">
			<div class="container">
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/29.png">
							<h5>Academics</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/30.png">
							<h5>Blood Bank & Transfusion Services</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/31.png">
							<h5>Clinical Services</h5>
						</div>
					</div>
				</div>
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/35.png">
							<h5>Physiotherapy</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/36.png">
							<h5>Speech Therapy</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/37.png">
							<h5>Clinical Research</h5>
						</div>
					</div>

				</div>
				<div class="row" style="height: auto;">
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/32.png">
							<h5>Food & Dietary services</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/33.png">
							<h5>Health Check Center</h5>
						</div>
					</div>
					<div class="col-md-4">
						<div class="img_wrap">
							<img src="images/appointments/34.png">
							<h5>Medical Social</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
        var coll = document.getElementsByClassName("collapsible");
        var i;
        for (i = 0; i < coll.length; i++) {
            coll[i].addEventListener("click", function() {
                this.classList.toggle("active");
                var content = this.nextElementSibling;
                if (content.style.maxHeight) {
                    content.style.maxHeight = null;
                } else {
                    content.style.maxHeight = content.scrollHeight + "px";
                    console.log(content);
                }
            });
        }
    </script>
	<center>
		<button class="button">
			<a href="PatientLogin.jsp">Make An Appointment</a>
		</button>
	</center>
	<div id="footer"></div>
</body>