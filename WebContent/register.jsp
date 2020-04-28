<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registeration Form</title>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/templatemo-finance-business.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
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
					<li class="nav-item"><a class="nav-link" href="login">Login</a>
					</li>
					<li class="nav-item active"><a class="nav-link"
						href="register">Register</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				</ul>

			</div>
		</nav>
	</DIV>


	<center>
		<h2 style="margin-top: 80px">Register Here</h2>
	</center>

	<div style="margin: 0px 350px 0px 350px">
		<s:form name="myForm" action="welcome" theme="simple"
			onsubmit="return validateForm()">


			<div class="form-group">
				<label>First Name</label>
				<s:textfield class="form-control" name="fname" />
			</div>

			<div class="form-group">
				<label>Last Name</label>
				<s:textfield class="form-control" name="lname" />
			</div>

			<div class="form-group">
				<label>Date of Birth</label>
				<s:textfield class="form-control" label="BirthDate" name="date"
					type="date" format="dd-MM-yyyy" />
			</div>

			<div class="form-group">
				<label>Phone Number</label>
				<s:textfield class="form-control" name="number" />
			</div>

			<div class="form-group">
				<label>Qualified From</label>
				<s:textfield class="form-control" name="qua" />
			</div>

			<div class="form-group">
				<label>City</label>
				<s:textfield class="form-control" name="city" />
			</div>

			<div class="form-group">
				<label>Country</label>
				<s:textfield class="form-control" name="country" />
			</div>


			<div class="form-group">
				<label>Email address</label>
				<s:textfield class="form-control" name="email" />
				<small class="form-text text-muted">We'll never share your
					email with anyone else.</small>
			</div>

			<div class="form-group">
				<label>Password</label>
				<s:password class="form-control" name="password" />
				<small class="form-text text-muted"> [7 to 15 characters
					which contain only characters, numeric digits, and first character
					must be a letter] 
			</div>


			<s:submit class="btn btn-primary" value="Resgister" />
			<s:reset class="btn btn-danger" value="Reset" />



		</s:form>
	</div>
	<br>
	<br>
	<br>


	<script>
		function validateForm() {
			var x = document.forms["myForm"]["fname"].value;
			if (x == "") {
				alert("First Name must be filled out");
				return false;
			}

			var x = document.forms["myForm"]["lname"].value;
			if (x == "") {
				alert("Last Name must be filled out");
				return false;
			}

			var x = document.forms["myForm"]["date"].value;
			if (x == "") {
				alert("DOB must be filled out");
				return false;
			}

			var x = document.forms["myForm"]["number"].value;
			if (x == "") {
				alert("DOB must be filled out");
				return false;
			}

			var x = document.forms["myForm"]["qua"].value;
			if (x == "") {
				alert("DOB must be filled out");
				return false;
			}

			var x = document.forms["myForm"]["city"].value;
			if (x == "") {
				alert("DOB must be filled out");
				return false;
			}

			var x = document.forms["myForm"]["country"].value;
			if (x == "") {
				alert("DOB must be filled out");
				return false;
			}

			if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
					.test(myForm.email.value)) {
				return (true)
			}
			alert("You have entered an invalid email address!")
			return (false)

			var passw = /^[A-Za-z]\w{8,16}$/;
			if (password.value.match(passw)) {
				alert('Correct, try another...')
				return true;
			} else {
				alert('Wrong...!')
				return false;
			}
		}
	</script>

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