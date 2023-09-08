<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flight-ticket-booking</title>
<style>
 
 * {
            box-sizing: border-box;
            margin: 0px;
            padding: 0px;
        }

        header {
            background-color: #001b94; 
            display: flex;
            align-items: center;
            justify-content: space-around;
        }
        
        .navbar {
            /* background-color: aqua; */
            color:  aliceblue;
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
            color:  aliceblue;
            padding: 10px;
        }

        .navbar ul li a:hover {
            color: white;
            background-color: #e878ea;
            padding: 10px;
            border-radius: 10px;
            transition: all;
            transition-property: all;
            transition-duration: 0.8s;           
        }

        .main-page{
            /* background-color: red; */
            height: 92vh;
           	background-image:url("image/main.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            display: flex;
            flex-direction: column;
        }
        .main-page h1{
            /* background-color: red; */
            color:  aliceblue;
            font-size: 2.8rem;
            width: 80vh;
            margin-left: 40rem;
            padding-top: 8rem;
            display: flex;
            flex-direction: column;
        }
        .main-page span{
            /* background-color: red; */
            font-size: 2.2rem;
            color:  aliceblue;
            width: 80vh;
            margin-left: 40rem;
            /* padding-top: 8rem; */
            display: flex;
            flex-direction: column;
        }
        .main-page button{
            background-color: #001b94;
            color:  aliceblue;
            font-size: 1.5rem;
            width: 25vh;
            height:6vh;
            margin-left: 46rem; 
            /* margin: 0.4rem; */ 
            padding: 0.4rem;
            display: flex;
            flex-direction: column;
            border-radius: 2vh; 
        }

        .main-page button:hover{
            background-color: #91ca91;
            transition: all;
            transition-property: all;
            transition-duration: 1s;
            font-size: 1.5rem;
            width: 25vh;
        }
</style>
</head>
<body>	
	<header>
        <nav class="navbar">
            <ul>            
                <li><a href="admin-login.jsp">Admin Login</a></li>
                <li><a href="user-login.jsp">User Login</a></li>
                <li><a href="pnrClass">PNR</a></li>               
            </ul>
        </nav>       
    </header>
    <section>
        <div class="main-page">        
                <h1>Start your journey with us.</h1>                
                <span>Book your ticket for flight, <br> Let's travel together </span>
             
                <button>Start Journey</button>                 
        </div>     
    </section>
</body>
</html>