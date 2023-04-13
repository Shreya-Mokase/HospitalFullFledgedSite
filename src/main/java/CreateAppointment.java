

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Time;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class CreateAppointment
 */
public class CreateAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateAppointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String specialization,doctor,fee,doccopy;
			Date date;
			String time;
			String Mobilenum;
			int patid=0;
			specialization=request.getParameter("specialization");
			doctor=request.getParameter("Doctor");
			doccopy=doctor;
			fee="700";
			date=Date.valueOf(request.getParameter("Date"));
			time=request.getParameter("Time");
			Mobilenum=request.getParameter("MobileNum");
			HttpSession session=request.getSession();
			String str=session.getAttribute("name").toString();

			Statement stmt=OracleDB.initializeDatabase();
			ResultSet rs=stmt.executeQuery("select id from doctors where name='"+doctor+"'");
			while(rs.next())
				doctor=String.valueOf(rs.getInt(1));
			rs=stmt.executeQuery("select id from patient_details where name='"+str+"'");
			while(rs.next())
				patid=rs.getInt(1);
			stmt.executeUpdate("insert into Appointments values(appointment_seq.nextval,"+patid+","+Integer.parseInt(doctor)+",'"+date+"','"+time+"','Booked')");
			String message="Hello "+str+",Booking with Dr."+doccopy+" on "+date+" "+time+" is confirmed. Have a Good Day!";
			RequestDispatcher rd=request.getRequestDispatcher("Patientdash.jsp");  
			rd.include(request, response);
			SmsGateway.sendConfirmationSMS(message,Mobilenum);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
