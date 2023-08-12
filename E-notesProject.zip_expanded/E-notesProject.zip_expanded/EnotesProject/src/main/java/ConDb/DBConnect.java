package ConDb;

import java.sql.*;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection conn;
	public static Connection getConn()
	{
		try {
			if(conn==null)
			{
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:/enotes2","root","mrunali");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return conn;
	}

}
