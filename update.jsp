<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%@page import="java.sql.*,calldatabase.*" %>
<form action="Update">
<table>
<tr><th colspan="2">Update Fields</th></tr>
<%
try{
	int Train_no=Integer.parseInt(request.getParameter("tno"));
	session=request.getSession();
	session.setAttribute("Train_no",Train_no);
	Connection cn=GetData.getCn();
	PreparedStatement ps=cn.prepareStatement("select Train_no,Train_name,Starting_place,Destination_place from train_list where Train_no=?");
	ps.setInt(1, Train_no);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
%>
<tr><td>Enter Train name </td><td><input type="text" name="tna" value=<%=rs.getString(1) %>></td></tr>
<tr><td>Enter Starting place </td><td><input type="text" name="sp" value=<%=rs.getString(2) %>></td></tr>
<tr><td>Enter Destination place </td><td><input type="text" name="dp" value=<%=rs.getString(3) %>></td></tr>
<%}else{ %>
	<font color="red">No record found</font><br>
	<a href="update.html">Back</a>
<% } %>
<%}catch(Exception e){
	out.print(e);
} %>
<tr><td colspan="2"><input type="submit" value="update"></td></tr>
</table>

</form>
</body>
</html>