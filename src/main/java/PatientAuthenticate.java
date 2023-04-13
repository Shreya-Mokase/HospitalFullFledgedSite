

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PatientAuthenticate
 */
public class PatientAuthenticate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PatientAuthenticate() {
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
		String user= request.getParameter("username");
		String pass= request.getParameter("password");
		Statement stmt=OracleDB.initializeDatabase();
		ResultSet rs=null;
		String dbuser ="",dbpass="",name="";
		int userid=0;
		try {
			rs=stmt.executeQuery("select id,name,email,password from patient_details where email='"+user+"'");
			while(rs.next()) {
				userid=rs.getInt("id");
				name=rs.getString("name");
				dbuser=rs.getString("email");
				dbpass=rs.getString("password");
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}	
		if(dbuser.equals(user)&& dbpass.equals(pass)) {
			HttpSession session=request.getSession();
			session.setAttribute("id", userid);
			session.setAttribute("name", name);
			RequestDispatcher rd=request.getRequestDispatcher("Patientdash.jsp");  
			rd.include(request, response);  
		}
		else {
			PrintWriter out=response.getWriter();
			out.println("<script>alert('User or password incorrect');</script>");
			RequestDispatcher rd=request.getRequestDispatcher("PatientLogin.jsp");  
			rd.include(request, response);
		}
	}

}
