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
</head>
<script>
	$(function(){
		/* 메뉴 효과 */
		$("li").click().each(function(){
			if($("li").text()==$(this).text()){
				$(this).addClass("active");
			}else{
				$(this).removeClass("active");
			}
		});
		
		$("a#home").click(function(){
			$(location).attr('href', 'home.jsp');
		});
		$("a#bag").click(function(){
			$(location).attr('href', 'bagList.do?cmd=bagList');
		});
		$("a#cart").click(function(){
			$(location).attr('href', 'productCart.jsp');
		});
		$("a#logout").click(function(){
			$(location).attr('href', 'logout.do?cmd=logout');
		});
		
	});
</script>
<body>
<div id="userDiv">
<ul class="nav nav-pills nav-justified navbar-fixed-top">
  <li role="presentation"><a href="#" id="home">Home</a></li>
  <li role="presentation"><a href="#" id="bag">Bag</a></li>
  <li role="presentation"><a href="#" id="cart">Cart</a></li>
  <li role="presentation"><a href="#" id="logout">Logout</a></li>
</ul>

	<label>${id}님 안녕하세요</label>
</div>
</body>
</html>