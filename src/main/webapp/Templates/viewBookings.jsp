<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RRS | My Bookings</title>
<%@include file="Component/head.jsp"%>
<style type="text/css">
body	{
		            background: rgb(0,0,0);
					background: linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(0,0,0,1) 0%, rgba(255,255,255,1) 0%, rgba(196,222,252,1) 100%);
		        }
		        </style>
</head>
<body>
	<%@include file="Component/navbar.jsp"%>
	<div class="container">
        <div class="row-md-6  mt-2 mb-3">
            <div class="card text-center">
                <div class="card-body ">
                    <form>
                        <h2 class="mb-3">User Details</h2>
                        <div class="row">
                            <div class="mb-2 col-6">
                                <label for="email" class="form-group">User Id</label> &nbsp;
                                <input type="text" class="form-group" id="email" value=" ${user.userId}" disabled>
                            </div>
                            <div class="mb-3 col-6">
                                <label for="email" class="form-group">User Name</label> &nbsp;
                                <input type="text" class="form-group" id="email" value=" ${user.username}" disabled>
                            </div>
                        </div>
                        <div class="row">
                            <div class="mb-3 col-6">
                                <label for="email" class="form-group">User Email</label> &nbsp;
                                <input type="text" class="form-group" id="email" value=" ${user.userEmail}" disabled>
                            </div>
                            <div class="mb-3 col-6">
                                <label for="email" class="form-group">Mobile No</label> &nbsp;
                                <input type="text" class="form-group" id="email" value=" ${user.mobileNo}" disabled>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
        <h2 class="text-center mb-3">My Bookings</h2>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Booking Id</th>
                    <th scope="col">Date</th>
                    <th scope="col">Train Id</th>
                    <th scope="col">Train Name</th>
                    <th scope="col">From</th>
                    <th scope="col">To</th>
                    <th scope="col">Book Seats</th>
                    <th scope="col">Total Amount</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${userBookings}" var="booking">
						 	<tr>
								<td>${booking.ticketId}</td>
								<td>${booking.date}</td>
								<td>${booking.ticketTrain.trainId}</td>
								<td>${booking.ticketTrain.trainName}</td>
								<td>${booking.ticketTrain.departureFrom}</td>
								<td>${booking.ticketTrain.departureTo}</td>
								<td>${booking.seats}</td>
								<td>${booking.totalAmount}</td>
							</tr>
			</c:forEach>
            </tbody>
        </table>
      	<div class="text-center mt-5">
      		<a class="btn btn-primary" href="${user.role == 'ADMIN' ? '/adminDashboard' : '/userDashboard'}">Back</a>
      		
      	</div>
    </div>
</body>
</html>