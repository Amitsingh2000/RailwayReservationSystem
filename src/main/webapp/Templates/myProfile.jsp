<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RRS | Profile</title>
<%@include file="Component/head.jsp"%>
<style>
        body	{
		            background: rgb(0,0,0);
					background: linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(0,0,0,1) 0%, rgba(255,255,255,1) 0%, rgba(196,222,252,1) 100%);
		        }
        .form-group
        {
            margin-bottom: 15px;
        }
        .row
        {
            text-align: center;
            align-content: center;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
	<%@include file="Component/navbar.jsp"%>
	<div class="container">
        <div class="row m-4">
            <div class="col-6 offset-3 mt-3 ">
                <div class="container m-2">
                    <div class="card" style="max-width: 55rem;">
                        <div class="card-header h2 text-center"> My Profile </div>
                        <div class="card-body m-3">
                            <form action="updateProfile" method="post">
	                            <div class="row">
	                                <div class="col"><label class="form-label h5" for="userId">User Id - </label></div>
	                                <div class="col-8"><input type="text" class="form-control" name="userId" id="userId" readonly value="${user.userId}"></div>
	                            </div>
	                            <div class="row">
	                                <div class="col"><label class="form-label h5" for="firstName">First Name - </label></div>
	                                <div class="col-8"><input type="text" class="form-control" name="firstName" id="firstName" value="${user.firstName}"></div>
	                            </div>
	                            <div class="row" style="align-items: center;">
	                                <div class="col"><label class="form-label h5" for="lastName">Last Name - </label></div>
	                                <div class="col-8"><input type="text" class="form-control" name="lastName" id="lastName" value="${user.lastName}"></div>
	                            </div>
	                            <div class="row" style="align-items: center;">
	                                <div class="col"><label class="form-label h5" for="username">Username - </label></div>
	                                <div class="col-8"><input type="text" class="form-control" name="username" id="username" value="${user.username}"></div>
	                            </div>
	                            <div class="row" style="align-items: center;">
	                                <div class="col"><label class="form-label h5" for="password">Password - </label></div>
	                                <div class="col-8"><input type="text" class="form-control" name="password" id="password" value="${user.password}"></div>
	                            </div>
	                            <div class="row" style="align-items: center;">
	                            	<input type="hidden" name="role" value="${user.role}">
	                                <div class="col"><label class="form-label h5" for="userEmail">Email Id - </label></div>
	                                <div class="col-8"><input type="text" class="form-control" name="userEmail" id="userEmail" value="${user.userEmail}"></div>
	                            </div>
	                            <div class="row" style="align-items: center;">
	                                <div class="col"><label class="form-label h5" for="mobileNo">Mobile No - </label></div>
	                                <div class="col-8"><input type="text" class="form-control" name="mobileNo" id="mobileNo" value="${user.mobileNo}"></div>
	                            </div>
	                            <div class="form-group" style="align-items: center;">
	                                <input type="submit" class="btn btn-primary" value="Update Profile">
	                                <a class="btn btn-primary" href="${user.role == 'ADMIN' ? '/adminDashboard' : '/userDashboard'}">Back</a>
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