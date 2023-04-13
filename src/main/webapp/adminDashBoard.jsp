<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Admin DashBoard -Bhave's Multispeciality hospital</title>
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
			$('#header').load('AdminHeader.jsp');
			$('#footer').load('Footer.html');
		});
	</script>
</head>

<body>
	<div id="header"></div>
	<%@ page import="java.sql.*"%>

	<%
  //initialize driver class
  try {    
    Class.forName("oracle.jdbc.driver.OracleDriver");
  } catch (Exception e) {
    out.println("Fail to initialize Oracle JDBC driver: " + e.toString() + "<P>");
  }
  
  String dbUser = "system";
  String dbPasswd = "123456";
  String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";

  //connect
  Connection conn = null;
  try {
    conn = DriverManager.getConnection(dbURL,dbUser,dbPasswd);
  } catch(Exception e) {
    out.println("Connection failed: " + e.toString() + "<P>");      
  }

  String sql;
  int patient=0,doctor=0,review=0,count=0;
  Statement stmt = conn.createStatement();
  ResultSet rs = stmt.executeQuery("select count(id) from patient_details");
  while(rs.next()){
	  patient=rs.getInt(1);  
  }
  rs = stmt.executeQuery("select count(id) from doctors");
  while(rs.next()){
	  doctor=rs.getInt(1);
  }
  rs = stmt.executeQuery("select total_visitor.nextval from dual");
  while(rs.next()){
	  count=rs.getInt(1);
  }
  rs = stmt.executeQuery("select count(name) from review");
  while(rs.next()){
	  review=rs.getInt(1);
  }
  rs.close();
  stmt.close();
  conn.commit();
  conn.close();
%>

	<div class="MainBody">
		<h1>
			<center>
				DashBoard<br>
			</center>
		</h1>
		<link rel="stylesheet" type="text/css"
			href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
		<div class="container bootstrap snippet">
			<div class="row" style="margin-top: 48px;">
				<div class="col-lg-2 col-sm-6 Dashboardgrid">
					<div class="circle-tile ">
						<a href="#"><div class="circle-tile-heading dark-blue">
								<i class="fa fa-users fa-fw fa-3x"></i>
							</div></a>
						<div class="circle-tile-content dark-blue">
							<div class="circle-tile-description text-dark-blue">Total
								Patients</div>
							<div class="circle-tile-number text-dark-blue"><%=patient %></div>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 Dashboardgrid">
					<div class="circle-tile ">
						<a href="#"><div class="circle-tile-heading blue">
								<i class="fa fa-users fa-fw fa-3x"></i>
							</div></a>
						<div class="circle-tile-content blue">
							<div class="circle-tile-description text-blue">Total
								Doctors</div>
							<div class="circle-tile-number text-blue"><%=doctor %></div>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 Dashboardgrid">
					<div class="circle-tile ">
						<a href="#"><div class="circle-tile-heading dark-blue">
								<i class="fa fa-users fa-fw fa-3x"></i>
							</div></a>
						<div class="circle-tile-content dark-blue">
							<div class="circle-tile-description text-dark-blue">Total
								Reviews</div>
							<div class="circle-tile-number text-dark-blue "><%=review %></div>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 Dashboardgrid">
					<div class="circle-tile ">
						<a href="#"><div class="circle-tile-heading blue">
								<i class="fa fa-users fa-fw fa-3x"></i>
							</div></a>
						<div class="circle-tile-content blue">
							<div class="circle-tile-description text-blue">Total
								Visitors</div>
							<div class="circle-tile-number text-blue"><%= count%></div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>
