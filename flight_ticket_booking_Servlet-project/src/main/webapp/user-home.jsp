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
section{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 92vh;
    width: 100%;  
    background: url("image/user-home.jpg");
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
    backdrop-filter: blur(5px);
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
    width: 250px;
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
    width: 80%;
    height: 65px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    padding:0 35px 0 5px;
    color: #fff;
}
/* .inputbox ion-icon{
    position: absolute;
    right: 8px;
    color: #fff;
    font-size: 1.2em;
    top: 20px;
} */
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
        <nav class="navbar">
            <ul>            
                
                <li><a href="user-registration.jsp">User Register</a></li>
                <li><a href="admin-flight-detail.jsp">Flight Details</a></li>               
            </ul>
        </nav>       
    </header>
     <section>
        <div class="form-box">
            <div class="form-value">
                <form action="searchUser" method="get">
                    <h2>User-Home</h2>
                    <div class="inputbox">                        
                        <input type="text" name="source" required>
                        <label for="">Source</label>
                    </div>
                    <div class="inputbox">
                       
                        <input type="text" name="destination" required>
                        <label for="">Destination</label>
                    </div>
                    <div class="inputbox">
                     
                        <input type="date" name="date" value="<%=LocalDate.now().plusDays(1)%>" required>
                        <label for="">Date</label>
                    </div>                  
                    <input type="submit" value="Search"/>
                    
                </form>
            </div>
        </div>
    </section>

</body>
</html>