<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ShoppingMall/css/bootstrap.min.css">
<link rel="stylesheet" href="/ShoppingMall/css/main.css">
<script src="/ShoppingMall/js/bootstrap.min.js"></script>
<script src="/ShoppingMall/js/main.js"></script>
<title>가방사</title>
</head>
<body>
	<jsp:include page="top.jsp" />
	<hr>
	<div class="layer">
		<div id="myCarousel" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="/ShoppingMall/img/img1.jpg">
				</div>

				<div class="item">
					<img src="/ShoppingMall/img/img2.jpg">
				</div>

				<div class="item">
					<img src="/ShoppingMall/img/img3.jpg">
				</div>

				<div class="item">
					<img src="/ShoppingMall/img/img4.jpg">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
</body>
</html>