<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Reviews -Bhave's Multispeciality hospital</title>
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
	<h1>
		<center>
			Reviews<br>
		</center>
	</h1>


	<div class="MainBody">
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
  ResultSet rs = stmt.executeQuery("select * from review");
  out.println("<div class=\"container\"><table border=1 class=\"table\">");  
  out.println("<thead class=\"thead-dark\"><tr><th>Name</th><th>Email</th><th>Message</th>"); 
  while (rs.next()) {
	String name=rs.getString("name");
  	String email=rs.getString("email");
  	String Message=rs.getString("message");
  	out.println("<tr><td>"+name+"</td><td>"+email+"</td><td>"+Message+"</td></tr>");
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

