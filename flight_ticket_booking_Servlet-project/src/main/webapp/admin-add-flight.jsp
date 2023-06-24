<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin-add-flight</title>
<style type="text/css">

*{
box-sizing: border-box;
margin: 0px;
padding: 0px;
}


.flight{
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

form{
 border: 2px solid red;
 padding: 15px;
 width:600px;
}
input[name]{
	float: right;
}
select{
	float: right;
}
input[type='submit']{
margin-left: 170px;
padding: 5px 5px ;
}
</style>
</head>
<body>
<jsp:include page="admin-navbar.jsp"></jsp:include>

	<div class="flight">
	<form action="admin-add-flight" method="post"> 
	<label id="">Flight Number</label>
	<input type="number" placeholder="Enter flight Number" name="flightNumber" class="common"><br><br>
	
	<label id="">Flight Name</label>
	<input type="text" placeholder="Enter flight Name" name="flightName" class="common"><br><br>
	
	<label id="source">Source</label>
	<input type="text" placeholder="Enter your Source" name="source" class="common"><br><br>
	
	<label id="destination">Destination</label>
	<input type="text" placeholder="Enter your destination" name="destination" class="common"><br><br>
	
	<label id="departure-time">Departure-time</label>
	<input type="time" placeholder="Enter departure time" name="departure-time" class="common"><br><br>
	
	<label id="arrival-time">arrival-time</label>
	<input type="time" placeholder="Enter arrival time" name="arrival-time" class="common"><br><br>
	
	<label id="price">Flight-Economy-ticket-price</label>
	<input type="number" placeholder="Enter flight economy ticket price " name="ticketEconomyPrice" class="common"><br><br>
	
	
	<label id="price">Flight-business-ticket-price</label>
	<input type="number" placeholder="Enter flight business ticket price " name="ticketBusinessPrice" class="common"><br><br>
	
	<!-- <label id="flight-type">Flight-type </label> -->

	
	<!-- <select name="ticketType" class="common">
		<option>Select your class</option>
		<option value="economy" class=" common">Economy</option>
		<option value="Business" class="common">Business</option>
	
	</select><br><br> -->
	
	<input type="submit">
	
	</form>
	</div>
	
</body>
</html>