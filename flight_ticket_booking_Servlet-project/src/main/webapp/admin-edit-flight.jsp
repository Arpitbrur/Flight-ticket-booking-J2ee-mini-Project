<%@page import="flight_ticket_booking_servlet_project.dto.AdminAddFlight"%>
<%@page import="flight_ticket_booking_servlet_project.dao.AdminAddFlightDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

* {
            box-sizing: border-box;
            margin: 0px;
            padding: 0px;
        }

       header {
            background-color: #001b94; 
            display: flex;
            align-items: center;
            justify-content: space-around;
        }
        
        .navbar {
            /* background-color: aqua; */
            color:  aliceblue;
            display: flex;
            justify-content: space-around;
            align-items: center;
            position: sticky;
            margin-top: 0px;
            position: sticky;
        }

        .navbar ul {
            display: flex;
            list-style: none;
        }


        .navbar ul li {
            padding: 15px;
        }

        .navbar ul li a {
            font-size: 22px;
            text-decoration: none;
            color:  aliceblue;
            padding: 10px;
        }

        .navbar ul li a:hover {
            color: white;
            background-color: #e878ea;
            padding: 10px;
            border-radius: 10px;
            transition: all;
            transition-property: all;
            transition-duration: 0.8s;           
        }
        
        .main-page{
            /* background-color: red; */
            height: 92vh;
            background-image: url("image/admin-edit-flight.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .flight {
            /* background-color: aqua; */
            height: 80vh;
            width: 110vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-left: 45rem;
            /* border: solid 2px red; */
        }
        form{
            /* background-color: red; */
            margin: 6rem;
            width: 120vh;
            
        }
        form label{
            /* background-color: aqua; */
            font-size: 20px;
            font-family: cursive;
            color: white;
        }
        form input{
            font-size: 22px;
			size: 60px;
			background-color: white;
			padding: 3px;
			margin-left: 10px;
            float: right;
            text-align: center;
            padding: 2px 20px;
			border: 1px solid #2fa8df;
			border-radius: 5px;
			width: 280px;
        }
        form input:last-of-type{
			width:200px;
			margin-right:250px;
			border-radius: 20px; 
			padding: 3px;
		}

		form input:last-of-type:hover{
			background-color: cornsilk;
			color: aliceblue;
			background-color: #001b94;
		}




</style>
</head>
<body>

<%
	int flightNumber = Integer.parseInt(request.getParameter("flightNumber"));
	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
	AdminAddFlight addFlight = addFlightDao.getFlightByNumber(flightNumber);
%>
<header>
        <nav class="navbar">
            <ul>
                <li><a href="home.jsp">Admin-Home</a></li>
                <li><a href="admin-flight-detail.jsp">flight-Detail</a></li>
                <li><a href="adminLogout">Logout</a></li>

            </ul>
        </nav>
    </header>

	<section class="main-page">
    <div class="flight">
        <form action="admin-edit-flight" method="post">
            <label id="">Flight Number :- </label>
            <input type="number" placeholder="Enter flight Number" value="<%=addFlight.getFlightNumber() %>" name="flightNumber"><br><br>

            <label id="">Flight Name :- </label>
            <input type="text" placeholder="Enter flight Name" value="<%=addFlight.getFlightName() %>" name="flightName" ><br><br>

            <label id="source">Source :- </label>
            <input type="text" placeholder="Enter your Source" value="<%=addFlight.getFlightSource() %>" name="source"><br><br>

            <label id="destination">Destination :- </label>
            <input type="text" placeholder="Enter your destination" value="<%=addFlight.getFlightDestination() %>" name="destination" ><br><br>

            <label id="departure-time">Departure-time :- </label>
            <input type="time" placeholder="Enter departure time" value="<%=addFlight.getFlightDepartureTime() %>" name="departure-time"><br><br>

            <label id="arrival-time">arrival-time :- </label>
            <input type="time" placeholder="Enter arrival time" value="<%=addFlight.getFlightArrivalTime() %>" name="arrival-time"><br><br>

            <label id="price">Flight-Economy-price :- </label>
            <input type="number" placeholder="Enter economy price " value="<%=addFlight.getFlightEconomyPrice() %>" name="ticketEconomyPrice"><br><br>


            <label id="price">Flight-business-price :- </label>
            <input type="number" placeholder="Enter business price " value="<%=addFlight.getFlightBusinessPrice() %>" name="ticketBusinessPrice"><br><br>


            <input type="submit" value="Update Flight">
        </form>
    </div>
</section>
	
	
</body>
</html>