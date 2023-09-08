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
<title>Flight details</title>

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

.update {
	text-decoration: none;
	color: white;
	border: 2px solid white;
	background-color: #437609ef;
	padding: 10px 15px;
	border-radius: 8px;
	font-family: cursive;
}

.delete {
	text-decoration: none;
	color: white;
	border: 2px solid white;
	background-color: #d71921;
	padding: 10px 15px;
	border-radius: 8px;
	font-family: cursive;
}

</style>
</head>
<body>

	<%
		AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
		List<AdminAddFlight> addFlights = addFlightDao.getAllFlight();
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
				<th>Arrival-Time</th>
				<th>EconomyPrice</th>
				<th>BusinessPrice</th>
				<th>Delete</th>
				<th>Update</th>
			</tr>
			
			<%for(AdminAddFlight addFlight : addFlights) {%>
				<%if(addFlight.getFlightName().equalsIgnoreCase("Indigo")){ %>
			<tr>
				<td><img alt ="indigo" src="https://1000logos.net/wp-content/uploads/2021/07/IndiGo-Logo.png" width="100px" height="80px" class="logo"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="delete">Delete</button></a></td>
				<td><a href="admin-edit-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="update">Update</button></a></td>
			</tr>
			<%} %>
			
					<%if(addFlight.getFlightName().equalsIgnoreCase("GoAir")){ %>
			<tr>
				<td><img alt ="goAir" src="image/wp9133547.jpg" width="100" height="80" class="logo"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="delete">Delete</button></a></td>
				<td><a href="admin-edit-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="update">Update</button></a></td>
			</tr>

			<%} %>
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("AkashaAir")){ %>
			<tr>
				<td><img alt ="Akasha-Air" src="image/vistara.jpg" width="100" height="80" class="logo"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="delete">Delete</button></a></td>
				<td><a href="admin-edit-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="update">Update</button></a></td>
			</tr>

			<%} %>
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("AirGo")){ %>
			<tr>
				<td><img alt ="AirGo" src="image/wp9133547.jpg" width="100" height="80" class="logo"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="delete">Delete</button></a></td>
				<td><a href="admin-edit-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="update">Update</button></a></td>
			</tr>

			<%} %>
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("AirIndia")){ %>
			<tr>
				<td><img alt ="AirIndia" src="image/wp9361759.jpg" width="100" height="80" class="logo"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="delete">Delete</button></a></td>
				<td><a href="admin-edit-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button class="update">Update</button></a></td>
			</tr>

			<%} %>
			<%} %>
		</table>
	</div>
</body>
</html>