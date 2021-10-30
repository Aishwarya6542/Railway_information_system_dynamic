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

import calldatabase.GetData;

/**
 * Servlet implementation class Add_Train
 */
@WebServlet("/Add_Train")
public class Add_Train extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			int Train_no=Integer.parseInt(request.getParameter("tno"));
			String Train_name=request.getParameter("tna");
			String Start=request.getParameter("sp");
			String Destination=request.getParameter("dp");
			
			Connection cn=GetData.getCn();
			PreparedStatement ps=cn.prepareStatement("insert into train_list values(?,?,?,?)");
			ps.setInt(1, Train_no);
			ps.setString(2, Train_name);
			ps.setString(3, Start);
			ps.setString(4, Destination);
	
			ps.execute();
			out.print("record saved...");
			RequestDispatcher rd=request.getRequestDispatcher("train_list.html");
			rd.include(request, response);
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
