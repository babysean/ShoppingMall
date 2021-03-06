<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="/ShoppingMall/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="/ShoppingMall/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>방사방사 가방사</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />

<!--     Fonts and icons     -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

<!-- CSS Files -->
<link href="/ShoppingMall/assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="/ShoppingMall/assets/css/material-kit.css" rel="stylesheet" />
<link rel="stylesheet" href="/ShoppingMall/css/bootstrap.css">
<link rel="stylesheet" href="/ShoppingMall/css/main.css">

<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="/ShoppingMall/assets/css/demo.css" rel="stylesheet" />
</head>

<body class="index-page">
	<!-- Navbar -->
	<nav
		class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
	<jsp:include page="include/bar.jsp" /> </nav>
	<!-- End Navbar -->

	<!-- Start Body -->
	<div class="wrapper">
		<div class="header header-filter"
			style="background-image: url('/ShoppingMall/assets/img/bg2.jpeg');">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="brand">
							<h1>Buy the your bag</h1>
							<h3>당신의 등을 아름답게 꾸미세요</h3>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="main main-raised">
			<div class="section section-basic">
				<div class="container">

					<!-- mainDiv -->
					<div class="col-lg-12" id="mainDiv">
						<div class="title">
							<h2>상 품 리 스 트</h2>
						</div>
						<div class="row">
							<c:forEach var="i" items="${productList}">
								<div class="col-sm-6 col-md-3">
									<div class="thumbnail">
										<img src="/ShoppingMall${i.fileName1}"
											class="img-rounded img-responsive img-raised">
										<div class="caption">
											<h3>${i.productName}</h3>
											<p>${i.productPrice}원</p>
											<p>
												<button class="btn btn-default infoProduct" role="button"
													id="${i.productNo}">
													상세보기
												</button>
												<button class="btn btn-primary addCart" role="button"
													id="${i.productNo}">
													<img src="/ShoppingMall/img/heart.png" width="15"
														height="15" /> 장바구니추가
												</button>
											</p>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>

				</div>
			</div>
		</div>

		<!-- Start footer -->
		<footer class="footer">
		<div class="container">
			<nav class="pull-left">
			<ul>
				<li><a href="#"> Creative Tim </a></li>
				<li><a href="#"> About Us </a></li>
				<li><a href="#"> Blog </a></li>
				<li><a href="#"> Licenses </a></li>
			</ul>
			</nav>
			<div class="copyright pull-right">
				&copy; 2016, made with <i class="material-icons">favorite</i> by
				Creative Tim for a better web.
			</div>
		</div>
		</footer>
		<!-- End footer -->
	</div>
	<!-- End Body -->

</body>

<!--   Core JS Files   -->
<script src="/ShoppingMall/assets/js/jquery.min.js"
	type="text/javascript"></script>
<script src="/ShoppingMall/assets/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="/ShoppingMall/assets/js/material.min.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="/ShoppingMall/assets/js/nouislider.min.js"
	type="text/javascript"></script>

<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="/ShoppingMall/assets/js/bootstrap-datepicker.js"
	type="text/javascript"></script>

<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="/ShoppingMall/assets/js/material-kit.js"
	type="text/javascript"></script>

<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="/ShoppingMall/js/main.js"></script>
<script>
	$(function() {
		window.onload = function() {
			materialKit.initSliders();
			window_width = $(window).width();

			if (window_width >= 992) {
				big_image = $('.wrapper > .header');

				$(window).on('scroll', materialKitDemo.checkScrollForParallax);
			}
		}
		$("button.addCart").click(function() {
			var result = confirm('장바구니에 추가하시겠습니까?');
			if (result) {
				location.href = "productCart.do?cmd=productCart&productNo="+$(this).attr("id");
			}
		});
		$("button.infoProduct").click(function(){
			location.href = "productInfo.do?cmd=productInfo&productNo="+$(this).attr("id");
		});
	});
</script>
</html>
