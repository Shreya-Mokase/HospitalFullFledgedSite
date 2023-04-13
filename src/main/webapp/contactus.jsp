<!DOCTYPE html>
<html lang="en">

<head>
<title>Contact us -Bhave's Multispeciality hospital</title>
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
<link rel="stylesheet" href="css/contactus.css">
<link rel="stylesheet" href="css/MainHeader.css">
<link rel="stylesheet" href="css/Footer.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script>
		$(function(){
			$('#header').load('MainHeader.html');
			$('#footer').load('Footer.html');
		});
	</script>
</head>
<body>
	<div id="header"></div>
	<div class="container-fluid ">
		<div class="first">
			<center>
				<h2 id="i1">
					<br>Please provide your feedback and suggestions!<br>
				</h2>
			</center>
		</div>
	</div>
	<center>
		<div class="form4 top">
			<div class="container">
				<div class="col-md-7 col-md-offset-2">
					<div class="form-bg">
						<form class="form" action="addReview" method="post">
							<div class="form-group">
								<label class="sr-only">Name</label> <input type="text"
									class="form-control" required="" id="nameNine"
									placeholder="Your Name" name="Name">
							</div>
							<div class="form-group">
								<label class="sr-only">Email</label> <input type="email"
									class="form-control" required="" id="emailNine"
									placeholder="Email Address" name="Email">
							</div>
							<div class="form-group">
								<label class="sr-only">Name</label>
								<textarea class="form-control" required="" rows="7"
									id="messageNine" placeholder="Write message" name="message"></textarea>
							</div>
							<button type="submit" class="btn text-center btn-blue">Send
								Message</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</center>

	<div id="footer"></div>
</body>

</html>