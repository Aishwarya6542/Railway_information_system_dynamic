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


/**
 * Servlet implementation class Newuserlogin
 */
@WebServlet("/Newuserlogin")
public class Newuserlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			String FirstName=request.getParameter("fn");
			String LastName=request.getParameter("ln");
			String Password=request.getParameter("pw");
			String ConfirmPassword=request.getParameter("re_pw");
			String Email=request.getParameter("mail");
			String Mobile_num=request.getParameter("moNum");
			String Address=request.getParameter("address");
			
			
			Connection cn=GetData.getCn();
			PreparedStatement ps=cn.prepareStatement("insert into user(FirstName,LastName,Password,ConfirmPassword,Email,Mobile_num,Address) values(?,?,?,?,?,?,?)");
			ps.setString(1, FirstName);
			ps.setString(2, LastName);
			ps.setString(3, Password);
			ps.setString(4, ConfirmPassword);
			ps.setString(5, Email);
			ps.setString(6, Mobile_num);
			ps.setString(7, Address);
			ps.execute();
			out.print("Registration success for ID :"+FirstName+" "+LastName);
			RequestDispatcher rd=request.getRequestDispatcher("userlogin.html");
			rd.include(request, response);
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
