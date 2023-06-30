<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Insert</title>
<style type="text/css">

   @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');
*{
    margin: 0;
    padding: 0;
    font-family: 'poppins',sans-serif;
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
    min-height: 91vh;
    width: 100%;
    
    background: url("https://c1.wallpaperflare.com/preview/549/709/134/aircraft-airplane-clouds-dawn.jpg")no-repeat;
    background-position: center;
    background-size: cover;
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
    /* align-items: center; */
    margin-left: -10em;

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

<header>
        <div class="air-logo"></div>
        <nav class="navbar">
            <ul>
                <li><a href="Home.jsp">Admin Home</a></li>
                <li><a href="admin-delete.jsp">Delete Admin</a></li>
                <li><a href="">Service</a></li>
                <li><a href="">Contact with us</a></li>

            </ul>
        </nav>
        
    </header>
    <section>
        <div class="form-box">
            <div class="form-value">
                <form action="adminInsert" method="post">
                    <h2>Admin Insert</h2>
                    <div class="inputbox">
                        <ion-icon name="person-outline"></ion-icon>
                        <input type="number" name="adminId" required>
                        <label for="">adminId</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="mail-outline"></ion-icon>
                        <input type="email" name="adminEmail" required>
                        <label for="">adminEmail</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" name="adminPassword" required>
                        <label for="">adminPassword</label>
                    </div>   
                    
                    <input type="submit" >
                    
                </form>
            </div>
        </div>
    </section>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>













	<!-- <form action="adminInsert" method="post">
			<label id="myId">Admin Id</label>
			<input type="number"placeholder="Enter AdminId" name="adminId"><br><br>
            <label id="myEmail">Admin Email</label>
            <input type="email" placeholder="Enter AdminEmail" name="adminEmail"><br><br>
            <label id="myPassword">Admin Password</label>
            <input type="password" placeholder="Enter AdminPassword" name="adminPassword"><br><br>
       		
            <input type="submit" value="Login">
        </form> -->
</body>
</html>