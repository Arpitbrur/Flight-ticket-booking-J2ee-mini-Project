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
		String email = (String)request.getAttribute("userEmail");
		String password = (String)request.getAttribute("userPassword");
	%>
	<div class="myLogin">
        <form action="userLogin" method="post">
            <label id="myEmail">Email</label>
            <input type="email" name="userEmail"><br><br>
            <label id="myPassword">Password</label>
            <input type="password" name="userPassword"><br><br>
        <p>if not signUp please....<a href="user-registration.jsp">SignUp</a></p>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>