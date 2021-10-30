<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body class="home_container">
<%@page import="java.sql.*,calldatabase.*" %>
		<header>
			<div class="container">
			<div class="logo_container">
				<figure><a><img src="logo.png" alt="Train_logo"></a></figure>
			</div>
			<ul class="home_sub_container">
				<li><a href="users_list.jsp">View Users</a></li>
				<li><a href="train_list.html" >Add Train List</a></li>
				<li><a href="update.html">Update Train List</a></li>
				<li><a href="booking_details.jsp">Booking details</a></li>
				<li><a href="logout.html">Logout</a></li> 
			</ul>
		</div>
		</header>
		<div class="information_main_container">
        	<div class="info_container">
			<table border="2">
<tr><th colspan="5">User Details</th></tr>
<tr><td>FirstName</td><td>LastName</td><td>Email</td><td>Mobile_num</td><td>Address</td></tr>
<%
try{
	Connection cn=GetData.getCn();
	PreparedStatement ps=cn.prepareStatement("select * from user");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
</tr>
<%} %>
<%}catch(Exception e){
	out.print(e);
} %>
</table>
		</div>	
		</div>
</body>
</html>