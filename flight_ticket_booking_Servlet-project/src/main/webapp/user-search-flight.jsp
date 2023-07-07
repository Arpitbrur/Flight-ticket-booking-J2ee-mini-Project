<%@page import="flight_ticket_booking_servlet_project.dto.AdminAddFlight"%>
<%@page import="java.util.List"%>
<%@page import="flight_ticket_booking_servlet_project.dao.AdminAddFlightDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User search flight</title>
</head>
<body>
	
	<%
		AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
		List<AdminAddFlight> addFlights = addFlightDao.getAllFlight();
	%>
	<div>
		<table border="2px">
			<tr>
				<th>LoGo</th>
				<th>Flight Number</th>
				<th>Flight Name</th>
				<th>Source</th>
				<th>Destination</th>
				<th>Departure-Time</th>
				<th>arrival-Time</th>
				<th>EconomyPrice</th>
				<th>BusinessPrice</th>
				<th>BookFlight</th>
			</tr>
			
			<%for(AdminAddFlight addFlight : addFlights) {%>
				<%if(addFlight.getFlightName().equalsIgnoreCase("indigo")){ %>
			<tr>
				<td><img alt ="indigo" src="https://1000logos.net/wp-content/uploads/2021/07/IndiGo-Logo.png" width="100px" height="80px"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="user-book-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button>Book</button></a></td>
			</tr>
			<%} %>
			<%} %>
		</table>
	</div>
	
</body>
</html>