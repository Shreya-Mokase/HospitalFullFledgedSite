import java.sql.*;
public class OracleDB {
	public static Statement initializeDatabase() {	 
		//initialize driver class
		try {    
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			System.out.println("Fail to initialize Oracle JDBC driver: " +e);
		}

		String dbUser = "system";
		String dbPasswd = "123456";
		String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";

		//connect
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(dbURL,dbUser,dbPasswd);
		} catch(Exception e) {
			System.out.println("Connection failed: " +e);      
		}
		Statement temp=null;
		try {
			temp=conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return temp;
	}	
}
