<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
					<td id="thTd">품목</td>
					<td id="thTd">이름</td>
					<td id="thTd">원산지</td>
					<td id="thTd">가격</td>
					<td id="thTd">이미지</td>
				</tr>
				<c:forEach var="i" items="${productList}">
					<tr id="${i.productNo}">
						<td>${i.productCategory}</td>
						<td>${i.productName }</td>
						<td>${i.productOrigin }</td>
						<td>${i.productPrice }</td>
						<td><img src="/ShoppingMall${i.fileName1}" width="100"
							height="100"></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
<div class="paging">
	<ul class="pagination">
		<ul class="pager" id="pageUl">
			<li>
				<a href="bagList.do?cmd=bagList&page=1" aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a>
			</li>
			<li>
				<c:if test="${pageBean.currentBlock gt 1}">
					<c:choose>
						<c:when test="${pageBean.currentPage ne pageBean.startPage}">
							<a href="bagList.do?cmd=bagList&page=${pageBean.startPage-1}">Previous</a>
						</c:when>
						<c:otherwise>
							<a href="#">Previous</a>
						</c:otherwise>
					</c:choose>
				</c:if>
				<c:if test="${pageBean.currentBlock le 1}">
					<c:choose>
						<c:when test="${pageBean.currentPage ne pageBean.startPage}">
							<a href="bagList.do?cmd=bagList&page=${pageBean.currentPage-1}">Previous</a>
						</c:when>
						<c:otherwise>
							<a href="#">Previous</a>
						</c:otherwise>
					</c:choose>
				</c:if>
			</li>
			<span>
				<c:forEach var="i" begin="${pageBean.startPage}" end="${pageBean.endPage}" step="1">
					<c:choose>
					<c:when test="${i eq pageBean.currentPage}">
							<li><a href="#"><strong>${i}</strong></a></li>
						</c:when>
						<c:otherwise>
							<li><a href="bagList.do?cmd=bagList&page=${i}">${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</span>
			<li>			
				<c:if test="${pageBean.totalPage gt pageBean.endPage}">
					<c:choose>
						<c:when test="${pageBean.currentPage ne pageBean.endPage}">
							<a href="bagList.do?cmd=bagList&page=${pageBean.currentPage + 1}">Next</a>
						</c:when>
						<c:otherwise>
							<a href="#">Next</a>
						</c:otherwise>
					</c:choose>
				</c:if>
				<c:if test="${pageBean.totalPage le pageBean.endPage}">
					<c:choose>
						<c:when test="${pageBean.currentPage ne pageBean.endPage}">
							<a href="bagList.do?cmd=bagList&page=${pageBean.currentPage + 1}">Next</a>
						</c:when>
						<c:otherwise>
							<a href="#">Next</a>
						</c:otherwise>
					</c:choose>
				</c:if>
			</li>
			<li>
				<a href="bagList.do?cmd=bagList&page=${pageBean.totalPage}" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		</ul>
		</ul>
	</div>
</body>
</html>