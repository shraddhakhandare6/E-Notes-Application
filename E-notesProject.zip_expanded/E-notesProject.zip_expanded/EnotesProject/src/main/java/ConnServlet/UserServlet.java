package ConnServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ConnDAO.UserDAO;
import ConnUser.UserDetails;
import ConDb.DBConnect;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String name=request.getParameter("fname");
		String email=request.getParameter("email");
		String password=request.getParameter("pass");
		
		UserDetails us=new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		UserDAO dao=new UserDAO(DBConnect.getConn());
		boolean f=dao.addUser(us);
		HttpSession session;
		if(f) {
			session=request.getSession();
			session.setAttribute("reg-success", "Registration Successfully...<a href='LoginPage.jsp'>Login Here</a>");
			response.sendRedirect("Register.jsp");
		}
		else {
			session=request.getSession();
			session.setAttribute("failed-msg", "Registration Failed... Somethimg wents wrong on server.");
			response.sendRedirect("Register.jsp");		}
	}

	
	}


