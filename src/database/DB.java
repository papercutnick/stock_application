package database;

import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DB {
	private static final String url = "jdbc:postgresql://54.148.123.99:5432/ece568";  
	private static final String name = "org.postgresql.Driver";  
	private static final String user = "postgres";  
	private static final String password = "postgres";  

	//public PreparedStatement pst = null;  

	public static Connection getConnection() {  
		Connection conn=null;
	    try {  
	        Class.forName(name);
	        conn = DriverManager.getConnection(url, user, password);
	    } catch (Exception e) {
	    	System.out.println(e.getMessage());
	        e.printStackTrace();  
	    }  
	    return conn;
	}  
	
	public static void closeConnection(Connection conn) {
	    try {
	        if(conn!=null){
	     	   conn.close();
	        }
	     } catch (SQLException e) {  
	         e.printStackTrace();  
	     }
	}

	public static void closeStatement(PreparedStatement pst){
		 try {
		       if(pst!=null){
		       		pst.close();
		       }
		    } catch (SQLException e) {  
		        e.printStackTrace();  
		    }  
	}

	public static void closeResultSet(ResultSet rs){
		 try {
		       if(rs!=null){
		    	   rs.close();
		       }
		    } catch (SQLException e) {  
		        e.printStackTrace();  
		    }  
	}
	
	public static String userRegister(String userName, String email, String passWord){
		String validTest = "SELECT count(1) cnt FROM users WHERE email = ?";
		String addNewUser = "INSERT INTO users(username, email, password) VALUES (?,?,?)";
		Connection conn=getConnection();
		PreparedStatement ps=null;
		ResultSet rs =null;
		int cnt=0;
		try {
			ps = conn.prepareStatement(validTest);
			ps.setString(1, email);
			rs = ps.executeQuery();
			if(rs.next()){
				cnt = rs.getInt("cnt");
			}
			closeResultSet(rs);
			closeStatement(ps);
			
			if(cnt==0){
				ps = conn.prepareStatement(addNewUser);
				ps.setString(1, userName);
				ps.setString(2, email);
				ps.setString(3, passWord);
				ps.executeUpdate();
			}else{
				return "Email address already in use."; 
			}
		} catch (SQLException e) {  
			e.printStackTrace();
			return e.getMessage();
		} finally{
			closeStatement(ps);
			closeConnection(conn);
		}
		
		return "success";
	}
	
	public static String userLogin(String email, String passWord){
		String validTest = "SELECT username FROM users WHERE email = ? and password = ?";
		Connection conn=getConnection();
		PreparedStatement ps=null;
		ResultSet rs =null;
		String username=null;
		try {
			ps = conn.prepareStatement(validTest);
			ps.setString(1, email);
			ps.setString(2, passWord);
			rs = ps.executeQuery();
			if(rs.next()){
				username = rs.getString("username");
			}
			closeResultSet(rs);
			closeStatement(ps);
			
			
		} catch (SQLException e) {  
			e.printStackTrace();
			return e.getMessage();
		} finally{
			closeStatement(ps);
			closeConnection(conn);
		}
		
		return username;
	}

	public static ArrayList<ArrayList<String>> getStreamerList(String valid, String order){
		String retrieveStreamers = "SELECT ID, TITLE, THUMBNAIL_ID, COUNTER, VIEWER FROM streamer_info WHERE is_valid = ? order by "+order+" desc";
		ArrayList<ArrayList<String>> result= new ArrayList<ArrayList<String>>();
		
		Connection conn=getConnection();
		PreparedStatement ps=null;
		ResultSet rs =null;
		try {
			ps = conn.prepareStatement(retrieveStreamers);
			ps.setString(1, valid);
			rs = ps.executeQuery();
			while(rs.next()){
				ArrayList<String> row = new ArrayList<String>();
				row.add(rs.getString("ID"));
				row.add(rs.getString("TITLE"));
				row.add(rs.getString("THUMBNAIL_ID"));
				row.add(rs.getString("COUNTER"));
				row.add(rs.getString("VIEWER"));
				
				result.add(row);
			}
		} catch (SQLException e) {  
			e.printStackTrace();
		} finally{
			closeResultSet(rs);
			closeStatement(ps);
			closeConnection(conn);
		}
		return result;
	}
	
	public static ArrayList<ArrayList<String>> getUsersInfo(){
		ArrayList<ArrayList<String>> users = new ArrayList<>();
		String validTest = "SELECT * FROM users".toLowerCase();
		Connection conn=getConnection();
		PreparedStatement ps=null;
		ResultSet rs =null;
		int cnt=0;
		try {
			ps = conn.prepareStatement(validTest);
			rs = ps.executeQuery();
			while(rs.next()){
				users.add(new ArrayList<String>());
				users.get(users.size()-1).add(String.valueOf(rs.getInt("id")));
				users.get(users.size()-1).add(rs.getString("username"));
				users.get(users.size()-1).add(rs.getString("email"));
				users.get(users.size()-1).add(rs.getString("password"));
			}
		} catch (SQLException e) {  
			e.printStackTrace();
			System.out.println(e.getMessage());
		} finally{
			closeStatement(ps);
			closeResultSet(rs);
			closeConnection(conn);
		}
		return users;
	}
	
	public static void deleteAccount(String id){
		String sql = "DELETE FROM users WHERE id="+id;
		Connection conn=getConnection();
		PreparedStatement ps=null;
		ResultSet rs =null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
		} catch (SQLException e) {  
			e.printStackTrace();
			System.out.println(e.getMessage());
		} finally{
			closeStatement(ps);
			closeResultSet(rs);
			closeConnection(conn);
		}
	}
	
	//public static void main( String [ ] args ){
		//DB.userLogin("zy120@gmail.com", "123456");
	//}
}
