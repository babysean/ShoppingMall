<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>상품목록</title>
<link rel="stylesheet" href="/ShoppingMall/css/bootstrap.css">
<link rel="stylesheet" href="/ShoppingMall/css/main.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="/ShoppingMall/js/main.js"></script>
</head>
<body>
	<jsp:include page="top.jsp" />
	<hr>
	<div id="tableDiv">
		<div class="table-responsive">
			<table class="table table-hover">
				<tr id="head">
					<th>품목</th>
					<th>이름</th>
					<th>원산지</th>
					<th>가격</th>
					<th>이미지</th>
				</tr>
				<c:forEach var="i" items="${cart}">
					<tr>
						<td>${i.productCategory }</td>
						<td>${i.productName }</td>
						<td>${i.productOrigin }</td>
						<td>${i.productPrice }</td>
						<td><img src="/ShoppingMall${i.fileName1}" width="100"
							height="100"></td>
						<td>
						<input type="button" id="${i.productNo}" name="removeCart" class="btn btn-danger" value="삭제"></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>