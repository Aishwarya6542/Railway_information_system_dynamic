<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket booking</title>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body class="userpage_container">
<%@page import="java.sql.*,calldatabase.*" %>
    <header>
		<div class="container">
		<div class="logo_container">
			<figure><a><img src="logo.png" alt="Train_logo"></a></figure>
		</div>
		<ul class="home_sub_container">
			<li><a href="UserPage.html">Back</a></li>
            <li class="signup_link"><a href="Logout" > Logout </a></li>
			<!--<li><a href="admin_login.html">Admin Login </a></li>-->
		</ul>
	</div>
	</header>
	<div class="booking_subnewlogin_container">
		<div class="new_heading_container">
			<h3>Kindly enter your credentials</h3>
		</div>
		<div class="booking_form_container">
		<form name="frm" action="Ticket_Booking">
			<table class="user-details">
				<tr>
					<td>FirstName </td>
					<td><input type="text" name="fn" onfocus="this.value=''" ><span class="required">*</span></td>
				</tr>
				<tr>
					<td>LastName </td>
					<td><input type="text" name="ln" onfocus="this.value=''" autocomplete="off"><span class="required">*</span></td>
				</tr>
				<tr>
					<td>Email </td>
					<td><input type="email" name="mail" onfocus="this.value=''" autocomplete="off"><span class="required">*</span></td>
				</tr>
				<tr>
					<td>Mobile no </td>
					<td><input type="number" name="moNum" onfocus="this.value=''" autocomplete="off"></td>
				</tr>
			</table>
			<table class="train-details">
				<tr>
					<td>Train no </td>
					<td><input type="int" name="tn" onfocus="this.value=''" ><span class="required">*</span></td>
				</tr>
				<tr>
					<td>Train name </td>
					<td><input type="text" name="tna" onfocus="this.value=''" autocomplete="off"><span class="required">*</span></td>
				</tr>
				<tr>
					<td>From </td>
					<td><input type="text" name="sou" onfocus="this.value=''" autocomplete="off"><span class="required">*</span></td>
				</tr>
				<tr>
					<td>To </td>
					<td><input type="text" name="Des" onfocus="this.value=''" autocomplete="off"></td>
				</tr>
				<tr>
					<td>Date </td>
					<td><input type="number" name="dat" autocomplete="off"></td>
				</tr>
				<tr>
					<td>No of tickets </td>
					<td><input type="number" name="not" onfocus="this.value=''" autocomplete="off"></td>
				</tr>
				<tr>
					<td>Facility </td>
					<td><select name="Facility">
  						<option value="General">General</option>
  						<option value="AC">AC</option>
  						<option value="Ladies">Ladies</option>
						</select></td>
				</tr>
			</table>
			<div class="ticket_user_submit">
					<input type="submit" class="sub_btn" value="Submit" onclick="newUserValidation(fn.value,ln.value,pw.value,re_pw.value,mail.value,moNum.value,address.value)">
			</div>
		</form>
		</div>
	</div>
</body>
</html>