<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="flight_ticket_booking_servlet_project.dto.FlightBookingDetails"%>
<%@page import="flight_ticket_booking_servlet_project.dao.FlightBookingDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User-Flight-display</title>
<style>
* {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }
        
        .filter {
            position: absolute;
            right: 0px;
            left: 0px;
            top: 0px;
            bottom: 0px;
            z-index: 1;
            opacity: .9;
            background: linear-gradient(90deg, rgb(66, 75, 2) ,
                rgba(216, 239, 14, 0.934) );
        }
        
        table {
            position: absolute;
            z-index: 1;
            left: 750px;
            top: 350px;
            transform: translate(-50%, -50%);
            width: 60%;
            border-collapse: collapse;
            border-spacing: 0px;
            border-radius: 12px 12px 0 0;
            overflow: hidden;
            background: #fafafa;
            text-align: center;
        }
        
        td {
            padding: 3px 15px;
        }
        
        th {
            padding: 20px 20px;
            background: #6daa03e7;
            color: #fafafa;
            text-transform: uppercase;
            font-family: cursive;
        }
        
        td {
            font-family: cursive;
            font-size: 17px;
        }
        
        tr:nth-child(odd) {
            background-color: #cde9e9;
        }
        
        .heading {
            background-color: #518b0ef1;
            color: white;
            font-size: 20px;
            font-family: cursive;
        }
        
        .show {
            text-decoration: none;
            color: white;
            border: 2px solid white;
            background-color: #518b0ef1;
            padding: 10px 15px;
            border-radius: 8px;
            font-family: cursive;
        }
        
        
</style>
</head>
<body>
<%
	HttpSession httpSession = request.getSession();
	Long pnr = (Long)httpSession.getAttribute("pnr");
	FlightBookingDao bookingDao = new FlightBookingDao();
	FlightBookingDetails details = bookingDao.getBookedflightBypnr(pnr);
%>
<div class="filter"></div>
	<div class="table-box">
		<table border="2px">	
		<tr>
				<th colspan="11" class="heading">Booking-Details</th>
		</tr>
		
		<tr class="table-row">
			<th>PNR</th>
			<th>name</th>
			<th>email</th>
			<th>phone</th>
			<th>age</th>
			<th>gender</th>
			<th>price</th>
			<th>flightNumber</th>
			<th>ShowTicket</th>
		</tr>
		<tr>
			<td><%=details.getPnr()%></td>
			<td><%=details.getName() %></td>
			<td><%=details.getEmail() %></td>
			<td><%=details.getPhone() %></td>
			<td><%=details.getAge() %></td>
			<td><%=details.getGender() %></td>
			<td><%=details.getPrice() %></td>
			<td><%=details.getFlightNumber() %></td>
			<td><a href="ticket.jsp"><button class="show">ShowTicket</button></a></td>
		</tr>
		</table>
	</div>	
</body>
</html>