<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<nav>
        <ul>
            <li>Flight-Ticket-Booking</li>
            <a href=""><li>Admin Home</li></a>
            <a href="admin"><li>Flight Details</li></a>
            <a href="adminlogout"><li>Logout</li></a>
        </ul>
    </nav>
	<div class="myLogin">
		<form action="userRegister" method="post">
		<label>Name</label>
		<input type="text" name="userName"><br><br>
		<label>Email</label>
		<input type="email" name="userEmail"><br><br>
		<label>Password</label>
		<input type="password" name="userPassword"><br><br>
		<label>Confirm-Password</label>
		<input type="password" name="confirmPassword"><br><br>
		<input type="Submit" value="register">
	</form>
	</div>
</body>
</html>