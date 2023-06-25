<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin-login</title>

<style>
/* *{
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
} */

* {
			box-sizing: border-box;
			margin: 0px;
			padding: 0px;

		}

		body {
			background: linear-gradient(#a8e6cf, #fdffab, #ffd3b6, #ffaaa5);
			height: 100vh;
			display: flex;
			flex-direction: column;
			/* justify-content: center; */
			align-items: center;

		}

		.myLogin {
			background-color: aliceblue;
			box-shadow: whitesmoke 0 0 30px;
			border: 2px solid green;
			border-radius: 20px;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 230px;
			width: 480px;
			margin-top: 120px;
		}

		.myLogin label {
			font-size: 30px;
			color: brown;
		}
		.myLogin input{
			font-size: 22px;
			size: 60px;
			background-color: #a8e6cf;
			padding: 3px;
			margin-left: 10px;
		}
		form input:last-child{
			/*background-color: red; */
			margin-left: 180px;
			border-radius: 10px;
			padding: 4px;
		}

		form input:last-child:hover{
			background-color: cornsilk;
			font-size: 23px;
		}
		h1{
			font-family: cursive;
			font-size: 40px;
			font-weight: bold;
			font-style: italic;
			/* background-color: #fdffab; */
		}
</style>
</head>

<body>

	<!-- <div class="myLogin">
	
		<form action="loginAdmin" method= "post">
	
		<label id="myEmail" >Email: -</label>
		<input type = "email" placeholder="Enter your Email" name="adminEmail" class="box"><br><br>
		
		<label id="myPassword" >Password: - </label>
		<input type = "password" placeholder="Enter your Password" name="adminPassword" class="box"><br><br>
		
		<input type ="submit" value ="Login" class="login">
	</form>
	</div> -->
	
	
	<h1>Admin Login here</h1>

	<section class="section">
		<div class="myLogin">

			<form action="loginAdmin" method="post">

				<label id="myEmail">Email: -</label>
				<input type="email" placeholder="Enter your Email" name="adminEmail" class="box"><br><br>

				<label id="myPassword">Password: - </label>
				<input type="password" placeholder="Enter your Password" name="adminPassword" class="box"><br><br>

				<input type="submit" value="Login" class="login">
			</form>
		</div>
	</section>
</body>
</html>