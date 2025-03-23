import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class validate extends HttpServlet {
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("a2");
        String password = request.getParameter("a3");
        
        if((username.equals("preet")) && (password.equals("1234")))
        {
            RequestDispatcher rs = request.getRequestDispatcher("instruction");
            rs.forward(request, response);
        }
        else
        {
           out.println("Username or Password incorrect");
	   out.println("Testing");
           out.println("Username or Password incorrect");
           out.println("Username");
           RequestDispatcher rs = request.getRequestDispatcher("login.html");
           rs.include(request, response);
        }
    }  
}