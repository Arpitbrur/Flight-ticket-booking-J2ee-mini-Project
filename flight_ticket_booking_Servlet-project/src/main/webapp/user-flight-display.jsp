<%@page import="flight_ticket_booking_servlet_project.dto.FlightBookingDetails"%>
<%@page import="flight_ticket_booking_servlet_project.dao.FlightBookingDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		FlightBookingDao bookingDao = new FlightBookingDao();
		long pnr = (long) Math.floor(732647565523L);
		FlightBookingDetails bookingDetails = bookingDao.getFlightfrompnr(pnr);
	%>
	
	<table border="1">
		<tr>
			<th>PNR</th>
			<th>name</th>
			<th>email</th>
			<th>phone</th>
			<th>age</th>
			<th>gender</th>
			<th>price</th>
			<th>flightNumber</th>
		</tr>
		<tr>
			<td><%=bookingDetails.getPnr() %></td>
			<td><%=bookingDetails.getName() %></td>
			<td><%=bookingDetails.getEmail() %></td>
			<td><%=bookingDetails.getPhone() %></td>
			<td><%=bookingDetails.getAge() %></td>
			<td><%=bookingDetails.getGender() %></td>
			<td><%=bookingDetails.getPrice() %></td>
			<td><%=bookingDetails.getFlightNumber() %></td>
		</tr>
	</table>
</body>
</html>