<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User- registration</title>
<style type="text/css">

   @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');
*{
    margin: 0;
    padding: 0;
    font-family: 'cursive',sans-serif;
}


        header {
            background-image: linear-gradient( #7878e4, #d4d474, #91ca91, rgb(197, 163, 99));
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


section{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 92vh;
    width: 100%;  
    background: url("https://wallpaperaccess.com/full/2789934.jpg")no-repeat;
    background-position: center;
    background-size: cover;
    z-index: 1;
}
.form-box{
    position: relative;
    width: 400px;
    height: 450px;
    background: transparent;
    border: 2px solid rgba(255,255,255,0.5);
    border-radius: 20px;
    backdrop-filter: blur(10px);
    display: flex;
    justify-content: center;
   /*  align-items: center; */ 
   margin-left: 90vh;
   z-index: 2;
   

}
h2{
    font-size: 2em;
    color: #fff;
    text-align: center;
}
.inputbox{
    position: relative;
    margin: 30px 0;
    width: 310px;
    border-bottom: 2px solid #fff;
}
.inputbox label{
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    color: #fff;
    font-size: 1em;
    pointer-events: none;
    transition: .5s;
}
input:focus ~ label,
input:valid ~ label{
top: -5px;
}
.inputbox input {
    width: 100%;
    height: 50px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    padding:0 35px 0 5px;
    color: #fff;
}
.inputbox ion-icon{
    position: absolute;
    right: 8px;
    color: #fff;
    font-size: 1.2em;
    top: 20px;
}
.forget{
    margin: -15px 0 15px ;
    font-size: .9em;
    color: #fff;
    display: flex;
    justify-content: space-between;  
}

.forget label input{
    margin-right: 3px;
    
}
.forget label a{
    color: #fff;
    text-decoration: none;
}
.forget label a:hover{
    text-decoration: underline;
}
input{
    width: 50%;
    height: 40px;
    border-radius: 40px;
    background: #fff;
    border: none;
    outline: none;
    cursor: pointer;
    font-size: 1em;
    font-weight: 600;
    margin-left: 70px;
}

</style>
</head>
<body>
	
	<!-- <nav>
        <ul>
            <li>Flight-Ticket-Booking</li>
            <a href=""><li>Admin Home</li></a>
            <a href="admin-flight-detail.jsp"><li>Flight Details</li></a>
            <a href="adminlogout"><li>Logout</li></a>
        </ul>
    </nav> -->
    
    
    <header>
        <div class="air-logo"></div>
        <nav class="navbar">
            <ul>
                <!--<li>Flight ticket booking</li>-->
                <li><a href="user-home.jsp">User- Home</a></li>
                <li><a href="admin-flight-detail.jsp">Flight details</a></li>
                <li><a href="adminlogout">Logout</a></li>
                
            </ul>
        </nav>       
    </header>
    
    
    <section>
        <div class="form-box">
            <div class="form-value">
                <form action="userRegister" method="post">
                    <h2>User registration</h2>
                    <div class="inputbox">
                        <ion-icon name="person-outline"></ion-icon>
                        <input type="text" name="userName" required>
                        <label for="">Name</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="mail-outline"></ion-icon>
                        <input type="email" name="userEmail" required>
                        <label for="">userEmail</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" name="userPassword" required>
                        <label for="">userPassword</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" name="confirmUserPassword" required>
                        <label for="">confirmUserPassword</label>
                    </div>   
                    
                    <input type="submit" >
                    
                </form>
            </div>
        </div>
    </section>
    
    
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    
    
	<!-- <div class="myLogin">
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
	</div> -->
</body>
</html>