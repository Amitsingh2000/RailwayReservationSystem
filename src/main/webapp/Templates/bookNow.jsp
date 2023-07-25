<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RRS | Book Now</title>
<%@include file="Component/head.jsp"%>
<style>
       body {
            background: rgb(0, 0, 0);
            background: linear-gradient(90deg, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 1) 0%, rgba(255, 255, 255, 1) 0%, rgba(196, 222, 252, 1) 100%);
        }
    </style>
</head>
<body>
<%@include file="Component/navbar.jsp"%>
	<div class="container">
        <div class="col-6">
            <div class="card" style="height:23rem; margin-top: 7rem;">
                <div class="card-header text-center">
                    <h2 class="m-3">BOOK TICKET</h2>
                </div>
                <c:set var="msgString" value="${message}" />
					 <c:if test="${not empty msgString}">
					    <div class="alert alert-warning alert-dismissible fade show" role="alert">
						 ${message}
						  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					 </c:if>
                <div class="card-body">
                    <form action="trainSearch" method="post">
                        <div class="row m-2">
                            <div class="m-3 col-11 d-flex align-items-center">
                                <input type="text" class="form-control" placeholder="From" name="departureFrom">
                                <i class="p-2 bi-arrow-left-right m-2"></i>
                                <input type="text" class="form-control" placeholder="To" name="departureTo">
                            </div>
                            <div class="row m-2">
                                <div class="col-6" style="margin-left: 10rem;">
                                    <input id="startDate" class="form-control" type="date" name="departureDate" />&nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="form-group text-center mb-4">
                            <input type="submit" class=" btn btn-primary m-2" name="submit" >
                            <input type="reset" class=" btn btn-primary m-2" name="reset" >
                        </div>
                        <!-- <div class="form-group text-center m-4">
                            <a class=" col-4 btn btn-dark" style="margin-right: 4rem;" >PNR Enquiry</a>
                            <a type="button" class=" col-4 btn btn-danger" >Ticket Cancelletion</a>
                        </div> -->
                    </form>
                </div>

            </div>
        </div>
    </div>


</body>
</html>