<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/ShoppingMall/css/bootstrap.css">
<link rel="stylesheet" href="/ShoppingMall/css/main.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="/ShoppingMall/js/bootstrap.min.js"></script>
<script src="/ShoppingMall/js/main.js"></script>
</head>
<body>
	<jsp:include page="top.jsp" />
	<hr>
	<div class="layer">
		<div class="table-responsive tableDiv">
			<table class="table table-hover">
				<colgroup>
					<col width="400" />
					<col width="100" />
				</colgroup>
				<tr>
					<th id="thTd">이미지</th>
					<th id="thTd">상품</th>
				</tr>
				<tr>
					<td rowspan="7"><img
						src="/ShoppingMall${productInfo.fileName1}" id="bagImg1"
						width="400" height="400" /></td>
					<th id="thTd">아이디</th>
					<td id="tdId">${productInfo.productNo}</td>
				</tr>
				<tr>
					<th id="thTd">상품명</th>
					<td>${productInfo.productName }</td>
				</tr>
				<tr>
					<th id="thTd">가격</th>
					<td>${productInfo.productPrice }</td>
				</tr>
				<tr>
					<th id="thTd">원산지</th>
					<td>${productInfo.productOrigin }</td>
				</tr>
				<tr>
					<th id="thTd">카테고리</th>
					<td>${productInfo.productCategory }</td>
				</tr>
				<tr>
					<td><img src="/ShoppingMall${productInfo.fileName1}"
						id="bagSmallImg1" width="50" height="50">
						<img src="/ShoppingMall${productInfo.fileName2}"
						id="bagSmallImg2" width="50" height="50"></td>
				</tr>
			</table>
			<div class="form-group centerDiv">
				<input type="button" id="cartSend" class="btn btn-success" value="장바구니추가">
			</div>
		</div>
	</div>
</body>
</html>