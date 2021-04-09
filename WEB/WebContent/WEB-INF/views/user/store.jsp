<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Billard Shop</title>
<link href="<c:url value="resources/user/css/css.css"/>"
	rel="stylesheet">
<link type="text/css" rel="stylesheet"
	href="<c:url value="resources/user/css/bootstrap.min.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="resources/user/css/slick.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="resources/user/css/slick-theme.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="resources/user/css/nouislider.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="resources/user/css/font-awesome.min.css"/>">
<link type="text/css" rel="stylesheet"
	href="<c:url value="resources/user/css/style.css"/>" />

</head>
<body>
	<%@include file="/WEB-INF/views/user/header.jsp"%>
	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12"></div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /BREADCRUMB -->

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div id="store" class="col-md-12">
					<!-- store products -->
					<div class="row">
						<c:forEach var="p" items="${products}" varStatus="index">
						
						<c:if test="${index.index < 24}">
			
							<c:if test="${index.index % 4 == 0}">
								<div class="clearfix visible-lg visible-md"></div>
							</c:if>
						
							<!-- product -->
							<div class="col-md-3 col-xs-6">
								<div class="product">
									<a href="detail/${p.idcate}.htm">
									<div class="product-img">
										<img src="<c:url value="/resources/user/img/${p.idcate}.jpg"/>">
										<div class="product-label">
											<span class="sale">-${p.discount}%</span> 
											<span class="new">NEW</span>
										</div>
									</div>
									</a>
									<div class="product-body">
										<h3 class="product-name">
											<a href="#">${p.namecate}</a>
										</h3>
										<h4 class="product-price">
											${p.prices - p.prices*p.discount/100}	
											<del class="product-old-price">${p.prices}</del>
										</h4>									
									</div>									
								</div>
							</div>
							<!-- /product -->
						</c:if>
						
						</c:forEach>
					</div>
					<!-- /store products -->
				</div>
				<!-- /STORE -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->
	<ul class="reviews-pagination">
		<li><a href="${url}.htm">1</a></li>
		<li><a href="${url}.htm">2</a></li>
		<li><a href="${url}.htm">3</a></li>
		<li><a href="${url}.htm">4</a></li>
		<li><a href="${url}.htm"><i class="fa fa-angle-right"></i></a></li>
	</ul>	
	<%@include file="/WEB-INF/views/user/footer.jsp"%>

	<!-- jQuery Plugins -->
	<script src="<c:url value="resources/user/js/jquery.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/slick.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/nouislider.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/jquery.zoom.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/main.js"/>"></script>

</body>
</html>
