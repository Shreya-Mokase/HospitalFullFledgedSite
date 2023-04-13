<!DOCTYPE html>
<html>
<head>
<meta charset="utf-16">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Prescription Form</title>
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
$(function(){ $('#footer').load('Footer.html');
$('#header').load('doc_header.html'); });
</script>
</head>

<body>
	<div id="header"></div>

	<div class="container" style="margin: 50px auto">
		<h3 class="text-center" style="font-family: 'Poppins', sans-serif;">Bhave's
			Multispeciality Hospital</h3>
		<hr>
		<div class="d-flex" style="justify-content: space-between;">
			<img src="images\Home\Bhave's Hospital Logo.png" style="width: 150px">
			<%@ page
				import="java.sql.*, java.util.*,java.time.*, javax.servlet.http.HttpServletRequest"%>
			<%
			String name = null;
			String gender = null;
			int weight = 0, height = 0;
			String dname = null;
			String dqua = null;
			String dspec = null;
			LocalDate dob = null;
			int age = 0;
			int doc_id = Integer.parseInt(session.getAttribute("id").toString());
			try {
				int app_id = Integer.parseInt(request.getParameter("appid"));
				session.setAttribute("appid", app_id);
				int patient_id = 0;
				String driver = "oracle.jdbc.driver.OracleDriver";
				String url = "jdbc:oracle:thin:@localhost:1521:XE";
				String user_name = "system";
				String pass = "123456";
				Connection con = null;
				Class.forName(driver);// OracleDriver is the type 4 driver
				con = DriverManager.getConnection(url, user_name, pass);
				Statement stmt = con.createStatement();

				ResultSet rs = stmt.executeQuery("select patient_id from appointments where appointment_id=" + app_id);
				while (rs.next())
					patient_id = rs.getInt("patient_id");
				String str = "select * from  patient_details where id  = " + patient_id;
				rs = stmt.executeQuery(str);

				while (rs.next()) {
					name = rs.getString("name");
					gender = rs.getString("gender");
					weight = rs.getInt("weight");
					height = rs.getInt("height");
					dob = LocalDate.parse(rs.getDate("dob").toString());
				}
				age = Period.between(dob, LocalDate.now()).getYears();
				String str2 = "select * from Doctors where id = " + doc_id;
				ResultSet rs1 = stmt.executeQuery(str2);
				while (rs1.next()) {
					dname = rs1.getString("NAME");
					dqua = rs1.getString("QUALIFICATION");
					dspec = rs1.getString("SPECIALIZATION");

				}
			} catch (Exception e) {
			}
			%>
			<span style="width: 300px">
				<p>
					<b>Dr.<%=dname%></b><br><%=dqua%><br><%=dspec%><br>
					Bhave's Multispeciality Hospital,Krishna Chowk, Opp Sambhaji Bank,
					Pune - 411061
				</p>
			</span>
		</div>
		<hr>
		<div class="d-flex" style="justify-content: space-between;">
			<p>
				Name:
				<%=name%></p>
			<p>
				Age:
				<%=age%></p>
			<p>
				Sex:
				<%=gender%></p>
			<p>
				Height:
				<%=height%></p>
			<p>
				Weight:
				<%=weight%></p>
		</div>
		<hr>
		<h2>
			<i>Rx,</i>
		</h2>

		<ol>
			<li>
				<div class="d-flex m-auto">
					<div class="form-group" style="width: 60%">
						<input type="text" class="form-control" placeholder="Enter Tablet"
							id="tab1">
					</div>
					<div class="form-group" style="width: 20%">
						<input type="number" class="form-control"
							placeholder="Enter Quantity" id="qun1">
					</div>
					<div class="form-group" style="width: 20%">
						<input type="number" class="form-control" placeholder="Enter Dose"
							id="dos1">
					</div>
				</div>
			</li>

			<li>
				<div class="d-flex m-auto">
					<div class="form-group" style="width: 60%">
						<input type="text" class="form-control" placeholder="Enter Tablet"
							id="tab2">
					</div>
					<div class="form-group" style="width: 20%">
						<input type="number" class="form-control"
							placeholder="Enter Quantity" id="qun2">
					</div>
					<div class="form-group" style="width: 20%">
						<input type="number" class="form-control" placeholder="Enter Dose"
							id="dos2">
					</div>
				</div>
			</li>

			<li>
				<div class="d-flex m-auto">
					<div class="form-group" style="width: 60%">
						<input type="text" class="form-control" placeholder="Enter Tablet"
							id="tab3">
					</div>
					<div class="form-group" style="width: 20%">
						<input type="number" class="form-control"
							placeholder="Enter Quantity" id="qun3">
					</div>
					<div class="form-group" style="width: 20%">
						<input type="number" class="form-control" placeholder="Enter Dose"
							id="dos3">
					</div>
				</div>
			</li>

			<li>
				<div class="d-flex m-auto">
					<div class="form-group" style="width: 60%">
						<input type="text" class="form-control" placeholder="Enter Tablet"
							id="tab4">
					</div>
					<div class="form-group" style="width: 20%">
						<input type="number" class="form-control"
							placeholder="Enter Quantity" id="qun4">
					</div>
					<div class="form-group" style="width: 20%">
						<input type="number" class="form-control" placeholder="Enter Dose"
							id="dos4">
					</div>
				</div>
			</li>

			<li>
				<div class="d-flex m-auto">
					<div class="form-group" style="width: 60%">
						<input type="text" class="form-control" placeholder="Enter Tablet"
							id="tab5">
					</div>
					<div class="form-group" style="width: 20%">
						<input type="number" class="form-control"
							placeholder="Enter Quantity" id="qun5">
					</div>
					<div class="form-group" style="width: 20%">
						<input type="number" class="form-control" placeholder="Enter Dose"
							id="dos5">
					</div>
				</div>
			</li>
		</ol>
		<center>
			<button onclick="prescribe()" class="btn btn-primary">Submit</button>
		</center>
	</div>


	<div style="display: none;" id="cont" class="container">
		<div class="preception container" id="photo"
			style="padding: 50px; margin: 50px auto; border: 5px solid #f2f2f2;">
			<h3 class="text-center" style="font-family: 'Poppins', sans-serif;">Bhaves
				Multispeciality Hospital</h3>
			<hr>
			<div class="d-flex" style="justify-content: space-between;">
				<img src="images\Home\Bhave's Hospital Logo.png"
					style="width: 150px"> <span style="width: 300px">
					<p>
						<b>Dr.<%=dname%></b><br><%=dqua%><br><%=dspec%><br>
						Bhave's Multispeciality Hospital,Krishna Chowk, Opp Sambhaji Bank,
						Pune - 411061
					</p>
				</span>
			</div>
			<hr>
			<div class="d-flex" style="justify-content: space-between;">
				<p>
					Name:
					<%=name%></p>
				<p>
					Age:
					<%=age%></p>
				<p>
					Sex:
					<%=gender%></p>
				<p>
					Height:
					<%=height%></p>
				<p>
					Weight:
					<%=weight%></p>
			</div>
			<hr>
			<h2>
				<i>Rx,</i>
			</h2>
			<hr>
			<div class="d-flex" style="justify-content: space-between;">
				<p style="width: 60%">
					<b>Tablet Name</b>
				</p>
				<p>
					<b>Quantity</b>
				</p>
				<p>
					<b>Dose</b>
				</p>
			</div>
			<hr>
			<div class="d-flex" style="justify-content: space-between;">
				<p style="width: 60%" id="setTab1"></p>
				<p id="setQun1"></p>
				<p id="setDos1"></p>
			</div>
			<div class="d-flex" style="justify-content: space-between;">
				<p style="width: 60%" id="setTab2"></p>
				<p id="setQun2"></p>
				<p id="setDos2"></p>
			</div>
			<div class="d-flex" style="justify-content: space-between;">
				<p style="width: 60%" id="setTab3"></p>
				<p id="setQun3"></p>
				<p id="setDos3"></p>
			</div>
			<div class="d-flex" style="justify-content: space-between;">
				<p style="width: 60%" id="setTab4"></p>
				<p id="setQun4"></p>
				<p id="setDos4"></p>
			</div>
			<div class="d-flex" style="justify-content: space-between;">
				<p style="width: 60%" id="setTab5"></p>
				<p id="setQun5"></p>
				<p id="setDos5"></p>
			</div>

			<img
				src="https://i.pinimg.com/736x/aa/62/95/aa6295e2e1c697c818472b2133a9cb5a.jpg"
				style="width: 150px; position: relative; left: 850px" />
		</div>
		<center>
			<button class="btn btn-primary" onclick="printDiv('photo')">Print
				Prescription</button>
			<form action="CloseAppointment" method="post"
				style="display: inline; margin: 0; padding: 0;">
				<button class="btn btn-primary" type="submit" action="CloseAppointment"
					method="post" style="display: inline;">Close Appointment</button>
			</form>
		</center>
	</div>
	<script type="text/javascript">
	const prescribe = () =>{
		for(let i = 1; i<=5; i++){
			document.getElementById("setTab"+i).innerHTML = document.getElementById("tab"+i).value;
			document.getElementById("setQun"+i).innerHTML = document.getElementById("qun"+i).value;
			document.getElementById("setDos"+i).innerHTML = document.getElementById("dos"+i).value;
		}
		document.getElementById('cont').style.display = "block";		
	}
</script>
	<script>
		function printDiv(divName){
			var printContents = document.getElementById(divName).innerHTML;
			var originalContents = document.body.innerHTML;
			document.body.innerHTML = printContents;
			window.print();
			document.body.innerHTML = originalContents;
		}
	</script>

	<div id="footer"></div>
</body>
</html>