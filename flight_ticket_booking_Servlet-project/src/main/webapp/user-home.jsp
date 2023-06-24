<%@page import="java.time.LocalDate"%>
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
            <li>Book Your Ticket</li>
            <a href=""><li>Home</li></a>
            <a href=""><li>MyTicket</li></a>
        </ul>
    </nav>
    <h2>User-Home</h2>
    <div class="container">
    <form action="">
    	<input type="text" name="source" placeholder="Source"><br><br>
    	<input type="text" name="destination" placeholder="Destination"><br><br>
    	<input type="date" name="date" value="<%=LocalDate.now().plusDays(1)%>"><br><br>
    	<input type=Button name="button" value="Search"><br><br>
    </form>
    </div>

</body>
</html>