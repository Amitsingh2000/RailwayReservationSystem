<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RRS | Update Train</title>
<%@include file="../Component/head.jsp"%>
 <style>
        body	{
		            background: rgb(0,0,0);
					background: linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(0,0,0,1) 0%, rgba(255,255,255,1) 0%, rgba(196,222,252,1) 100%);
		        }
        .form-group
        {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
	<%@include file="../Component/navbar.jsp"%>
	<div class="container">
        <div class="row m-4">
            <div class="col-6 offset-3 mt-3 ">
                <div class="container m-2">
                    <div class="card m-2" style="max-width: 35rem;">
                        <div class="card-header text-center">
                            <h2>Update Train</h2>
                        </div>
                        <div class="card-body ">
                            <form action="updateTrain" method="post">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="trainId" value="${train.trainId}" readonly>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="trainName" value="${train.trainName}">
                                </div>
                                <div class="form-group">
                                    <input type="Date" class="form-control" name="departureDate" value="${train.departureDate}">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="departureFrom" value="${train.departureFrom}">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="departureTo" value="${train.departureTo}">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="trainSeats" value="${train.trainSeats}">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="trainFare" value="${train.trainFare}">
                                </div>
                                <div class="form-group text-center">
                                    <input type="Submit" class="btn btn-primary" value="Update Train">
                                    <a class="btn btn-primary" href="adminDashboard">Back</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	
</body>
</html>