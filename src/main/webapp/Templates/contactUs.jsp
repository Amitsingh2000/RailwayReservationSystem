<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RRS | Contact Us</title>
<%@include file="Component/head.jsp"%>

 <style>
        body {
            background: rgb(0, 0, 0);
            background: linear-gradient(90deg, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 1) 0%, rgba(255, 255, 255, 1) 0%, rgba(196, 222, 252, 1) 100%);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .row {
            text-align: center;
            align-content: center;
            margin-bottom: 15px;
        }
        img
        {
            max-width: 450px;
            mix-blend-mode: multiply;
        }
    </style>
</head>
<body>
<%@include file="Component/navbar.jsp"%>
	 <div class="container">
		<h1 class="h1-responsive font-weight-bold text-center my-4">Contact us</h1>
		<div class="row mt-5">
			<p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to you within a matter of hours to help you.</p>
		</div>
	</div>
   <div class="row offset-1">
    <div class="col">
        <img src="https://unblast.com/wp-content/uploads/2020/09/Contact-Us-Vector-Illustration-Part-02-1.jpg" alt="">
    </div>
    <div class="col offset-1 mt-4">
            <p class="h4 mb-5">To get in touch with me: </p>
            <div class="icons fs-5">
                <div class="row align-items-center mb-3">
                    <div class="col-auto">
                        <i class="bi bi-person"></i>
                    </div>
                    <div class="col">
                        <div class="d-flex">
                            <div class="me-2">Railway Reservation System</div>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center mb-3">
                    <div class="col-auto">
                        <i class="bi bi-geo-alt"></i>
                    </div>
                    <div class="col">
                        <div class="d-flex">
                            <div class="me-2">India</div>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center mb-3">
                    <div class="col-auto">
                        <i class="bi bi-envelope-at"></i>
                    </div>
                    <div class="col">
                        <div class="d-flex">
                            <div class="me-2"> railwayreservationsystem@gmail.com</div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
   </div>
   
</body>
</html>