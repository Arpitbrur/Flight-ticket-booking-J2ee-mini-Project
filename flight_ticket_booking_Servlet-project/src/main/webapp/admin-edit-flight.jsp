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
            background-image: linear-gradient(#7878e4, #d4d474, #91ca91, rgb(197, 163, 99));
            /* background-color: #14bbb8b3, blue; */
            display: flex;
            align-items: center;
            justify-content: space-around;
        }

        .navbar {
            /* background-color: aqua; */
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
            color: black;
            padding: 10px;
        }

        .navbar ul li a:hover {
            color: white;
            background-color: #8118218e;
            padding: 10px;
            border-radius: 20px;
            transition: all;
            transition-property: all;
            transition-duration: 0.8s;

        }

        .air-logo {
            background-image: url("https://o.remove.bg/downloads/10a96cc2-577e-4dec-a6aa-a21bf4046f83/logo-removebg-preview.png");
            background-repeat: no-repeat;
            background-size: cover;
            height: 13vh;
            width: 25vh;
            /* background-position: 0px; */
        }

        .main-page{
            /* background-color: red; */
            height: 87vh;
            background-image: url("https://wallpaperaccess.com/full/6830772.jpg");
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
            color:white;
            font-size: 20px;
            font-family: cursive;
        }
        form input{
            font-size: 22px;
			size: 60px;
			background-color: #dae0bf;
			padding: 3px;
			margin-left: 10px;
            float: right;
        }
        form input:last-child{
			margin-right: 240px;
			border-radius: 10px; 
			padding: 3px;
		}

		form input:last-child:hover{
			background-color: cornsilk;
			font-size: 23px;
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
        <div class="air-logo"></div>
        <nav class="navbar">
            <ul>
                <li><a href="Home.jsp">Admin-Home</a></li>
                <li><a href="admin-flight-detail.jsp">flight-Detail</a></li>
                <li><a href="adminLogout">Logout</a></li>

            </ul>
        </nav>
    </header>

	<section class="main-page">
    <div class="flight">
        <form action="admin-edit-flight" method="post">
            <label id="">Flight Number :- </label>
            <input type="number" placeholder="Enter flight Number" value="<%=addFlight.getFlightNumber() %>" name="flightNumber" class="common"><br><br>

            <label id="">Flight Name :- </label>
            <input type="text" placeholder="Enter flight Name" value="<%=addFlight.getFlightName() %>" name="flightName" class="common"><br><br>

            <label id="source">Source :- </label>
            <input type="text" placeholder="Enter your Source" value="<%=addFlight.getFlightSource() %>" name="source" class="common"><br><br>

            <label id="destination">Destination :- </label>
            <input type="text" placeholder="Enter your destination" value="<%=addFlight.getFlightDestination() %>" name="destination" class="common"><br><br>

            <label id="departure-time">Departure-time :- </label>
            <input type="time" placeholder="Enter departure time" value="<%=addFlight.getFlightDepartureTime() %>" name="departure-time" class="common"><br><br>

            <label id="arrival-time">arrival-time :- </label>
            <input type="time" placeholder="Enter arrival time" value="<%=addFlight.getFlightArrivalTime() %>" name="arrival-time" class="common"><br><br>

            <label id="price">Flight-Economy-ticket-price :- </label>
            <input type="number" placeholder="Enter flight economy ticket price " value="<%=addFlight.getFlightEconomyPrice() %>" name="ticketEconomyPrice"
                class="common"><br><br>


            <label id="price">Flight-business-ticket-price :- </label>
            <input type="number" placeholder="Enter flight business ticket price " value="<%=addFlight.getFlightBusinessPrice() %>" name="ticketBusinessPrice"
                class="common"><br><br>

            <!-- <label id="flight-type">Flight-type </label> -->


            <!-- <select name="ticketType" class="common">
            <option>Select your class</option>
            <option value="economy" class=" common">Economy</option>
            <option value="Business" class="common">Business</option>
        
             </select><br><br> -->

            <input type="submit" value="Update Flight">
        </form>
    </div>
</section>
	
	
</body>
</html>