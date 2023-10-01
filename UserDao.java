package com.blog.dao;
import com.blog.entities.user;
import java.sql.*;
public class UserDao {
   private Connection con;
   public UserDao(Connection con) {
	   this.con=con;
   }
   public boolean saveUser(user user) {
	   boolean f=false;
	   try {
		   String q="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
		   PreparedStatement pstmt=this.con.prepareStatement(q);
		   pstmt.setString(1, user.getName());
		   pstmt.setString(2, user.getEmail());
		   pstmt.setString(3, user.getPassword());
		   pstmt.setString(4, user.getGender());
		   pstmt.setString(5, user.getAbout());
		   pstmt.executeUpdate();
		   f=true;
	   }
	   catch (Exception e) {
		   e.printStackTrace();
	   }
	   return f;
   }
   
   //get user by password and email
   public user getuserbyemailandpassword(String email,String password) {
	   user u=null;
	   try {
		  String q="select * from user where email=? and password=?";
		  PreparedStatement pstmt=con.prepareStatement(q);
		  pstmt.setString(1, email);
		  pstmt.setString(2, password);
		  ResultSet rs=pstmt.executeQuery();
		  if(rs.next()) {
			  u=new user();
			  String name=rs.getString("name");
			  u.setName(name);
			  u.setEmail(rs.getString("email"));
			  u.setPassword(rs.getString("password"));
			  u.setGender(rs.getString("gender"));
			  u.setDatetime(rs.getTimestamp("rdate"));
			  u.setProfile(rs.getString("profile"));
			   
		  }
	   }
	   catch(Exception e) {
		   e.printStackTrace();	   
	   }
	   return u;
   }
}
