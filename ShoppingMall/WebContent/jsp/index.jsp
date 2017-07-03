<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>index</title>
<link rel="stylesheet" href="/ShoppingMall/css/bootstrap.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
</head>
<script>
	$(function() {
		$("input#listSend").click(function() {
			$(location).attr('href', 'productList.do?cmd=productList');
		});
	});
</script>
<style>
body {
	padding-top: 70px;
	width: 100%;
	background-image: url("/ShoppingMall/img/loginBack.jpg");
}
#innerDiv{
	background-color: #CC9999;
	width: 10%;
	text-align: center;
	padding: 10px;
	margin: 0 auto;
}
#sendLogin{
	width: 100%;
}
</style>
<body>
	<div id="backDiv">
		<div id="innerDiv" class="form-group">
			<div class="form-group">
				<label>Id</label>
			</div>
			<div class="form-group">
				<input type="text" id="id" name="id" placeholder="아이디를 입력하세요.">
			</div>
			<div class="form-group">
				<label>Pw</label>
			</div>
			<div class="form-group">
				<input type="password" id="pw" name="pw" placeholder="패스워드를 입력하세요.">
			</div>
			<div class="form-group">
				<input type="button" id="sendLogin" class="btn btn-default" value="로그인">
			</div>
		</div>
	</div>

	<input type="button" id="listSend">

</body>
</html>