<%@page import="javax.print.attribute.standard.Destination"%>
<%@page import="javax.xml.transform.Source"%>
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
	
	String source = request.getParameter("source");
	String destination = request.getParameter("destination");
	
	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
	List<AdminAddFlight> addFlights = addFlightDao.getFlightBySourceToDestination(source, destination);
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
				<td><img alt ="indigo" src="image/wp9133939.jpg" width="100px" height="80px"></td>
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
		
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("goAir")){ %>
			<tr>
				<td><img alt ="goAir" src="image/wp2574353.jpg" width="100px" height="80px"></td>
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
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("Akasha-Air")){ %>
			<tr>
				<td><img alt ="Akasha-Air" src="image/wp9133547.jpg" ></td>
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