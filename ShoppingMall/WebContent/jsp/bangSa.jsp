<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76" href="/ShoppingMall/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="/ShoppingMall/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>방사방사 가방사</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

<!--     Fonts and icons     -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

<!-- CSS Files -->
<link href="/ShoppingMall/assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="/ShoppingMall/assets/css/material-kit.css" rel="stylesheet"/>

<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="/ShoppingMall/assets/css/demo.css" rel="stylesheet" />

<!--   Core JS Files   -->
<script src="/ShoppingMall/assets/js/jquery.min.js" type="text/javascript"></script>
<script src="/ShoppingMall/assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/ShoppingMall/assets/js/material.min.js"></script>

<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="/ShoppingMall/assets/js/nouislider.min.js" type="text/javascript"></script>

<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="/ShoppingMall/assets/js/bootstrap-datepicker.js" type="text/javascript"></script>

<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="/ShoppingMall/assets/js/material-kit.js" type="text/javascript"></script>

<script>
function startFunc(){
	// the body of this function is in /ShoppingMall/assets/material-kit.js
	materialKit.initSliders();
    window_width = $(window).width();

    if (window_width >= 992){
        big_image = $('.wrapper > .header');

		$(window).on('scroll', materialKitDemo.checkScrollForParallax);
	}
}
	$(function(){
		
     	$("a#productList").click(function(){
     		$.ajax({
     			url : "bagList.do?cmd=bagList",
     			type : "POST",
     			dataType : "html",
     			beforeSend:function(){
     				$("div#mainDiv").html("<div style=\"text-align:center;\"><img src=\"/ShoppingMall/img/loading.gif\" width=\"50\" height=\"50\"/></div>");
     			},
     			success : function(data){
     				$("div#mainDiv").html(data);
     			},
     			error:function(request,status,error){
     				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
     			}
     		});
     	});
     	
     	$("a#homee").click(function(){
     		$.ajax({
     			url : "include/carousel.jsp",
     			type : "POST",
     			dataType : "html",
     			success : function(data){
     				$("div#mainDiv").html(data);
     			},
     			error:function(request,status,error){
     				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
     			}
     		});
     	});
     	
     	$.ajax({
 			url : "include/carousel.jsp",
 			type : "POST",
 			dataType : "html",
 			success : function(data){
 				$("div#mainDiv").html(data);
 			},
 			error:function(request,status,error){
 				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
 			}
 		});
     	
		startFunc();
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
		                    <img src="/ShoppingMall/assets/img/logo.png">
		                </div>
		                <div class="brand">
		                	${id}
		                </div>
					</div>
		      	</a>
		    </div>
		    <div class="collapse navbar-collapse" id="navigation-index">
		    	<ul class="nav navbar-nav navbar-right">
		    		<li>
						<a href="#" id="homee" >
							<i class="material-icons">dashboard</i> 홈
						</a>
					</li>
					<li>
						<a href="#" id="productList">
							<i class="material-icons">dashboard</i> 상품
						</a>
					</li>
					<li>
						<a href="#">
							<i class="material-icons">dashboard</i> 장바구니
						</a>
					</li>
					<li>
						<a href="logout.do?cmd=logout">
							<i class="material-icons">face</i> 로그아웃
						</a>
					</li>
		    	</ul>
		    </div>
		</div>
	</nav>
	<!-- End Navbar -->
	
	<!-- Start Body -->
	<div class="wrapper">
		<div class="header header-filter" style="background-image: url('/ShoppingMall/assets/img/bg2.jpeg');">
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
