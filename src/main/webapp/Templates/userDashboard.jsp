<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RRS | UserDashboard</title>
<style>
        body	{
		            background: rgb(0,0,0);
					background: linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(0,0,0,1) 0%, rgba(255,255,255,1) 0%, rgba(196,222,252,1) 100%);
		        }
		.modal
		{
			width: 80rem;
		}
		.card a
		{
			color:black;
			text-transform:none;
			text-decoration: none;
		}
		.card a:hover
		{
			color:black;
			text-transform:none;
			text-decoration: none;
		}
	
    </style>
<%@include file="Component/head.jsp"%>

</head>
<body>
<%@include file="Component/navbar.jsp"%>

	<main class="pt-2">
        <div class="container">
        <c:set var="msgString" value="${message}" />
					 <c:if test="${not empty msgString}">
					    <div class="alert alert-warning alert-dismissible fade show" role="alert">
						 ${message}
						  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					 </c:if>
            <div class="row">
                <div class="col-md-12 h2 mb-3 text-center">
                    USER DASHBOARD
                </div>
            </div>
            <div class="row">
                <div class="col-4 offset-2 mb-3">
                    <div class="card mb-3" style="height: 15rem;  width: 350px;">
	                       <a href="/bookNow"> 
		                        <div class="card-header fs-3 text-center">Ticket</div>
		                        <div class="card-body">
		                            <div class="container text-center">
		                                <i class="bi bi-ticket-detailed fs-1"></i>
		                                <p class="mt-3">Book Now</p>
		                            </div>
		                        </div>
	                         </a>
	                    </div>
                </div>
                <div class="col-4 mb-3">
                    <div class="card mb-3" style="height: 15rem;  width: 350px;">
                        <a href="/viewBookings?userId=${user.userId}"> 
                        <div class="card-header fs-3 text-center">Bookings</div>
                        <div class="card-body">
                            <div class="container text-center">
                                <i class="bi bi-journal-text fs-1"></i>
                                <p class="mt-3">View My Bookings</p>
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-4 offset-2 mb-3">
                    <div class="card mb-3" style="height: 15rem;  width: 350px;">
                     <a href="/viewProfile"> 
                        <div class="card-header fs-3 text-center">Profile</div>
	                        <div class="card-body">
	                            <div class="container text-center">
	                                <i class="bi bi-person-circle fs-1"></i>
	                                <p class="mt-3">My Profile</p>
	                            </div>
	                        </div>
                    </a>
                    </div>
                </div>
                <div class="col-4 mb-3">
                    <div class="card  mb-3" style="height: 15rem;  width: 350px;">
                        <div class="card-header fs-3 text-center">Setting</div>
                        <div class="card-body">
                            <div class="container text-center">
                                <i class="bi bi-gear fs-1"></i>
                                <p class="mt-3">Go to Setting</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>