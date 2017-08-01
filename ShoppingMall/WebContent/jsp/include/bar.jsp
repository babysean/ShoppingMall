<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#navigation-index">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a href="#">
			<div class="logo-container">
				<div class="logo">
					<img src="/ShoppingMall/assets/img/logo.png">
				</div>
				<div class="brand">${id}</div>
			</div>
		</a>
	</div>
	<div class="collapse navbar-collapse" id="navigation-index">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="home.do?cmd=home" id="homee"> <i class="material-icons">dashboard</i>
					홈
			</a></li>
			<li><a href="bagList.do?cmd=bagList" id="productList"> <i class="material-icons">dashboard</i>
					상품
			</a></li>
			<li><a href="goCart.do?cmd=goCart" id="cartt"> <i class="material-icons">dashboard</i>
					장바구니
			</a></li>
			<li><a href="logout.do?cmd=logout"> <i
					class="material-icons">face</i> 로그아웃
			</a></li>
		</ul>
	</div>
</div>