package qa_system;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Tool {
	
	public static String changeCode(String data) throws UnsupportedEncodingException{
		return URLDecoder.decode(URLEncoder.encode(data,"ISO-8859-1"),"UTF-8");
	}
	
	public static Statement initSQL(String library,String user,String password) throws SQLException{
		try {  
	          Class.forName("com.mysql.jdbc.Driver"); 
	         System.out.println("Success loading Mysql Driver!");  
	        }  
	        catch (Exception e) {  
	          System.out.print("Error loading Mysql Driver!");  
	          e.printStackTrace();  
	     }
		Connection connect = DriverManager.getConnection(  
	    "jdbc:mysql://localhost:3306/"+library+"?characterEncoding=utf8",user,password);  
		System.out.println("initSQL:Success connect Mysql server!");  
	    Statement stmt = connect.createStatement();
	    return stmt;
	}//dwqd
}
