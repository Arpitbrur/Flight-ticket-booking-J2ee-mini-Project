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
		<table border="2px">
			<tr>
				<th>Logo</th>
				<th>Flight Number</th>
				<th>Flight Name</th>
				<th>Source</th>
				<th>Destination</th>
				<th>Departure-Time</th>
				<th>arrival-Time</th>
				<th>EconomyPrice</th>
				<th>BusinessPrice</th>
				<th>Delete</th>
				<th>Update</th>
			</tr>
			
			<%for(AdminAddFlight addFlight : addFlights) {%>
				<%if(addFlight.getFlightName().equalsIgnoreCase("Indigo")){ %>
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
				<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"><button>DELETE</button></a></td>
				<td><a href="admin-edit-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button>Update</button></a></td>
			</tr>
			<%} %>
			
					<%if(addFlight.getFlightName().equalsIgnoreCase("GoAir")){ %>
			<tr>
				<td><img alt ="goAir" src="image/wp9133547.jpg" width="100" height="80"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"><button>DELETE</button></a></td>
				<td><a href="admin-edit-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button>Update</button></a></td>
			</tr>

			<%} %>
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("AkashaAir")){ %>
			<tr>
				<td><img alt ="Akasha-Air" src="image/vistara.jpg" width="100" height="80"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"><button>DELETE</button></a></td>
				<td><a href="admin-edit-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button>Update</button></a></td>
			</tr>

			<%} %>
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("AirGo")){ %>
			<tr>
				<td><img alt ="AirGo" src="image/wp9133547.jpg" width="100" height="80"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"><button>DELETE</button></a></td>
				<td><a href="admin-edit-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button>Update</button></a></td>
			</tr>

			<%} %>
			
			<%if(addFlight.getFlightName().equalsIgnoreCase("AirIndia")){ %>
			<tr>
				<td><img alt ="AirIndia" src="image/wp9361759.jpg" width="100" height="80"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getFlightDepartureTime()%></td>
				<td><%=addFlight.getFlightArrivalTime()%></td>
				<td><%=addFlight.getFlightEconomyPrice()%></td>
				<td><%=addFlight.getFlightBusinessPrice()%></td>
				<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"><button>DELETE</button></a></td>
				<td><a href="admin-edit-flight.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"><button>Update</button></a></td>
			</tr>

			<%} %>
			<%} %>
		</table>
	</div>
</body>
</html>