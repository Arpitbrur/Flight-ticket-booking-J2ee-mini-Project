<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flight-ticket-booking</title>
<style>
/* img {
	height: 100vh;

}

.navigation {
	display: flex;
	align-items: center;
	justify-content: center;
	align-content: center;
}
 */
 
 * {
            box-sizing: border-box;
            margin: 0px;
            padding: 0px;
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


        .air-logo {
            background-image: url("https://o.remove.bg/downloads/10a96cc2-577e-4dec-a6aa-a21bf4046f83/logo-removebg-preview.png");
            background-repeat: no-repeat;
            background-size: cover;
            height: 13vh;
            width: 25vh;
            /* background-position: 0px; */
        }

        .main-page{
            /* background-color: red; */
            height: 87vh;
            background-image: url("https://img.freepik.com/premium-photo/airplane-taking-off-from-airport_37416-74.jpg?w=1380");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .main-page h1{
            /* background-color: red; */
            font-size: 2.8rem;
            width: 80vh;
            margin-left: 10rem;
            padding-top: 8rem;
            display: flex;
            flex-direction: column;
        

        }
        .main-page p{
            /* background-color: red; */
            font-size: 2.8rem;
            width: 80vh;
            margin-left: 15rem;
            /* padding-top: 8rem; */
            display: flex;
            flex-direction: column;
        }
        .main-page button{
            background-color: red;
            font-size: 1.5rem;
            width: 19vh;
            margin-left: 20rem;
            /*margin: 0.4rem; */
            padding-left: 1rem;
            display: flex;
            flex-direction: column;
            border-radius: 2vh;
        }

        .main-page button:hover{
            background-color: #91ca91;
            transition: all;
            transition-property: all;
            transition-duration: 1s;
            font-size: 1.6rem;
            width:20vh;
        }
</style>
</head>
<body>
	
<%-- <jsp:include page="home-navbar.jsp"></jsp:include>
		<section>
		<article>
			<div class="navigation">
				<img alt="flight"
					src="https://images.hindustantimes.com/img/2023/02/03/1600x900/Indigo-recorded_1675424472908_1675424473122_1675424473122.jpg">
				<div>Start your Journey with Himanshu Air wala</div>
			</div>
		</article>
	</section> --%>
	
	
	<header>
        <div class="air-logo"></div>
        <nav class="navbar">
            <ul>
                <li><a href="admin-insert.jsp">Admin-Insert</a></li>
                <li><a href="admin-delete.jsp">Admin-Delete</a></li>
                <li><a href="admin-login.jsp">Admin Login</a></li>
                <li><a href="user-login.jsp">user Login</a></li>
                
            </ul>
        </nav>       
    </header>
    <section>
        <div class="main-page">        
                <h1>Book your ticket for flight</h1>
                <p>Let's travel together</p>          
                <button>Book now</button>
                
        </div>     
    </section>
</body>
</html>