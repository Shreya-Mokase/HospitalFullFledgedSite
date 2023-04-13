import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminAuthenticate extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminAuthenticate() {
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
		String dbuser ="",dbpass="";
		try {
			rs=stmt.executeQuery("Select * from admin");
			while(rs.next()) {
				dbuser=rs.getString("username");
				dbpass=rs.getString("password");
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}	
		if(dbuser.equals(user)&& dbpass.equals(pass)) {
			RequestDispatcher rd=request.getRequestDispatcher("adminDashBoard.jsp");  
			rd.include(request, response);  
		}
		else {
			PrintWriter out=response.getWriter();
			out.println("<script>alert('User or password incorrect');</script>");
			RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");  
			rd.include(request, response);
		}

	}

}
