

import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Patient_register
 */
public class Patient_register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Patient_register() {
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
		String Name=request.getParameter("Name");
		Date date=Date.valueOf(request.getParameter("dob"));
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String height=request.getParameter("height");
		String weight=request.getParameter("weight");
		String gender=request.getParameter("gender");
		Statement stmt=OracleDB.initializeDatabase();
		try {
			stmt.executeUpdate("insert into patient_details values(patient_id.nextval,'"+Name+"','"+email+"','"+pass+"','"+date+"','"+gender+"','"+height+"','"+weight+"')");
			RequestDispatcher rd=request.getRequestDispatcher("PatientLogin.jsp");
			rd.include(request, response);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
