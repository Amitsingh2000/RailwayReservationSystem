<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RRS | Search Trains</title>
 <style>
        body {
            background-image: url("https://static.theprint.in/wp-content/uploads/2020/06/WDG4D.jpg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100%;
        }
    </style>
    <%@include file="Component/head.jsp"%>
</head>
<body>
<%@include file="Component/navbar.jsp"%>
<div class="container">
  <div class="row mt-3">
            <div class="col" style="margin-left:5%">
	             <!-- Check if the trainList is empty -->
	            <c:if test="${empty trainList}">
	                <div class="card mb-3" style="height: 10rem; width: 70rem;">
	                    <div class="card-header">Train Not Available</div>
	                    <div class="card-body">
	                        <p class="h5">Sorry, there are no trains available at the moment.</p>
	                    	<a class="btn btn-primary m-2" href="bookNow">Go Back To Search</a>
	                    </div>
	                </div>
	            </c:if>
		        <c:forEach items="${trainList}" var="train">
	                <div class="card mb-3" style="height: 10rem;  width: 70rem;">
		                <div class="card-header">Train No - ${train.trainId} <span class="offset-9">Date - ${train.departureDate}</span></div>
		                <div class="card-body">
		                    <label class="h4 mb-3">Train Name :  ${train.trainName}</label> <span class="offset-4 h5">Fare Price : ${train.trainFare} </span><br>
		                    <label class="h5">From :  ${train.departureFrom}</label> <span class="offset-2 h5">To : ${train.departureTo}</span>
		                    <span class="offset-2 h5">Available Seats :  ${train.trainSeats}</span>
		                    <a class="offset-2 btn btn-outline-primary" href="ticketBooking?trainId=${train.trainId}">Book Now</a>
		                </div>
	            	</div>
	           </c:forEach>
            </div>
        </div>
    </div>

</body>
</html>