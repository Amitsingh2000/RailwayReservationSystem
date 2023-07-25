<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RRS | Ticket Cancellation</title>
	<style>
        body	{
		            background: rgb(0,0,0);
					background: linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(0,0,0,1) 0%, rgba(255,255,255,1) 0%, rgba(196,222,252,1) 100%);
		        }
    </style>
<%@include file="Component/head.jsp"%>

</head>
<body>
<%@include file="Component/navbar.jsp"%>
	<div class="container mt-5">
        <div class="col-6 offset-3 mt-4 text-center">
            <div class="card">
                <div class="card-header h2">Ticket Cancellation</div>
                <c:set var="msgString" value="${message}" />
					<c:if test="${not empty msgString}">
					    <div class="alert alert-warning alert-dismissible fade show" role="alert">
						 ${message}
						  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					</c:if>
                <div class="card-body">
                    <form action="ticketCancellation" method="post">
                        <div class="form-group m-4">
                            <label for="ticketId" class="h3">Enter Ticket Id </label>
                        </div>
                        <div class="form-group col-8 offset-2">
                            <input type="text" class="form-control" id="ticketId" name="ticketId">
                            <input type="hidden" name="userId" value="${empty user.userId ? 0 : user.userId}">
                        </div>
                        <div class="form-group m-4">
                            <input type="submit" class="btn btn-outline-danger" value="Cancel Ticket">
                            <a class="btn btn-outline-primary" href="/home">Back</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>