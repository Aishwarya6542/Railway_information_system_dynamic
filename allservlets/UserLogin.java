package allservlets;
import java.sql.*;
import calldatabase.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			String Email=request.getParameter("mail");
			String Password=request.getParameter("pw");
			Connection cn=GetData.getCn();
			PreparedStatement ps=cn.prepareStatement("select FirstName from user where Email=? and Password=?");
			ps.setString(1, Email);
			ps.setString(2, Password);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				HttpSession ses=request.getSession();
				ses.setAttribute("FirstName",rs.getString(1));
				/*HttpSession ses1=request.getSession();
				ses1.setAttribute("LastName",rs.getString(2));*/
				//request.getAttribute(FirstName);
				/*out.print("<h3 style='color:red'>Welcome "+Ema);
				RequestDispatcher rd=request.getRequestDispatcher("Userpage.jsp");
				rd.forward(request, response);*/
				response.sendRedirect("Userpage.jsp");
				
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("userlogin.html");
				rd.include(request, response);
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Username/Password incorrect');");
				out.println("</script>");
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
