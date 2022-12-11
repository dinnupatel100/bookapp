import java.sql.*;



public class Connect{
	
	private static Connection conn;
	public  static Connection createC() {
		try {
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/book-app","root","dinnu100");
//		if(conn!=null) {
//		   System.out.println("Connection  Successful");
//		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		 return conn;
	}
}