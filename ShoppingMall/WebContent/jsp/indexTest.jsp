<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>����� �����</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

<!--     Fonts and icons     -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

<!-- CSS Files -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/css/material-kit.css" rel="stylesheet"/>

<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="assets/css/demo.css" rel="stylesheet" />

<!--   Core JS Files   -->
<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/material.min.js"></script>

<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="assets/js/nouislider.min.js" type="text/javascript"></script>

<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="assets/js/bootstrap-datepicker.js" type="text/javascript"></script>

<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="assets/js/material-kit.js" type="text/javascript"></script>

<script type="text/javascript">

	$().ready(function(){
		// the body of this function is in assets/material-kit.js
		materialKit.initSliders();
           window_width = $(window).width();

           if (window_width >= 992){
               big_image = $('.wrapper > .header');

			$(window).on('scroll', materialKitDemo.checkScrollForParallax);
		}

	});
</script>
</head>
<body class="index-page">
	<!-- Navbar -->
	<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
		<div class="container">
	        <div class="navbar-header">
		    	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-index">
		        	<span class="sr-only">Toggle navigation</span>
		        	<span class="icon-bar"></span>
		        	<span class="icon-bar"></span>
		        	<span class="icon-bar"></span>
		    	</button>
		    	<a href="#">
		        	<div class="logo-container">
		                <div class="logo">
		                    <img src="assets/img/logo.png">
		                </div>
		                <div class="brand">
		                	�����
		                </div>
					</div>
		      	</a>
		    </div>
		    <div class="collapse navbar-collapse" id="navigation-index">
		    	<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="#">
							<i class="material-icons">dashboard</i> ��ǰ
						</a>
					</li>
					<li>
						<a href="#">
							<i class="material-icons">dashboard</i> ��ٱ���
						</a>
					</li>
					<li>
						<a href="#">
							<i class="material-icons">face</i> �α׾ƿ�
						</a>
					</li>
		    	</ul>
		    </div>
		</div>
	</nav>
	<!-- End Navbar -->
	
	<!-- Start Body -->
	<div class="wrapper">
		<div class="header header-filter" style="background-image: url('assets/img/bg2.jpeg');">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="brand">
							<h1>Buy the your bag</h1>
							<h3>����� ���� �Ƹ���� �ٹ̼���</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="main main-raised">
			<div class="section section-basic">
		    	<div class="container">
		            <div class="title">
		                <h2>�� �� ǰ</h2>
		            </div>
		            <div class="section" id="carousel">
						<div class="container">
							<div class="row">
								<div class="col-md-8 col-md-offset-2">
									<!-- Carousel Card -->
									<div class="card card-raised card-carousel">
										<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
											<div class="carousel slide" data-ride="carousel">
												<!-- Indicators -->
												<ol class="carousel-indicators">
													<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
													<li data-target="#carousel-example-generic" data-slide-to="1"></li>
													<li data-target="#carousel-example-generic" data-slide-to="2"></li>
												</ol>
												<!-- Wrapper for slides -->
												<div class="carousel-inner">
													<div class="item active">
														<img src="assets/img/bg2.jpeg" alt="Awesome Image">
														<div class="carousel-caption">
															<h4><i class="material-icons">location_on</i> Yellowstone National Park, United States</h4>
														</div>
													</div>
													<div class="item">
														<img src="assets/img/bg3.jpeg" alt="Awesome Image">
														<div class="carousel-caption">
															<h4><i class="material-icons">location_on</i> Somewhere Beyond, United States</h4>
														</div>
													</div>
													<div class="item">
														<img src="assets/img/bg4.jpeg" alt="Awesome Image">
														<div class="carousel-caption">
															<h4><i class="material-icons">location_on</i> Yellowstone National Park, United States</h4>
														</div>
													</div>
												</div>
												<!-- Controls -->
												<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
													<i class="material-icons">keyboard_arrow_left</i>
												</a>
												<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
													<i class="material-icons">keyboard_arrow_right</i>
												</a>
											</div>
										</div>
									</div>
									<!-- End Carousel Card -->
								</div>
							</div>
						</div>
					</div>
	
		            <div class="col-lg-12">
			            <jsp:include page="bagList.jsp"/>
		            </div>
		            
		        </div>
		    </div>
		</div>
		
		<!-- Start footer -->
	    <footer class="footer">
		    <div class="container">
		        <nav class="pull-left">
		            <ul>
						<li>
							<a href="#">
								Creative Tim
							</a>
						</li>
						<li>
							<a href="#">
							   About Us
							</a>
						</li>
						<li>
							<a href="#">
							   Blog
							</a>
						</li>
						<li>
							<a href="#">
								Licenses
							</a>
						</li>
		            </ul>
		        </nav>
		        <div class="copyright pull-right">
		            &copy; 2016, made with <i class="material-icons">favorite</i> by Creative Tim for a better web.
		        </div>
		    </div>
		</footer>
		<!-- End footer -->
	</div>
	<!-- End Body -->
</body>
</html>
