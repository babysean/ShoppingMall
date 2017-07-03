<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/ShoppingMall/css/bootstrap.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
</head>
<style>
li{
	background: white;
}
#userDiv{
	margin: 0 auto;
	text-align: center;
}
</style>
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
		
		$("a#bag").click(function(){
			$(location).attr('href', 'bagList.do?cmd=bagList');
		});
	});
</script>
<body>
<ul class="nav nav-pills nav-justified navbar-fixed-top">
  <li role="presentation"><a href="#">Home</a></li>
  <li role="presentation"><a href="#" id="bag">Bag</a></li>
  <li role="presentation"><a href="#">Bag1</a></li>
  <li role="presentation"><a href="#">Bag2</a></li>
  <li role="presentation"><a href="#">Bag3</a></li>
  <li role="presentation"><a href="#">Bag4</a></li>
</ul>
<div id="userDiv">
	<label>${id}님 안녕하세요</label>
</div>
</body>
</html>