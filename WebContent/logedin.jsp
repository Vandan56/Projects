<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="TemplateMo">
<title>Dashboard</title>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/owl.css">
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
					<li class="nav-item active"><a class="nav-link"
						href="logedin.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="login">Logout</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="profile">Profile</a>
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

	<CENTER>
		<div class="section-heading" style="margin-top: 80px">

			<h2 style="font-size: 100px">
				Welcome to<BR> 
				<em>ABC JOBS PVT. LTE.</em>
			</h2>
		</div>
	</CENTER>

	<div class="services">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading">
						<h2>
							Services <em>We Provide</em>
						</h2>
						<span>Aliquam id urna imperdiet libero mollis hendrerit</span>
					</div>
				</div>
				<div class="col-md-4">
					<div class="service-item">
						<img src="assets/images/service_01.jpg" alt="">
						<div class="down-content">
							<h4>Digital Currency</h4>
							<p>Sed tincidunt dictum lobortis. Aenean tempus diam vel
								augue luctus dignissim. Nunc ornare leo tortor.</p>
							<a href="" class="filled-button">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="service-item">
						<img src="assets/images/service_02.jpg" alt="">
						<div class="down-content">
							<h4>Market Analysis</h4>
							<p>Sed tincidunt dictum lobortis. Aenean tempus diam vel
								augue luctus dignissim. Nunc ornare leo tortor.</p>
							<a href="" class="filled-button">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="service-item">
						<img src="assets/images/service_03.jpg" alt="">
						<div class="down-content">
							<h4>Historical Data</h4>
							<p>Sed tincidunt dictum lobortis. Aenean tempus diam vel
								augue luctus dignissim. Nunc ornare leo tortor.</p>
							<a href="" class="filled-button">Read More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="fun-facts">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="left-content">
						<span>Lorem ipsum dolor sit amet</span>
						<h2>
							Our solutions for your <em>business growth</em>
						</h2>
						<p>
							Pellentesque ultrices at turpis in vestibulum. Aenean pretium
							elit nec congue elementum. Nulla luctus laoreet porta. Maecenas
							at nisi tempus, porta metus vitae, faucibus augue. <br> <br>Fusce
							et venenatis ex. Quisque varius, velit quis dictum sagittis, odio
							velit molestie nunc, ut posuere ante tortor ut neque.
						</p>
						<a href="" class="filled-button">Read More</a>
					</div>
				</div>
				<div class="col-md-6 align-self-center">
					<div class="row">
						<div class="col-md-6">
							<div class="count-area-content">
								<div class="count-digit">945</div>
								<div class="count-title">Work Hours</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="count-area-content">
								<div class="count-digit">1280</div>
								<div class="count-title">Great Reviews</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="count-area-content">
								<div class="count-digit">578</div>
								<div class="count-title">Projects Done</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="count-area-content">
								<div class="count-digit">26</div>
								<div class="count-title">Awards Won</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="more-info">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="more-info-content">
						<div class="row">
							<div class="col-md-6">
								<div class="left-image">
									<img src="assets/images/more-info.jpg" alt="">
								</div>
							</div>
							<div class="col-md-6 align-self-center">
								<div class="right-content">
									<span>Who we are</span>
									<h2>
										Get to know about <em>our company</em>
									</h2>
									<p>
										Curabitur pulvinar sem a leo tempus facilisis. Sed non
										sagittis neque. Nulla conse quat tellus nibh, id molestie
										felis sagittis ut. Nam ullamcorper tempus ipsum in cursus<br>
										<br>Praes end at dictum metus. Morbi id hendrerit lectus,
										nec dapibus ex. Etiam ipsum quam, luctus eu egestas eget,
										tincidunt
									</p>
									<a href="#" class="filled-button">Read More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="testimonials">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading">
						<h2>
							What they say <em>about us</em>
						</h2>
						<span>testimonials from our greatest clients</span> <span>hold
							and slide to see more</span>
					</div>
				</div>
				<div class="col-md-12">
					<div class="owl-testimonials owl-carousel">

						<div class="testimonial-item">
							<div class="inner-content">
								<h4>George Walker</h4>
								<span>Chief Financial Analyst</span>
								<p>"Nulla ullamcorper, ipsum vel condimentum congue, mi odio
									vehicula tellus, sit amet malesuada justo sem sit amet quam.
									Pellentesque in sagittis lacus."</p>
							</div>
							<img src="http://placehold.it/60x60" alt="">
						</div>

						<div class="testimonial-item">
							<div class="inner-content">
								<h4>John Smith</h4>
								<span>Market Specialist</span>
								<p>"In eget leo ante. Sed nibh leo, laoreet accumsan euismod
									quis, scelerisque a nunc. Mauris accumsan, arcu id ornare
									malesuada, est nulla luctus nisi."</p>
							</div>
							<img src="http://placehold.it/60x60" alt="">
						</div>

						<div class="testimonial-item">
							<div class="inner-content">
								<h4>David Wood</h4>
								<span>Chief Accountant</span>
								<p>"Ut ultricies maximus turpis, in sollicitudin ligula
									posuere vel. Donec finibus maximus neque, vitae egestas quam
									imperdiet nec. Proin nec mauris eu tortor consectetur
									tristique."</p>
							</div>
							<img src="http://placehold.it/60x60" alt="">
						</div>

						<div class="testimonial-item">
							<div class="inner-content">
								<h4>Andrew Boom</h4>
								<span>Marketing Head</span>
								<p>"Curabitur sollicitudin, tortor at suscipit volutpat,
									nisi arcu aliquet dui, vitae semper sem turpis quis libero.
									Quisque vulputate lacinia nisl ac lobortis."</p>
							</div>
							<img src="http://placehold.it/60x60" alt="">
						</div>

					</div>
				</div>
			</div>
		</div>
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

	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Additional Scripts -->
	<script src="assets/js/custom.js"></script>
	<script src="assets/js/owl.js"></script>
	<script src="assets/js/slick.js"></script>
	<script src="assets/js/accordions.js"></script>

	<script language="text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>


</body>
</html>