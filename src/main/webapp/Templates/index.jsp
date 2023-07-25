<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RRS | Home</title>
	<style>
    	 body	{
		            background: rgb(0,0,0);
					background: linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(0,0,0,1) 0%, rgba(255,255,255,1) 0%, rgba(196,222,252,1) 100%);
		        }
		 img	{
		            max-width: 600px;
		            max-height: 750px;
		            margin: 50px;
		            mix-blend-mode: darken;
				}
        .name
        {
            font-size: 60px;
        }
    	    
    </style>
<%@include file="Component/head.jsp"%>
</head>
<body>
	<%@include file="Component/navbar.jsp"%>
	<div class="container mt-5">
        <div class="row mt-4 align-items-center">
            <div class="col-6 text-center">
                <h2 class="name">Railway <br> Reservation <br> System</h2>
            </div>
            <div class="col-6">
                <img src="https://images.moneycontrol.com/static-mcnews/2021/08/Indian-Railways.jpg?impolicy=website&width=1600&height=900"
                    alt="">
            </div>
        </div>
    </div>
</body>
</html>