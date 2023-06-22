<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
*{
box-sizing: border-box;
margin: 0px;
padding: 0px;
}
	.myLogin{
	border: 2px solid green;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 150px;
	width: 350px;
}
.box{
height: 25px;
width: 180px;

}
.login{
display: flex;justify-content: center;align-items: center;
}
</style>
</head>

<body>

	<div class="myLogin">
	
		<form action="loginAdmin" method= "post">
	
		<label id="myEmail" >Email: -</label>
		<input type = "email" placeholder="Enter your Email" name="adminEmail" class="box"><br><br>
		
		<label id="myPassword" >Password: - </label>
		<input type = "password" placeholder="Enter your Password" name="adminPassword" class="box"><br><br>
		
		<input type ="submit" value ="Login" class="login">
	</form>
	</div>
</body>
</html>