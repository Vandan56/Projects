<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Profile</title>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/templatemo-finance-business.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
.emp-profile {
	padding: 3%;
	margin-top: 3%;
	margin-bottom: 3%;
	border-radius: 0.5rem;
	background: #fff;
}

.profile-head h5 {
	color: #333;
}

.profile-head h6 {
	color: #0062cc;
}

.profile-edit-btn {
	border: none;
	border-radius: 1.5rem;
	width: 70%;
	padding: 2%;
	font-weight: 600;
	color: #6c757d;
	cursor: pointer;
}

.profile-head .nav-tabs {
	margin-bottom: 5%;
}

.profile-head .nav-tabs .nav-link {
	font-weight: 600;
	border: none;
}

.profile-head .nav-tabs .nav-link.active {
	border: none;
	border-bottom: 2px solid #0062cc;
}

.profile-tab label {
	font-weight: 600;
}

.profile-tab p {
	font-weight: 600;
	color: #0062cc;
}
</style>
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
					<li class="nav-item "><a class="nav-link"
						href="logedin.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="login">Logout</a>
					</li>
					<li class="nav-item active"><a class="nav-link" href="profile">Profile</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				</ul>
				<s:form class="form-inline my-2 my-lg-0" action="search"
					method="search" theme="simple">
					<s:textfield class="form-control mr-sm-2" name="Search" type="text"
						placeholder="Search" />
					<s:submit class="btn btn-secondary my-2 my-sm-0" value="Search" />
				</s:form>
			</div>
		</nav>
	</DIV>

	<div class="container emp-profile">
		<form method="post">
			<div class="row">

				<div class="col-md-6">
					<div class="profile-head">
						<h5 style="font-size: 40px">
							<s:iterator value="beanList">
								<s:property value="fname" />
								<s:property value="lname" />
							</s:iterator>
						</h5>
						<h6>Web Developer and Designer</h6>
						<br>
						<h2>About</h2>

					</div>
				</div>
				<div class="col-md-2">
				
						<a class="profile-edit-btn" href="updatedata">Edit Profile</a>
				</div>
			</div>
			<div class="row">

				<div class="col-md-8">
					<s:iterator value="beanList">
						<div class="tab-content profile-tab" id="myTabContent">
							<div class="row">
								<div class="col-md-6">
									<label>First Name</label>
								</div>
								<div class="col-md-6">
									<p>
										:<s:property value="fname" />
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Last Name</label>
								</div>
								<div class="col-md-6">
									<p>
										:<s:property value="lname" />
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>DOB </label>
								</div>
								<div class="col-md-6">
									<p>
										:<s:property value="date" />
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Email</label>
								</div>
								<div class="col-md-6">
									<p>
										:<s:property value="email" />
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Phone</label>
								</div>
								<div class="col-md-6">
									<p>
										:<s:property value="number" />
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Qualified from</label>
								</div>
								<div class="col-md-6">
									<p>
										:<s:property value="qua" />
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>City</label>
								</div>
								<div class="col-md-6">
									<p>
										:<s:property value="city" />
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Country</label>
								</div>
								<div class="col-md-6">
									<p>
										:<s:property value="country" />
									</p>
								</div>
							</div>


						</div>
					</s:iterator>
				</div>
			</div>
		</form>

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