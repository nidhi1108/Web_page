package com.techbog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.dao.UserDao;
import com.blog.entities.user;
import com.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class RegisterServlet
 */
@MultipartConfig
public class RegisterServlet extends HttpServlet {
	public void processServlet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		    response.setContentType("text/html");
		    try(PrintWriter pw=response.getWriter()){
			String check=request.getParameter("check");
			if(check==null) {
				pw.println("box not checked");
			}
			else {
				
			   String name=request.getParameter("user_name");
			   String password=request.getParameter("user_password");
			   String email=request.getParameter("user_email");
			   String gender=request.getParameter("gender");
			   String about=request.getParameter("about");
			   user u=new user(name,email,password,gender,about);
			   
			   
			   UserDao dao=new UserDao(ConnectionProvider.getConnection());
			   
			   if(dao.saveUser(u)){
				   pw.println("Done...");
			  }
			   else {
				   pw.println("This email is already registered. Use another email id");
			   }
			}
			
		
	}	
}
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processServlet(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processServlet(request, response);
	}

}
