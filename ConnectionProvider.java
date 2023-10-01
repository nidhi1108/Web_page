package com.blog.helper;
import java.sql.*;
public class ConnectionProvider {
   private static Connection con;
   public static Connection getConnection(){
       try{
    	   if(con==null) {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","0000");
           return con;
    	   }
       }
       catch(Exception e) {
           e.printStackTrace();
       }
       return con;
   }
}
