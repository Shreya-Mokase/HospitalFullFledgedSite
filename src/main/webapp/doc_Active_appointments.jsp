<!DOCTYPE html>
<html>

<head>
<title>Active Appointments</title>
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
<link rel="stylesheet" href="css/DoctorDB.css">
<link rel="stylesheet" href="css/MainHeader.css">
<script src="regform.js"></script>
<link rel="stylesheet" href="css/Footer.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script>
		$(function(){
			$('#footer').load('Footer.html');
			$('#header').load('doc_header.html');
		});
	</script>
</head>

<body>
	<div id="header"></div>
	<div class="MainBody" style="height: 85vh;">
		<h1>
			<center>
				Active Appointments<br>
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
	int docid=Integer.parseInt(session.getAttribute("id").toString());
  String sql="SELECT appointments.appointment_id,appointments.appointment_date,appointments.appointment_time,patient_details.name,patient_details.email,"
		  +"patient_details.gender,patient_details.height,patient_details.weight,appointments.status,patient_details.id" 
		  +" FROM appointments JOIN patient_details ON appointments.patient_id = patient_details.id"
		  +" where appointments.doctor_id="+docid+" and status='Booked' order by appointments.appointment_id";
  Statement stmt = conn.createStatement();
  ResultSet rs = stmt.executeQuery(sql);
  out.println("<div class=\"container\"><table border=1 class=\"table\">");  
  out.println("<thead class=\"thead-dark\"><tr><th>DATE</th><th>Time</th><th>Patient Name</th><th>Email</th><th>Gender</th><th>Height</th>"
		  +"<th>Weight</th><th>Status</th><th colspan=\"2\">Action</th><tr></thead><tbody>");
  int app_id=0;
  while (rs.next()){
	app_id=rs.getInt("appointment_id");  
	String date=rs.getString("Appointment_date");
  	String time=rs.getString("Appointment_time");
  	String name=rs.getString("name");
  	String email=rs.getString("email");
  	String Gender=rs.getString("Gender");
  	int height=rs.getInt("height");
  	int weight=rs.getInt("weight");
  	String status=rs.getString("status");	  
    out.println("<tr><td>"+date+"</td><td>"+time+"</td><td>"+name+"</td><td>"+email+"</td><td>"+Gender+"</td><td>"+height+"</td>"
    		       +"<td>"+weight+"</td><td>"+status+"</td>"
    		       +"<td><a href='doc_prescription.jsp?appid="+app_id+"'><button class='btn btn-light'><i class='fa fa-pencil'></i></button></a></td>"
    		       +"<td><a href='cancel_appointment?appid="+app_id+"'><button class='btn btn-danger'><i class='fa fa-trash'></i></td></tr>");
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
	<div id="footer"></div>
</body>
</html>