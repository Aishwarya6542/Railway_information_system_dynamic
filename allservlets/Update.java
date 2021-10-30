package allservlets;
import java.sql.*;
import calldatabase.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import calldatabase.GetData;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			HttpSession s=request.getSession(false);
			int train_no=(int)s.getAttribute("Train_no");
			String Train_name=request.getParameter("tna");
			String Starting_place=request.getParameter("sp");
			String Destination_place=request.getParameter("dp");
			Connection cn=GetData.getCn();
			PreparedStatement ps=cn.prepareStatement("update train_list set Train_name=?,Starting_place=?,Destination_place=? where Train_no=?");
			ps.setString(1, Train_name);
			ps.setString(2, Starting_place);
			ps.setString(3, Destination_place);
			ps.setInt(4, train_no);
			ps.execute();
			out.print("Record updated...");
			RequestDispatcher rd=request.getRequestDispatcher("adminhome.html");
			rd.include(request, response);
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
