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
<style>

* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}


.logo {
	border: 2px solid gray;
	border-radius: 50%;
	height: 80px;
	width: 80px;
}

.filter {
	position: absolute;
	right: 0px;
	left: 0px;
	top: 0px;
	bottom: 0px;
	z-index: 1;
	opacity: .7;
	background: rgb(2, 0, 36);
	background: linear-gradient(90deg, rgb(32, 36, 0) 0%,
		rgb(40, 247, 8) 100%);
}

table {
	position: absolute;
	z-index: 2;
	left: 50%;
	top: 50%;
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
	background: #1d9807e6;
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
	background-color: #437609ef;
	color: white;
	font-size: 20px;
	font-family: cursive;
}

.book {
	text-decoration: none;
	color: white;
	border: 2px solid white;
	background-color: #437609ef;
	padding: 10px 15px;
	border-radius: 8px;
	font-family: cursive;
}
}

</style>
</head>
<body>
	
	<%
	
	String source = request.getParameter("source");
	String destination = request.getParameter("destination");
	
	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
	List<AdminAddFlight> addFlights = addFlightDao.getFlightBySourceToDestination(source, destination);
	%>
	
	<div class="filter"></div>
	<div class="table-box">
		<table border="2px">
		
		<tr>
				<th colspan="11" class="heading">Flight-Details</th>
		</tr>
		
			<tr class="table-row">
				<th>LoGo</th>
				<th>Flight Number</th>
				<th>Flight Name</th>
				<th>Source</th>
				<th>Destination</th>
				<th>Departure-Time</th>
				<th>arrival-Time</th>
				<th>Economy-Price</th>
				<th>Business-Price</th>
				<th>Book-Flight</th>
			</tr>
			
			<%for(AdminAddFlight addFlight : addFlights) {%>
			<%if(addFlight.getFlightName().equalsIgnoreCase("indigo")){ %>
			<tr>
				<td><img alt ="indigo" src="image/wp9133939.jpg" width="100px" height="80px" class="logo"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="user-book-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="book">Book</button></a></td>
			</tr>
			<%} %>
		
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("goAir")){ %>
			<tr>
				<td><img alt ="goAir" src="image/wp2574353.jpg" width="100px" height="80px" class="logo"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="user-book-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="book">Book</button></a></td>
			</tr>
			<%} %>
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("Akasha-Air")){ %>
			<tr>
				<td><img alt ="Akasha-Air" src="image/wp9133547.jpg" width="100px" height="80px" class="logo"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="user-book-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="book">Book</button></a></td>
			</tr>
			<%} %>
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("AirGo")){ %>
			<tr>
				<td><img alt ="AirGo" src="image/wp9133547.jpg" width="100px" height="80px" class="logo"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="user-book-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="book">Book</button></a></td>
			</tr>
			<%} %>
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("AirIndia")){ %>
			<tr>
				<td><img alt ="AirIndia" src="image/AirIndia-logo.jpg" width="100" height="80" class="logo"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="user-book-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="book">Book</button></a></td>

			</tr>

			<%} %>
			<%} %>
		</table>
	</div>
	
</body>
</html>