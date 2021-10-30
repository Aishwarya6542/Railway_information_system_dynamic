<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RAILWAY INFORMATION SYSTEM - User's Page</title>
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
			<!--<li><a href="newuserlogin.html">Register Here </a></li>
			<li class="signup_link"><a href="userlogin.html" > Sign in </a></li>
			<li class="slash">/</li>
			<li class="login_link"><a href="newuserlogin.html">Sign up</a></li>-->
			<%if(session.getAttribute("FirstName")==null){
				 response.sendRedirect("userlogin.html");
			}
				%>
            <li>Welcome ${FirstName}</li>
			<li><a href="ticket_booking.jsp">Ticket Booking</a></li>
			<li><a href="train_info.html">About Indian Railways</a></li>
            <li class="signup_link"><a href="Logout" > Logout </a></li>
			<!--<li><a href="admin_login.html">Admin Login </a></li>-->
		</ul>
	</div>
	</header>
    <div class="train_table_container">
        <h2>List of Indian Railways trains between stations</h2>
        <div class="train_list_container">
        <table border="2">
            <tr>
                <th>Train no.</th>
                <th>Train name</th>
                <th>Starts</th>
                <th>Ends</th>
            </tr>
            <tr>
                <td>12723</td>
                <td>Andhra Pradesh Express</td>
                <td>Hyderabad Decan</td>
                <td>New Delhi</td>
            </tr>
            <tr>
                <td>22416</td>
                <td>Andhra Pradesh Express</td>
                <td>New Delhi</td>
                <td>Vishakapatnam</td>
            </tr>
            <tr>
                <td>12724</td>
                <td>Andhra Pradesh Express</td>
                <td>New Delhi</td>
                <td>Hyderabad Decan</td>
            </tr>
            <tr>
                <td>12707</td>
                <td>Andhra Pradesh Sampark Kranti</td>
                <td>Tirupati</td>
                <td>H Nizamuddin</td>
            </tr>
            <tr>
                <td>19707</td>
                <td>Aravali Express</td>
                <td>Bandra Terminus</td>
                <td>Jaipur</td>
            </tr>
            <tr>
                <td>19708</td>
                <td>Aravali Express</td>
                <td>Jaipur</td>
                <td>Bandra Terminus</td>
            </tr>
            <tr>
                <td>15813</td>
                <td>Arunachal Express</td>
                <td>Ranjiya Junction</td>
                <td>Murkeongselek</td>
            </tr>
            <tr>
                <td>15814</td>
                <td>Arunachal Express</td>
                <td>Dhemaji</td>
                <td>Ranjiya Junction</td>
            </tr>
            <tr>
                <td>12915</td>
                <td>Ashram Express</td>
                <td>Ahmedabad Junction</td>
                <td>Delhi</td>
            </tr>
            <tr>
                <td>12916</td>
                <td>Ashram Express</td>
                <td>Delhi</td>
                <td>Ahmedabad Junction</td>
            </tr>
            <tr>
                <td>06314</td>
                <td>Bangalore Express</td>
                <td>Kochuveli</td>
                <td>Bangalore Cy Junction</td>
            </tr>
            <tr>
                <td>06516</td>
                <td>Bangalore Express</td>
                <td>Tirunelveli</td>
                <td>Bangalore Cy Junction</td>
            </tr>
            <tr>
                <td>12657</td>
                <td>Bangalore Mail</td>
                <td>Chennai Central</td>
                <td>Bangalore Cy Junction</td>
            </tr>
            <tr>
                <td>56263</td>
                <td>Bangalore Passenger</td>
                <td>Mysore Junction</td>
                <td>Bangalore Cy Junction</td>
            </tr>
            <tr>
                <td>12829</td>
                <td>Bhubaneshwar Express</td>
                <td>Chennai Central</td>
                <td>Bhubaneshwar</td>
            </tr>
            <tr>
                <td>18495</td>
                <td>Bhubaneshwar Express</td>
                <td>Rameshwaram</td>
                <td>Bhubaneshwar</td>
            </tr>
            <tr>
                <td>16215</td>
                <td>Chamundi Express</td>
                <td>Mysore Junction</td>
                <td>Bangalore Cy Junction</td>
            </tr>
            <tr>
                <td>12759</td>
                <td>Charminar Express</td>
                <td>Chennai Central</td>
                <td>Hyderabad Decan</td>
            </tr>
            <tr>
                <td>16615</td>
                <td>Chemmozhi Express</td>
                <td>Mannargudi</td>
                <td>Coimbatore Junction</td>
            </tr>
            <tr>
                <td>06060</td>
                <td>Chennai Express</td>
                <td>Velankanni</td>
                <td>Chennai Egmore</td>
            </tr>
            <tr>
                <td>06616</td>
                <td>Chennai Superfast Express</td>
                <td>Coimbatore Junction</td>
                <td>Chennai Central</td>
            </tr>
            <tr>
                <td>12604</td>
                <td>Chennai Express</td>
                <td>Hyderabad Decan</td>
                <td>Chennai Central</td>
            </tr>
            <tr>
                <td>12434</td>
                <td>Chennai Rajdhni</td>
                <td>H Nizamuddin</td>
                <td>Chennai Central</td>
            </tr>
            <tr>
                <td>12674</td>
                <td>Cheran Express</td>
                <td>Coimbatore Junction</td>
                <td>Chennai Central</td>
            </tr>
            <tr>
                <td>12775</td>
                <td>Cocanada Express</td>
                <td>Kakinada Town</td>
                <td>Secunderabad Junction</td>
            </tr>
            <tr>
                <td>12776</td>
                <td>Cocanada Express</td>
                <td>Secunderabad Junction</td>
                <td>Kakinada Town</td>
            </tr>
            <tr>
                <td>06039</td>
                <td>Coimbatore Express</td>
                <td>Chennai Egmore</td>
                <td>Coimbatore Junction</td>
            </tr>
            <tr>
                <td>16617</td>
                <td>Coimbatore Express</td>
                <td>Rameswaram</td>
                <td>Coimbatore Junction</td>
            </tr>
            <tr>
                <td>06618</td>
                <td>Coimbatore Express</td>
                <td>Nagercoil Junction</td>
                <td>Coimbatore Junction</td>
            </tr>
            <tr>
                <td>06636</td>
                <td>Coimbatore Express</td>
                <td>Tiruchirapalli</td>
                <td>Coimbatore Junction</td>
            </tr>
            <tr>
                <td>11007</td>
                <td>Deccan Express</td>
                <td>Mumbai Cst</td>
                <td>Pune Junction</td>
            </tr>
            <tr>
                <td>11008</td>
                <td>Deccan Express</td>
                <td>Pune Junction</td>
                <td>Mumbai Cst</td>
            </tr>
            <tr>
                <td>16865</td>
                <td>Ernakulam Express</td>
                <td>Karaikal</td>
                <td>Eranakulam Junction</td>
            </tr>
            <tr>
                <td>12677</td>
                <td>Ernakulam Express</td>
                <td>Bangalore Cy Junction</td>
                <td>Eranakulam Junction</td>
            </tr>
            <tr>
                <td>12779</td>
                <td>Goa Express</td>
                <td>Vasco Da Gama</td>
                <td>H Nizamuddin</td>
            </tr>
            <tr>
                <td>12903</td>
                <td>Goldentemple Ml</td>
                <td>Mumbai Central</td>
                <td>Amritsar Junction</td>
            </tr>
            <tr>
                <td>19011</td>
                <td>Gujarat Express</td>
                <td>Mumbai Central</td>
                <td>Ahmedabad Junction</td>
            </tr>
            <tr>
                <td>12509</td>
                <td>Guwahati Express</td>
                <td>Bangalore Cy Junction</td>
                <td>Guwahati</td>
            </tr>
            <tr>
                <td>16591</td>
                <td>Hampi Express</td>
                <td>Hubli Junction</td>
                <td>Mysore Junction</td>
            </tr>
            <tr>
                <td>52456</td>
                <td>Himalyan Queen</td>
                <td>Simla</td>
                <td>Kalka</td>
            </tr>
            <tr>
                <td>19312</td>
                <td>Ind Pune Express</td>
                <td>Indore Junction Bg</td>
                <td>Pune Junction</td>
            </tr>
            <tr>
                <td>22609</td>
                <td>Intercity Express</td>
                <td>Mangalore Cntl</td>
                <td>Coimbatore Junction</td>
            </tr>
            <tr>
                <td>12975</td>
                <td>Jaipur Express</td>
                <td>Mysore Junction</td>
                <td>Jaipur</td>
            </tr>
            <tr>
                <td>54805</td>
                <td>Jaipur Passenger</td>
                <td>Ahmedabad Junction</td>
                <td>Jaipur</td>
            </tr>
            <tr>
                <td>16508</td>
                <td>Jodhpur Express</td>
                <td>Bangalore Cy Junction</td>
                <td>Jodhpur Junction</td>
            </tr>
            <tr>
                <td>14257</td>
                <td>K V Express</td>
                <td>Varanasi Junction</td>
                <td>New Delhi</td>
            </tr>
            <tr>
                <td>17616</td>
                <td>Kacheguda Express</td>
                <td>Madurai Junction</td>
                <td>Kacheguda</td>
            </tr>
            <tr>
                <td>12665</td>
                <td>Kannyakumari Express</td>
                <td>Howrah Junction</td>
                <td>Kanyakumari</td>
            </tr>
            <tr>
                <td>12628</td>
                <td>Karnataka Express</td>
                <td>New Delhi</td>
                <td>Bangalore Cy Junction</td>
            </tr>
            <tr>
                <td>16021</td>
                <td>Kaveri Express</td>
                <td>Chennai Central</td>
                <td>Mysore Junction</td>
            </tr>
            <tr>
                <td>12301</td>
                <td>Kolkata Rajdhni</td>
                <td>Howrah Junction</td>
                <td>New Delhi</td>
            </tr>
            <tr>
                <td>12676</td>
                <td>Kovai Express</td>
                <td>Coimbatore Junction</td>
                <td>Chennai Central</td>
            </tr>
            <tr>
                <td>17406</td>
                <td>Krishna Express</td>
                <td>Adilabad</td>
                <td>Tirupati</td>
            </tr>
            <tr>
                <td>12608</td>
                <td>Lalbagh Express</td>
                <td>Bangalore Cy Junction</td>
                <td>Chennai Central</td>
            </tr>
            <tr>
                <td>11017</td>
                <td>Ltt Karaikal Express</td>
                <td>Lokmanyatilak T</td>
                <td>Karaikal</td>
            </tr>
            <tr>
                <td>16093</td>
                <td>Lucknow Express</td>
                <td>Chennai Central</td>
                <td>Lucknow Nr</td>
            </tr>
            <tr>
                <td>16054</td>
                <td>Madras Express</td>
                <td>Tirupati</td>
                <td>Chennai Central</td>
            </tr>
            <tr>
                <td>11043</td>
                <td>Madurai Express</td>
                <td>Lokmanyatilak T</td>
                <td>Madurai Junction</td>
            </tr>
            <tr>
                <td>56701</td>
                <td>Madurai Passenger</td>
                <td>Punalur</td>
                <td>Madurai Junction</td>
            </tr>
            <tr>
                <td>06194</td>
                <td>Manamadurai Express</td>
                <td>Sengottai</td>
                <td>Manamadurai Junction</td>
            </tr>
            <tr>
                <td>16855</td>
                <td>Mangalore Express</td>
                <td>Puducherry</td>
                <td>Mangalore Cntl</td>
            </tr>
            <tr>
                <td>16179</td>
                <td>Mannai Express</td>
                <td>Chennai Egmore</td>
                <td>Mannargudi</td>
            </tr>
            <tr>
                <td>16340</td>
                <td>Mumbai Express</td>
                <td>Nagercoil Junction</td>
                <td>Mumbai Cst</td>
            </tr>
            <tr>
                <td>16339</td>
                <td>Nagarcoil Express</td>
                <td>Mumbai Cst</td>
                <td>Nagercoil Junction</td>
            </tr>
            <tr>
                <td>06309</td>
                <td>Nagercoil Express</td>
                <td>Chennai Central</td>
                <td>Nagercoil Junction</td>
            </tr>
            <tr>
                <td>12667</td>
                <td>Nagercoil Express</td>
                <td>Chennai Egmore</td>
                <td>Nagercoil Junction</td>
            </tr>
            <tr>
                <td>12205</td>
                <td>Nanda Devi Express</td>
                <td>New Delhi</td>
                <td>Dehradun</td>
            </tr>
            <tr>
                <td>12733</td>
                <td>Narayanadri Express</td>
                <td>Tirupati</td>
                <td>Secunderabad Junction</td>
            </tr>
            <tr>
                <td>12671</td>
                <td>Nilagiri Express</td>
                <td>Chennai Central</td>
                <td>Metupalaiyam</td>
            </tr>
            <tr>
                <td>19252</td>
                <td>Okha Somnath Express</td>
                <td>Okha</td>
                <td>Somnath</td>
            </tr>
            <tr>
                <td>06136</td>
                <td>Onr Mtp Passenger</td>
                <td>Coonoor</td>
                <td>Metupalaiyam</td>
            </tr>
            <tr>
                <td>56138</td>
                <td>Onr Uam Passenger</td>
                <td>Coonoor</td>
                <td>Udagamandalam</td>
            </tr>
            <tr>
                <td>12763</td>
                <td>Padmavathi Express</td>
                <td>Tirupati</td>
                <td>Secunderabad Junction</td>
            </tr>
            <tr>
                <td>22651</td>
                <td>Palani Express</td>
                <td>Chennai Central</td>
                <td>Palani</td>
            </tr>
            <tr>
                <td>22652</td>
                <td>Palani Mas Express</td>
                <td>Palani</td>
                <td>Chennai Central</td>
            </tr>
            <tr>
                <td>12605</td>
                <td>Pallavan Express</td>
                <td>Chennai Egmore</td>
                <td>Karaikkudi Junction</td>
            </tr>
            <tr>
                <td>12606</td>
                <td>Pallavan Express</td>
                <td>Karaikkudi Junction</td>
                <td>Chennai Egmore</td>
            </tr>
            <tr>
                <td>12637</td>
                <td>Pandian Express</td>
                <td>Chennai Egmore</td>
                <td>Madurai Junction</td>
            </tr>
            <tr>
                <td>18621</td>
                <td>Patliputra Express</td>
                <td>Patna Junction</td>
                <td>Hatia</td>
            </tr>
            <tr>
                <td>22643</td>
                <td>Patna Express</td>
                <td>Eranakulam Junction</td>
                <td>Patna Junction</td>
            </tr>
            <tr>
                <td>12693</td>
                <td>Pearl City Express</td>
                <td>Chennai Egmore</td>
                <td>Tuticorin</td>
            </tr>
            <tr>
                <td>12170</td>
                <td>Pune Intercity</td>
                <td>Solapur Junction</td>
                <td>Pune Junction</td>
            </tr>
            <tr>
                <td>18568</td>
                <td>Qln Vskp Express</td>
                <td>Kollam Junction</td>
                <td>Vishakapatnam</td>
            </tr>
            <tr>
                <td>07112</td>
                <td>Qln Sc Express</td>
                <td>Kollam Junction</td>
                <td>Secunderabad Junction</td>
            </tr>
            <tr>
                <td>07214</td>
                <td>Qln Bza Express</td>
                <td>Kollam Junction</td>
                <td>Vijayawada Junction</td>
            </tr>
            <tr>
                <td>22693</td>
                <td>Rajdhani Express</td>
                <td>Bangalore Cy Junction</td>
                <td>H Nizamuddin</td>
            </tr>
            <tr>
                <td>16618</td>
                <td>Rameswaram Express</td>
                <td>Coimbatore Junction</td>
                <td>Rameswaram</td>
            </tr>
            <tr>
                <td>16701</td>
                <td>Rameswaram Express</td>
                <td>Chennai Egmore</td>
                <td>Rameswaram</td>
            </tr>
            <tr>
                <td>16177</td>
                <td>Rock Fort Express</td>
                <td>Chennai Egmore</td>
                <td>Tiruchirapalli</td>
            </tr>
            <tr>
                <td>16178</td>
                <td>Rock Fort Express</td>
                <td>Tiruchirapalli</td>
                <td>Chennai Egmore</td>
            </tr>
            <tr>
                <td>11064</td>
                <td>Sa Chennai Express</td>
                <td>Salem Junction</td>
                <td>Chennai Egmore</td>
            </tr>
            <tr>
                <td>17229</td>
                <td>Sabari Express</td>
                <td>Trivandrum Cntl</td>
                <td>Hyderabad Decan</td>
            </tr>
            <tr>
                <td>17230</td>
                <td>Sabari Express</td>
                <td>Hyderabad Decan</td>
                <td>Trivandrum Cntl</td>
            </tr>
            <tr>
                <td>16057</td>
                <td>Sapthagiri Express</td>
                <td>Tirupati</td>
                <td>Chennai Central</td>
            </tr>
            <tr>
                <td>12277</td>
                <td>Satabdi Express</td>
                <td>Howrah Junction</td>
                <td>Puri</td>
            </tr>
            <tr>
                <td>10001</td>
                <td>Satpura Express</td>
                <td>Balaghat Junction</td>
                <td>Jabalpur</td>
            </tr>
            <tr>
                <td>12795</td>
                <td>Sc Intercity</td>
                <td>Vijayawada Junction</td>
                <td>Secunderabad Junction</td>
            </tr>
            <tr>
                <td>06193</td>
                <td>Sengottai Express</td>
                <td>Manamadurai Junction</td>
                <td>Sengottai</td>
            </tr>
            <tr>
                <td>17209</td>
                <td>Seshadri Express</td>
                <td>Bangalore Cy Junction</td>
                <td>Kakinada Town</td>
            </tr>
            <tr>
                <td>12769</td>
                <td>Seven Hills Express</td>
                <td>Tirupati</td>
                <td>Secunderabad Junction</td>
            </tr>
            <tr>
                <td>12007</td>
                <td>Shatabdi Express</td>
                <td>Chennai Central</td>
                <td>Mysore Junction</td>
            </tr>
            <tr>
                <td>22601</td>
                <td>Shirdi Express</td>
                <td>Chennai Central</td>
                <td>Sainagar Shirdi</td>
            </tr>
            <tr>
                <td>16181</td>
                <td>Silambu Express</td>
                <td>Chennai Egmore</td>
                <td>Manamadurai Junction</td>
            </tr>
            <tr>
                <td>12642</td>
                <td>Thirukkural Express</td>
                <td>H Nizamuddin</td>
                <td>Kanyakumari</td>
            </tr>
            <tr>
                <td>12613</td>
                <td>Tippu Express</td>
                <td>Mysore Junction</td>
                <td>Bangalore Cy Junction</td>
            </tr>
            <tr>
                <td>16735</td>
                <td>Tiruchendur Express</td>
                <td>Chennai Egmore</td>
                <td>Tiruchendur</td>
            </tr>
            <tr>
                <td>12654</td>
                <td>Tiruchi Express</td>
                <td>Mangalore Cntle</td>
                <td>Tiruchchirapali</td>
            </tr>
            <tr>
                <td>17487</td>
                <td>Tirumala Express</td>
                <td>Tirupati</td>
                <td>Vishakapatnam</td>
            </tr>
            <tr>
                <td>11021</td>
                <td>Tirunelveli Express</td>
                <td>Dadar</td>
                <td>Tirunelveli</td>
            </tr>
            <tr>
                <td>16331</td>
                <td>Trivandram Express</td>
                <td>Mumbai Cst</td>
                <td>Trivandrum Cntl</td>
            </tr>
            <tr>
                <td>12432</td>
                <td>Trivandrm Rajdhani</td>
                <td>H Nizamuddin</td>
                <td>Trivandrum Cntl</td>
            </tr>
            <tr>
                <td>11069</td>
                <td>Tulsi Express</td>
                <td>Lokmanyatilak T</td>
                <td>Allahabad Junction</td>
            </tr>
            <tr>
                <td>17023</td>
                <td>Tungabhadra Express</td>
                <td>Secunderabad Junction</td>
                <td>Kurnool Town</td>
            </tr>
            <tr>
                <td>16236</td>
                <td>Tuticorin Express</td>
                <td>Mysore Junction</td>
                <td>Tuticorin</td>
            </tr>
            <tr>
                <td>16183</td>
                <td>Uzhavan Express</td>
                <td>Chennai Egmore</td>
                <td>Thanjavur</td>
            </tr>
            <tr>
                <td>19565</td>
                <td>Uttaranchal Express</td>
                <td>Okha</td>
                <td>Dehradun</td>
            </tr>
            <tr>
                <td>12635</td>
                <td>Vaigai Express</td>
                <td>Chennai Egmore</td>
                <td>Madurai Junction</td>
            </tr>
            <tr>
                <td>12553</td>
                <td>Vaishali Express</td>
                <td>Barauni Junction</td>
                <td>New Delhi</td>
            </tr>
            <tr>
                <td>16185</td>
                <td>Velankanni Express</td>
                <td>Chennai Egmore</td>
                <td>Velankanni</td>
            </tr>
            <tr>
                <td>16627</td>
                <td>West Coast Express</td>
                <td>Chennai Central</td>
                <td>Mangalore Cntl</td>
            </tr>
            <tr>
                <td>22649</td>
                <td>Yercaud Express</td>
                <td>Chennai Central</td>
                <td>Erode Junction</td>
            </tr>
            <tr>
                <td>22650</td>
                <td>Yercaud Express</td>
                <td>Erode Junction</td>
                <td>Chennai Central</td>
            </tr>
            <tr>
                <td>12395</td>
                <td>Ziyarat Express</td>
                <td>Rjndr Ngr Bihar</td>
                <td>Ajmer Junction</td>
            </tr>
            <tr>
                <td>12396</td>
                <td>Ziyarat Express</td>
                <td>Ajmer Junction</td>
                <td>Rjndr Ngr Bihar</td>
            </tr>
            <tr><td colspan="4"></td></tr>
        </table>
    </div>
</div>
</body>
</html>