package allservlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Adminlogin
 */
@WebServlet("/Adminlogin")
public class Adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			String id=request.getParameter("id");
			String pass=request.getParameter("pass");
			if(id.equals("admin") && (pass.equals("admin@123"))) {
				RequestDispatcher rd=request.getRequestDispatcher("adminhome.html");
				rd.forward(request, response);
			}else {
				out.print("wrong user/password");
				RequestDispatcher rd=request.getRequestDispatcher("admin_login.html");
				rd.include(request, response);
			}
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
