<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>
$(function(){
	$("input[name='removeCart']").click(function(){
		location.href="productCartDelete.do?cmd=productCartDelete&productNo="+$(this).attr("id");
	});
})
</script>

<div class="title">
	<h2>�� �� �� ��</h2>
</div>
<div id="tableDiv col-lg-12">
	<div class="table-responsive">
		<table class="table table-hover">
			<tr id="head">
				<th>ǰ��</th>
				<th>�̸�</th>
				<th>������</th>
				<th>����</th>
				<th>�̹���</th>
			</tr>
			<c:forEach var="i" items="${cart}">
				<tr>
					<td>${i.productCategory }</td>
					<td>${i.productName }</td>
					<td>${i.productOrigin }</td>
					<td>${i.productPrice }</td>
					<td><img src="/ShoppingMall${i.fileName1}" width="100"
						height="100"></td>
					<td><input type="button" id="${i.productNo}" name="removeCart"
						class="btn btn-danger" value="����"></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
