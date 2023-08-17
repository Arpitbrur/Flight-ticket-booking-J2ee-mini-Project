<%@page import="flight_ticket_booking_servlet_project.dto.AdminAddFlight"%>
<%@page import="flight_ticket_booking_servlet_project.dao.AdminAddFlightDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user Book Flight</title>
</head>
<body>

	<%
	HttpSession httpSession = request.getSession();
	String email = (String)httpSession.getAttribute("email");
	String flightNumber = request.getParameter("flightNumber");
	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
	
	AdminAddFlight addFlight = addFlightDao.getFlightByNumber(Integer.parseInt(flightNumber));
	%>
	<div>
		<form action="flightBooking" method="post">

			<input type="number" name="number" value="<%=addFlight.getFlightNumber()%>" hidden="true"><br>
			
			<input type="decimal" name="price" class="common" value="<%=addFlight.getFlightEconomyPrice()%>" hidden="true"><br>
			
			<!-- passenger details -->

			<label id="PassengerName">PassengerName</label><br> <input
				type="text" placeholder="enter passenger name" name="name"><br>

			<label id="PassengerEmail">PassengerEmail</label><br> <input
				type="email" placeholder="enter passenger email" name="email"><br>

			<label id="PassengerPhone">PassengerPhone</label><br> <input
				type="number" placeholder="enter passenger phone" name="phone"><br>

			<label id="PassengerAge">PassengerAge</label><br> <input
				type="number" placeholder="enter passenger age" name="age">
				
			<label id="PassengerAge" hidden="true">UserEmail</label> <input
				type="email" name="userEmail" value="<%=email%>" hidden="true"><br>

			<label id="PassengerGender">Gender</label><br> <input
				type="radio" name="gender" value="Male">Male&nbsp; <input
				type="radio" name="gender" value="Female">Female&nbsp; <input
				type="radio" name="gender" value="Other">Other<br>

			<button type="submit">BookYourTicket</button>
			<input type="submit" value="<%=addFlight.getFlightEconomyPrice()%>">
		</form>
	</div>
	
</body>
</html>