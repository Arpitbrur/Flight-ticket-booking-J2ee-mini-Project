<%@page import="flight_ticket_booking_servlet_project.dto.AdminAddFlight"%>
<%@page import="flight_ticket_booking_servlet_project.dao.AdminAddFlightDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user Book Flight</title>
<style>
* {
            box-sizing: border-box;
            margin: 0px;
            padding: 0px;
            /* border: 2px solid blue; */
        }

 .main-page{
            /* background-color: red; */
            height: 100vh;
            background-image:url("image/admin-add-flight.jpg");
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
            /* border: 2px solid red; */
            margin: 6rem;
            width: 120vh;
            
        }
        form label{
            /* background-color: aqua; */
            font-size: 20px;
            font-family: cursive;
        }
        .common{
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
		.rad{
			float: right;
			font-size: 20px;
		}
        .gender{
        	margin-right: 35px;
        }
</style>
</head>

<body>

	<%
	HttpSession httpSession = request.getSession();
	String email = (String)httpSession.getAttribute("email");
	String flightNumber = request.getParameter("flightNumber");
	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
	
	AdminAddFlight addFlight = addFlightDao.getFlightByNumber(Integer.parseInt(flightNumber));
	%>
	
	<section class="main-page">
		<div class="flight">
		<form action="flightBooking" method="post">

			<input type="number" name="number" class="common" value="<%=addFlight.getFlightNumber()%>" hidden="true"><br>
			
			<input type="decimal" name="price" class="common" value="<%=addFlight.getFlightEconomyPrice()%>" hidden="true"><br>
			
			<!-- passenger details -->

			<label id="PassengerName">PassengerName :-</label> 
			<input type="text" placeholder="passenger name" class="common" name="name"><br><br>

			<label id="PassengerEmail">PassengerEmail :-</label>
			<input type="email" placeholder="passenger email" class="common" name="email"><br><br>

			<label id="PassengerPhone">PassengerPhone :-</label>
			<input type="number" placeholder="passenger phone" class="common" name="phone"><br><br>

			<label id="PassengerAge">PassengerAge :-</label>
			<input type="number" placeholder="passenger age" class="common" name="age"><br><br>
				
			<label id="PassengerAge" hidden="true">UserEmail</label> 
			<input type="email" name="userEmail" class="common" value="<%=email%>" hidden="true">

			<label id="PassengerGender">Gender</label>
            <div class="rad">
            	Male <input type="radio" name="gender" value="Male" class="gender">
            	Female <input type="radio" name="gender" value="Female" class="gender">
            	Other <input type="radio" name="gender" value="Other">
        	</div><br><br>

			<input type="submit" hidden="true" value="<%=addFlight.getFlightEconomyPrice()%>">
			
			<button type="submit">BookYourTicket</button>

		</form>
		</div>
	</section>
</body>
</html>