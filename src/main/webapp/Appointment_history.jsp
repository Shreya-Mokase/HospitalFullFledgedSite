<!DOCTYPE html>
<html>

<head>
<title>Appointment History</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/MainHeader.css">

<script src="regform.js"></script>
<link rel="stylesheet" href="css/Footer.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script>
		$(function(){
			$('#footer').load('Footer.html');
			$('#header').load('PatientHeader.html');
		});
	</script>
	<style type="text/css">
		.MainBody h1 {
	color: #001f33;
	margin-top: 40px;
	margin-bottom: revert;
	font-size: 50px;
}
	</style>
</head>

<body>
	<div id="header"></div>
	
	
	<div class="MainContent" style="height: 80vh;">

		<div class="container" id="back" style="margin-top: 33px;">
			

<h1>
			<center>
				Appointment History<br>
			</center>
		</h1>

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
	int userid=Integer.parseInt(session.getAttribute("id").toString());
  String sql="SELECT appointments.appointment_id,appointments.appointment_date,appointments.appointment_time,"
		  +"doctors.name,doctors.contactnum,doctors.gender,doctors.specialization,appointments.status"    
		  +" FROM appointments JOIN doctors ON appointments.doctor_id = doctors.id " 
		  +"where appointments.patient_id="+userid
		  +" order by appointments.appointment_id";
  
  Statement stmt = conn.createStatement();
  ResultSet rs = stmt.executeQuery(sql);
  out.println("<div class=\"container\"><table border=1 class=\"table\">");  
  out.println("<thead class=\"thead-dark\"><tr><th>ID</th><th>Date</th><th>Time</th><th>Doctor Name</th><th>Doctor Contact</th><th>Gender</th>"
		  +"<th>Specialization</th><th>Status</th><tr></thead><tbody>"); 
  while (rs.next()) 
  { int id=rs.getInt("appointment_id");
  	String date=rs.getString("appointment_date");
  	String time=rs.getString("appointment_time");
  	String name=rs.getString("name");
  	String contact=rs.getString("contactnum");
  	String gender=rs.getString("gender");
  	String spl=rs.getString("specialization");
  	String status=rs.getString("status");
    out.println("<tr><td>"+id+"</td><td>"+date+"</td><td>"+time+"</td><td>"+name+"</td><td>"+contact+"</td><td>"+gender+"</td>"
    		       +"<td>"+spl+"</td><td>"+status+"</td></tr>");
}    
  out.println("</tbody></table></div>");  
  rs.close();
  stmt.close();

  //commit
  conn.commit();
  
  //disconnect
  conn.close();
  
%>
			
		</div>		
	</div>
	
	
	<div id="footer"></div>
</body>
</html>