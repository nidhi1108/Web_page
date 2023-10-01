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
 * Servlet implementation class LogoutServlet
 */
public class LogoutServlet extends HttpServlet {
	public void processServlet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		try(PrintWriter pw=response.getWriter()){
			pw.println("<html>");
			pw.println("<head>");
			pw.println("<title>Logout Servlet</title>");
			pw.println("</head>");
			pw.println("<body>");
		    HttpSession s=request.getSession();
		    s.removeAttribute("currentUser");
		    Message m=new Message("Logout Successfully","success","alert-success");
		    s.setAttribute("msg", m);
		    response.sendRedirect("login.jsp");
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
