<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<script>
	$("button.addCart").click(function(){
		var result = confirm('장바구니에 추가하시겠습니까?');
		if(result) {
			location.href="productCart.do?cmd=productCart&productNo="+$(this).attr("id");
		}
	});
</script>

<div class="title">
	<h2>상 품 리 스 트</h2>
</div>
	<div class="row">
		<c:forEach var="i" items="${productList}">
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
	                <img src="/ShoppingMall${i.fileName1}" class="img-rounded img-responsive img-raised">
					<div class="caption">
						<h3>${i.productName}</h3>
						<p>${i.productPrice} 원</p>
						<p>
							<button class="btn btn-primary addCart" role="button" id="${i.productNo}"><img src="/ShoppingMall/img/heart.png" width="15" height="15"/>  장바구니추가</button>
						</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
