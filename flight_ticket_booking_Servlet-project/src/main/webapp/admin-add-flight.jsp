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
 padding: 20px;
 width:400px;
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
	<form action="admin-add-flight">
	<label id="">Flight Number</label>
	<input type="number" name="flight-number" class="common"><br><br>
	
	<label id="source">Source</label>
	<input type="text" name="source" class="common"><br><br>
	
	<label id="destination">Destination</label>
	<input type="text" name="destination" class="common"><br><br>
	
	<label id="departure-time">Departure-time</label>
	<input type="time" name="departure-time" class="common"><br><br>
	
	<label id="arrival-time">arrival-time</label>
	<input type="time" name="arrival-time" class="common"><br><br>
	
	<label id="journey-date">journey-date</label>
	<input type="date" name="journey-date" class="common"><br><br>
	
	<label id="price">price</label>
	<input type="number" name="price" class="common"><br><br>
	
	<label id="flight-type">Flight-type </label>

	
	<select class="ticketType" class="common">
		<option>Select your class</option>
		<option value="economy" class=" common">Economy</option>
		<option value="Business" class="common">Business</option>
	
	</select><br><br>
	
	<input type="submit">
	
	</form>
	</div>
	
</body>
</html>