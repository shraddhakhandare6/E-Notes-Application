package ConnServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ConDb.DBConnect;
import ConnDAO.UserDAO;
import ConnUser.UserDetails;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  PrintWriter out=response.getWriter();
		  
		  
		  String email=request.getParameter("email");
		  String password=request.getParameter("pass");
		  UserDetails us=new UserDetails();
		  us.setEmail(email);
		  us.setPassword(password);
		  UserDAO dao=new UserDAO(DBConnect.getConn());
		 UserDetails user=dao.loginUser(us);
		 HttpSession session;
		  session=request.getSession();
		  if(user!=null) {
			session.setAttribute("userD",user);
			 response.sendRedirect("NewHome.jsp");
		  }
		  else {
			 
				session.setAttribute("failed-msg", "Incorrect email or password... please try again.");
				response.sendRedirect("LoginPage.jsp");	
		  }
		  
		  
	}

}
