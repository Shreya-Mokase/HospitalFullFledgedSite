<html>

<head>
<title>Book Appointment</title>
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
<link rel="stylesheet" href="css/patientBookApp.css">
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
</head>

<body>
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

  Statement stmt = conn.createStatement();
 
	ResultSet countrs=stmt.executeQuery("select count(distinct specialization) from doctors");
	int count=0;
	while(countrs.next())
		count=countrs.getInt(1);
  String[] specialization=new String[count];
  ResultSet rs=stmt.executeQuery("select distinct specialization from doctors");
  int i=0;
  while(rs.next()){
	  specialization[i]=rs.getString(1);
	  i++;
  }
%>
	<div id="header"></div>
	<br>
	<div class="MainContent" style="height: 80vh;">

		<div class="container" id="back" style="margin-top: 33px;">
			<center>
				<h2 id="a1">
					<br>Create An Appointment<br>
				</h2>
			</center>
			<div>
				<br>
				<br>
				<form class="needs-validation" novalidate action="CreateAppointment"
					method="POST">
					<div class="form-group row">
						<div class="col-sm-3"></div>
						<label for="email1" class="col-sm-2 col-form-label">Specialization
							:</label>
						<div class="col-sm-4">
							<select type="submit" class="form-control" id="spl"
								name="specialization" required>
								<option hidden>Select Specialization</option>
								<%
            int docCount[]=new int[count];
            for(i=0;i<specialization.length;i++){
            	out.println("<option value="+specialization[i]+">"+specialization[i]+"</option>");
            	rs=stmt.executeQuery("select count(name) from doctors where specialization='"+specialization[i]+"'");
            	while(rs.next())
            		docCount[i]=rs.getInt(1);
            	
           }
            String[] item0=new String[docCount[0]];
            rs=stmt.executeQuery("select name from doctors where specialization='"+specialization[0]+"'");
            i=0;
            while(rs.next())
         		item0[i++]=rs.getString(1);
            %>

							</select>
						</div>
						<div class="col-sm-3"></div>
					</div>

					<div class="form-group row">
						<div class="col-sm-3"></div>
						<label for="email1" class="col-sm-2 col-form-label">Doctors
							:</label>
						<div class="col-sm-4">
							<select input type="text" class="form-control" id="doc"
								name="Doctor" required>
								<option hidden>Select Doctor</option>
							</select>
							<script>
            	/* function func(){
            		var spl=document.getElementById('spl');
            		var index=spl.value;
            		var text=spl.options[spl.selectedIndex].text;
            	}
            	 */
            	 $(document).ready(function () {
            		    $("#spl").change(function () {
            		        var val = $(this).val();
            		        if (val == "Physician") {
            		            $("#doc").html("<option value='Yash Patil'>Yash Patil</option>"
            		            				+"<option value='Aman Waswani'>Aman Waswani</option>"
            		            				+"<option value='Ruhan Mehta'>Ruhan Mehta</option>");
            		        } else if (val == "Dentist") {
            		            $("#doc").html("<option value='Rishita Mahajan'>Rishita Mahajan</option>"
            		            				+"<option value='Kashish Gupta'>Kashish Gupta</option>");
            		        } else if (val == "Surgeon") {
            		            $("#doc").html("<option value='Abhimanyu Birla'>Abhimanyu Birla</option>"
            		            				+"<option value='Rohit Malhotra'>Rohit Malhotra</option>"
            		            				+"<option value='Sparsh Sukhwani'>Sparsh Sukhwani</option>"
            		            				+"<option value='Suhani Sancheti'>Suhani Sancheti</option>"
            		            				+"<option value='Sakshi Choudhary'>Sakshi Choudhary</option>"
            		            				+"<option value='Virat Chauhan'>Virat Chauhan</option>");
            		        } else if (val == "Family") {
            		            $("#doc").html("<option value='Saroj Naik'>Saroj Naik</option>");

            		        } else if (val == "Orthopedics") {
            		            $("#doc").html("<option value='Aarohi Goenka'>Aarohi Goenka</option>"
            		            				+"<option value='Somya Joshi'>Somya Joshi</option>"
            		            				+"<option value='Dev Jalan'>Dev Jalan</option>");
            		        }
            		    });
            		});
            </script>
						</div>
						<div class="col-sm-3"></div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3"></div>
						<label for="Password1" class="col-sm-2 col-form-label">Consultancy
							Fees :</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="fees" name="Fees"
								placeholder="700" disabled="">
						</div>
						<div class="col-sm-3"></div>
					</div>


					<div class="form-group row">
						<div class="col-sm-3"></div>
						<label for="Password1" class="col-sm-2 col-form-label">Date
							:</label>
						<div class="col-sm-4">
							<input type="date" class="form-control" id="userdate" name="Date"
								data-provide="datepicker" placeholder="Select Date"
								onchange="TDate()" required>
							<div class="invalid-feedback">Please Provide Valid Date</div>
						</div>
						<div class="col-sm-3"></div>
					</div>
					<script>
             function TDate() {
            	    var UserDate = document.getElementById("userdate").value;
            	    var ToDate = new Date();
            	    if (new Date(UserDate).getTime() < ToDate.getTime()) {
            	          alert("Invalid Date!!");
            	          document.getElementById("userdate").value="Select Date";
            	          return false;
            	     }
            	    return true;
            	}
             </script>

					<div class="form-group row">
						<div class="col-sm-3"></div>
						<label for="Password1" class="col-sm-2 col-form-label">Time
							:</label>
						<div class="col-sm-4">
							<input type="Time" class="form-control" id="time" name="Time"
								placeholder="Select Time" required>
							<div class="invalid-feedback">Please Provide Valid Time</div>
						</div>
						<div class="col-sm-3"></div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3"></div>
						<label for="mobileNum" class="col-sm-2 col-form-label">Contact
							Number :</label>
						<div class="col-sm-4">
							<input type="tel" class="form-control" id="mobileNum"
								name="MobileNum" placeholder="Enter Mobile Number" required>
							<div class="invalid-feedback">Please Provide Valid Number</div>
						</div>
						<div class="col-sm-3"></div>
					</div>
					<div class="text-center text-lg-start mt-4 pt-2">
						<button type="submit" class="loginbtn"
							style="background-color: #3399ff; border-radius: 30px; color: #fff !important; padding: 9px 20px !important; margin-bottom: 50px; margin-top: 50px;"
							onMouseOver="this.style.color='#001f33'"
							onMouseOut="this.style.color='white'">Create Appointment</button>
					</div>
				</form>
			</div>
		</div>
		<%
    rs.close();
  stmt.close();
  conn.commit();
  conn.close();%>
	</div>

	<div id="footer"></div>
</body>
</html>