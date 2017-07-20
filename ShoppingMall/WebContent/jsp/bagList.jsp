<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>


	<div class="row">
		<c:forEach var="i" items="${productList}">
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
	                <img src="assets/img/avatar.jpg" class="img-rounded img-responsive img-raised">
					<div class="caption">
						<h3>Thumbnail label</h3>
						<p>...</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">Button</a> 
							<a href="#" class="btn btn-default" role="button">Button</a>
						</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
