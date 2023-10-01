package com.techbog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blog.dao.UserDao;
import com.blog.entities.Message;
import com.blog.entities.user;
import com.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class LogininServlet
 */
public class LogininServlet extends HttpServlet {
	public void processServlet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		try(PrintWriter pw=response.getWriter()){
			pw.println("<html>");
			pw.println("<head>");
			pw.println("<title>Servlet1</title>");
			pw.println("</head>");
			pw.println("<body>");
			String user_email=request.getParameter("email");
			String user_password=request.getParameter("password");
			UserDao dao=new UserDao(ConnectionProvider.getConnection());
			user u=dao.getuserbyemailandpassword(user_email, user_password);
			if(u==null) {
				//error
				// pw.println("Invalid details...Try Again");
				Message msg=new Message("Invalid Details! Try Again","error","alert-danger");
				HttpSession s=request.getSession();
				s.setAttribute("msg", msg);
				response.sendRedirect("login.jsp");
		   }   else { 
			   
			   //...
			   // login success
			   //
			 HttpSession s=request.getSession();		   
			 s.setAttribute("currentUser", u);
			 response.sendRedirect("profile.jsp");
			 
		   }
			pw.println("</body>");
			pw.println("</html>");
			 
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
