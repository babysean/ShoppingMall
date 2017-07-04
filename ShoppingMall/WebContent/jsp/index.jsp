<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>index</title>
<link rel="stylesheet" href="/ShoppingMall/css/bootstrap.css">
<link rel="stylesheet" href="/ShoppingMall/css/main.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
</head>
<script>
	$(function() {
		$("input#sendLogin").click(function(){
			if($("input#id").val().trim().length == 0 ||$("input#pw").val().trim().length == 0 ){
				$("input#id").val('');
				$("input#pw").val('');
				alert('id와 pw를 확인하세요.');
			}else{
				$("form#frm").submit();
			}
		});
	});
</script>
<body>
	<div id="backDiv">
		<form action="login.do?cmd=login" method="post" name="frm" id="frm">
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
					<input type="button" id="sendLogin" class="btn btn-default"
						value="로그인">
				</div>
			</div>
		</form>
	</div>
</body>
</html>