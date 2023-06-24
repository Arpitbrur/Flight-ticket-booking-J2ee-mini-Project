<%@page import="javax.swing.text.StyledEditorKit.ForegroundAction"%>
<%@page import="flight_ticket_booking_servlet_project.dto.AdminAddFlight"%>
<%@page import="java.util.List"%>
<%@page import="flight_ticket_booking_servlet_project.dao.AdminAddFlightDao"%>
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
		AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
	
		List<AdminAddFlight> addFlights = addFlightDao.getAllFlight();
	%>
	<div>
		<table>
			<tr>
				<th>Flight Image</th>
				<th>Flight Number</th>
				<th>Flight Name</th>
				<th>Source</th>
				<th>Destination</th>
				<th>Departure-Time</th>
				<th>arrival-Time</th>
				<th>EconomyPrice</th>
				<th>BusinessPrice</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>
			<%for(AdminAddFlight addFlight: addFlights){%>
			<% if(addFlight.getFlightName().equals("indigo")){%>
			<tr>
				<td><img alt ="indigo" src=""></td>
				<td><%=addFlight.getFlightNumber() %></td>
				<td><%=addFlight.getFlightName() %></td>
				<td><%=addFlight.getFlightSource() %></td>
				<td><%=addFlight.getFlightDestination() %></td>
				<td><%=addFlight.getFlightDepartureTime() %></td>
				<td><%=addFlight.getFlightArrivalTime() %></td>
				<td><%=addFlight.getFlightEconomyPrice() %></td>
				<td><%=addFlight.getFlightBusinessPrice() %></td>
				<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber() %>"><button>DELETE</button></a></td>
				<td><a href="updateFlight.jsp?flightNumber=<%=addFlight.getFlightNumber() %>"><button>Update</button></a></td>
			
			</tr>
			<%} %>
			<%} %>
		</table>
	</div>
</body>
</html>