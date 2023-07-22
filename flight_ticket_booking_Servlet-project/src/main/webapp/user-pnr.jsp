<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PNR</title>
<style type="text/css">
	
        *{
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }
        .main{
            border: 2px solid green;
            height: 230px;
            width : 350px;
            position: relative;
            top: 100px;
            left: 100px;
        }
        form{
            padding: 10px 10px;
        }
        input[type="Submit"]{
            margin-top: 70px;
            margin-left: 120px;
            padding: 5px 10px;
            cursor: pointer;
        }
        .pnr{
            float: right;
            width: 200px;
            height: 25px;
        }
        label {
            font-size: 20px;
        }
        .captcha{
            margin-top: 60px;
            font-size: 22px;
            display: flex;
            gap: 15px;
        }
        .sum1{
            width: 80px;
        }
        input[type="number"]::-webkit-inner-spin-button{
            display: none;
        }
    </style>
    </head>
    <body>
     <%
    	int num1 = (int)request.getAttribute("num1");
    	int num2 = (int)request.getAttribute("num2");
    	String msg = (String)request.getAttribute("msg");
    %>
        <div class="main">
            <form action="userPnr" method="post">
                <label>PNR : </label>
                <input type="number" name="pnr" class="pnr"><br>
                <%if(msg!=null) {%>
                	<h3><%=msg%></h3>
                <%} %>
                <div class="captcha">
                    <input type="number" name="num1" class="sum1" value="<%=num1%>">
                    <div>+</div>
                    <input type="number" name="num2" class="sum1" value="<%=num2%>">
                    <div>=</div>
                    <input type="number" name="sum" class="sum1">
                </div>
                <input type="Submit" name="submit">
            </form>
        </div>
    </body>
    </html>