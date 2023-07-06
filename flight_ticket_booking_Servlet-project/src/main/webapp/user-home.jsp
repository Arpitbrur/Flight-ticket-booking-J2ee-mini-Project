<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User-Home</title>

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
    min-height: 91vh;
    width: 100%;
    
    background: url("https://c4.wallpaperflare.com/wallpaper/146/180/932/flight-simulator-planes-cessna-citation-cj4-ultrawide-hd-wallpaper-preview.jpg")no-repeat;
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
    align-items: center; 
   

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

<!-- 	<nav>
        <ul>
            <li>Book Your Ticket</li>
            <a href=""><li>Home</li></a>
            <a href=""><li>MyTicket</li></a>
        </ul>
    </nav>
     -->
     
     <header>
        <div class="air-logo"></div>
        <nav class="navbar">
            <ul>
                <li><a href="Home.jsp">User- Home</a></li>
                <li><a href="">MyTicket</a></li>
                
            </ul>
        </nav>       
    </header>
     
     <section>
        <div class="form-box">
            <div class="form-value">
                <form action="" method="">
                    <h2>User-Home</h2>
                    <div class="inputbox">
                        <ion-icon name=""></ion-icon>
                        <input type="text" name="source" required>
                        <label for="">Source</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name=""></ion-icon>
                        <input type="text" name="destination" required>
                        <label for="">Destination</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name=""></ion-icon>
                        <input type="date" name="date" value="<%=LocalDate.now().plusDays(1)%>" required>
                        <label for="">Date</label>
                    </div>
                    
                    <input type="submit" value="Search"/>
                    
                </form>
            </div>
        </div>
    </section>
   
    
    
    <%-- <h2>User-Home</h2>
    <div class="container">
    <form action="">
    	<input type="text" name="source" placeholder="Source"><br><br>
    	<input type="text" name="destination" placeholder="Destination"><br><br>
    	<input type="date" name="date" value="<%=LocalDate.now().plusDays(1)%>"><br><br>
    	<input type=Button name="button" value="Search"><br><br>
    </form>
    </div> --%>

</body>
</html>