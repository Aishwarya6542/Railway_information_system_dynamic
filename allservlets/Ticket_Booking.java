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


/**
 * Servlet implementation class Ticket_Booking
 */
@WebServlet("/Ticket_Booking")
public class Ticket_Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			String FirstName=request.getParameter("fn");
			String LastName=request.getParameter("ln");
			String Email=request.getParameter("mail");
			String Mobile_num=request.getParameter("monum");
			int Train_no=Integer.parseInt(request.getParameter("tn"));
			String Train_name=request.getParameter("tna");
			String Source=request.getParameter("sou");
			String Destination=request.getParameter("Des");
			String DateInfo=(String)request.getParameter("dat");
			String Facility=request.getParameter("Facility");
			int No_of_tickets=Integer.parseInt(request.getParameter("not"));
			
			
			Connection cn=GetData.getCn();
			PreparedStatement ps=cn.prepareStatement("insert into ticket_booking(FirstName,LastName,Email,Mobile_num,Train_no,Train_name,Source,Destination,DateInfo,Facility,No_of_tickets) values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, FirstName);
			ps.setString(2, LastName);
			ps.setString(3, Email);
			ps.setString(4, Mobile_num);
			ps.setInt(5, Train_no);
			ps.setString(6, Train_name);
			ps.setString(7, Source);
			ps.setString(8, Destination);
			ps.setString(9, DateInfo);
			ps.setString(10, Facility);
			ps.setInt(11, No_of_tickets);
			ps.execute();
			out.print("Ticket booked success for ID :"+FirstName+" "+LastName);
			RequestDispatcher rd=request.getRequestDispatcher("ticket_booking.jsp");
			rd.include(request, response);
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
