<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DoctorDB-Bhave's Multispeciality hospital</title>
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
<link rel="stylesheet" href="css/DoctorDB.css">
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
<style>
.button {
	background-color: #001f33;
	/* Green */
	border: none;
	color: white;
	padding: 10px 16px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin-top: 17px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s;
	/* Safari */
	transition-duration: 0.4s;
	border-radius: 15px;
}
</style>
</head>

<body>
	<div id="header"></div>
	<div class="MainBody">
		<h1>
			<center>
				Doctors Registered<br>
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

  String sql;
  Statement stmt = conn.createStatement();
  ResultSet rs = stmt.executeQuery("select * from doctors");
  out.println("<div class=\"container\"><table border=1 class=\"table\">");  
  out.println("<thead class=\"thead-dark\"><tr><th>ID</th><th>Name</th><th>Email</th><th>Password</th><th>Contact</th><th>Gender</th>"
		  +"<th>Qualification</th><th>Specialization</th><tr></thead><tbody>"); 
  while (rs.next()) 
  { int id=rs.getInt("id");
  String name=rs.getString("name");
  String email=rs.getString("email");
  String password=rs.getString("password");
  long contact=rs.getLong("contactnum");
  String gender=rs.getString("gender");
  String qualification=rs.getString("Qualification");
  String specialization=rs.getString("Specialization");
  out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>"+email+"</td><td>"+password+"</td><td>"+contact+"</td><td>"+gender+"</td><td>"+qualification+"</td><td>"+specialization+"</tr>");
}    
  out.println("</tbody></table></div>");  
  rs.close();
  stmt.close();

  //commit
  conn.commit();
  
  //disconnect
  conn.close();
  
%>

		<center>
			<button class="button">
				<a href="AddDoctor.jsp">Add A Doctor</a>
			</button>
		</center>

	</div>
	<div id="footer">
</body>
</html>
