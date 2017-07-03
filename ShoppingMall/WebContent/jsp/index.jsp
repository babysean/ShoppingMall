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
	$(function(){
		$("input#listSend").click(function(){
			$(location).attr('href','productList.do?cmd=productList');
		});
	});
</script>
<style>
body {
	padding-top: 70px;
}
</style>
<body>
	<input type="button" id="listSend">
</body>
</html>