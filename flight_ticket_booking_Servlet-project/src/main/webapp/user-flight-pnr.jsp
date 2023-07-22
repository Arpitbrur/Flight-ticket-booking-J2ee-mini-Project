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
		HttpSession httpSession = request.getSession();
		Long pnr = (Long)httpSession.getAttribute("pnr");
		FlightBookingDao dao = new FlightBookingDao();
		FlightBookingDetails details = dao.getBookedflightBypnr(pnr);
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
			<td><%=details.getPnr()%></td>
			<td><%=details.getName() %></td>
			<td><%=details.getEmail() %></td>
			<td><%=details.getPhone() %></td>
			<td><%=details.getAge() %></td>
			<td><%=details.getGender() %></td>
			<td><%=details.getPrice() %></td>
			<td><%=details.getFlightNumber() %></td>
		</tr>
	</table>
</body>
</html>