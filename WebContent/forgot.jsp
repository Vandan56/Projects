<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="assets/css/templatemo-finance-business.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<title>Forgot Password</title>
</head>
<body>

	<DIV>
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<a class="navbar-brand" href="#"><h1>ABC JOBS</h1></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor01" aria-controls="navbarColor01"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarColor01">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="index">Home</a>
					</li>
					<li class="nav-item active"><a class="nav-link" href="login">Login</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="register">Register</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				</ul>

			</div>
		</nav>
	</DIV>


	
	<div style="margin: 0px 500px 200px 500px">
		<h2 style="margin-top: 50px; text-align: center">Please enter your email below</h2>
		<br>
		<s:form action="Forgotpass" theme="simple">

			<div class="form-group">
				<label>Email address</label>
				<s:textfield class="form-control" name="email" />

			</div>

			<s:submit class="btn btn-primary" value="Submit" />
			
		</s:form>
	</div>

	<div>
		<!-- Footer -->
		<footer class="page-footer font-small blue pt-4">

			<!-- Footer Links -->
			<div class="container-fluid text-center text-md-left">

				<!-- Grid row -->
				<div class="row">

					<!-- Grid column -->
					<div class="col-md-6 mt-md-0 mt-3">

						<!-- Content -->
						<h5 class="text-uppercase">ABC JOBS Pvt. Lte.</h5>

					</div>
					<!-- Grid column -->

					<hr class="clearfix w-100 d-md-none pb-3">

					<!-- Grid column -->
					<div class="col-md-3 mb-md-0 mb-3">

						<!-- Links -->
						<h5 class="text-uppercase">SOCIAL MEDIA</h5>

						<ul class="list-unstyled">
							<li><a href="#!">Instagram</a></li>
							<li><a href="#!">Twiter</a></li>
							<li><a href="#!">Facebook</a></li>
							<li><a href="#!">Linkedin</a></li>
						</ul>

					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-3 mb-md-0 mb-3">

						<!-- Links -->
						<h5 class="text-uppercase">CONTACT US</h5>

						<ul class="list-unstyled">
							<li><a href="#!">EMAIL : jobs.abc.portal@gmail.com</a></li>
							<li><a href="#!">PHONE : 9123456789</a></li>
							<li><a href="#!">TELEPHONE : 022-28991111</a></li>
						</ul>

					</div>
					<!-- Grid column -->

				</div>
				<!-- Grid row -->

			</div>
			<!-- Footer Links -->


		</footer>
		<!-- Footer -->
	</div>
</body>
</html>