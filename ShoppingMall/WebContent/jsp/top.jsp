<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/ShoppingMall/css/bootstrap.css">
<link rel="stylesheet" href="/ShoppingMall/css/main.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="/ShoppingMall/js/main.js"></script>
</head>
<body>
<div id="userDiv">
<ul class="nav nav-pills nav-justified navbar-fixed-top">
	<li class="lili" role="presentation"><a href="#" id="home">Home</a></li>
	<li class="lili" role="presentation"><a href="#" id="bag">Bag</a></li>
	<li class="lili" role="presentation"><a href="#" id="cart">Cart</a></li>
	<li class="lili" role="presentation"><a href="#" id="logout">Logout</a></li>
	<div id="userId"><label>${id}님 안녕하세요<br><br></label></div>
</ul>
</div>
</body>
</html>