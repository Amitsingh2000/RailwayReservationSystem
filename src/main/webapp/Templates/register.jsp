<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RRS | Register</title>
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
        <div class="col-6">
            <div class="card" style="width: 35rem; margin-top: 5rem;">
                <div class="card-header">
                    <h2>Register Form</h2>
                </div>
                <c:set var="msgString" value="${message}" />
					 <c:if test="${not empty msgString}">
					    <div class="alert alert-warning alert-dismissible fade show" role="alert">
						 ${message}
						  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					 </c:if>
                <div class="card-body">
                    <form action="addUser" method="post">
                        <div class="row p-2">
                            <div class="mb-3 col-6">
                                <input type="text" name="firstName" class="form-control" placeholder="First Name" autocomplete="off">
                            </div>
                            <div class="mb-3 col-6">
                                <input type="text" name="lastName" class="form-control" placeholder="Last Name" autocomplete="off">
                            </div>
                            <div class="mb-3 col-6">
                                <input type="text" class="form-control" name="username" placeholder="UserName" autocomplete="off">
                            </div>
                            <div class="mb-3 col-6">
                                <input type="password" class="form-control" name="password" placeholder="Password" autocomplete="off">
                            </div>
                            <div class="mb-3 col-6">
                                <input type="email" class="form-control" name="userEmail" placeholder="Email Id" autocomplete="off">
                            </div>
                            <div class="mb-3 col-6">
                                <input type="text" class="form-control" name="mobileNo" placeholder="Mobile No" autocomplete="off">
                            </div>
                            <div class="mb-3 col-12">
                                <textarea name="address" class="form-control" cols="50" rows="4" placeholder="Enter Your Address"></textarea>
                            	<input type="hidden" value="User" name="role">
                            </div>
                        </div>
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button type="reset" class="btn btn-danger">Reset</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    

</body>
</html>