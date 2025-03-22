package com.validate;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Validation")
public class Validation extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		    String username = request.getParameter("a2");
	        String password = request.getParameter("a3");
	        
	        if(username.equals("preet") && password.equals("1234"))
	        {
	        	response.sendRedirect("instruction.jsp");
	        }
	        else
	        {
	        	
	        	response.sendRedirect("login.html");
	        }
	}

}
