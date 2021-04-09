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
<link type="text/css" rel="stylesheet"
	href="<c:url value="resources/user/css/font-awesome.min.css"/>">
<link type="text/css" rel="stylesheet"
	href="<c:url value="resources/user/css/style.css"/>" />

</head>
<body>
	<%@include file="/WEB-INF/views/user/header.jsp"%>

	<!-- Banner -->
	<div id="banner">
		<img src="<c:url value="resources/user/img/banner.jpg"/>" width="100%">
		<div class="text-block">
			<div id="textCarousel" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<h3>Cam kết buôn bán dịch vụ chính hãng</h3>
					</div>
					<div class="item">
						<h3>Luôn mang lại những điều tốt đẹp nhất</h3>
						<h3>phục vụ cho các quý khách hàng</h3>
					</div>
					<div class="item">
						<h3>Được phục vụ cho quý khách hàng</h3>
						<h3>là niềm vinh hạnh của chúng tôi</h3>
					</div>
					<div class="item">
						<h3>Đảm bảo chất lượng</h3>
						<h3>Đổi trả trong vòng 7 ngày</h3>
					</div>
					<div class="item">
						<h3>Nơi buôn bán điện thoại uy tín</h3>
						<h3>giá rẻ nhất thị trường Việt Nam</h3>
					</div>
					<div class="item">
						<h3>Đường dây nóng : 190000000</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--End Banner-->

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">New Products</h3>
						<div class="section-nav">
							<ul class="section-tab-nav tab-nav">
								
								<li><a href="other.htm">Khác</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /section title -->

				<!-- Products tab & slick -->
				<div class="col-md-12">
					<div class="row">
						<div class="products-tabs">
							<!-- tab -->
							<div id="tab1" class="tab-pane active">
								<div class="products-slick" data-nav="#slick-nav-1">
									<!-- product -->
									<c:forEach var="hot" items="${newProducts}">
										<div class="product">
											<a href="detail/${hot.idcate}.htm">
												<div class="product-img">
													<img src="<c:url value="/resources/user/img/${hot.idcate}.jpg"/>">
													<div class="product-label">
														<span class="sale">-${hot.discount}%</span>
														<span class="new">NEW</span>
													</div>
												</div>
											</a>
											<div class="product-body">
												<h3 class="product-name">
													<a href="#">${hot.namecate}</a>
												</h3>
												<h4 class="product-price">
													${hot.prices - hot.prices*hot.discount/100}												
													<del class="product-old-price">${hot.prices}</del>
												</h4>
											</div>									
										</div>
									</c:forEach>
									<!-- /product -->
								</div>
								<div id="slick-nav-1" class="products-slick-nav"></div>
							</div>
							<!-- /tab -->
						</div>
					</div>
				</div>
				<!-- Products tab & slick -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<!-- HOT DEAL SECTION -->
	<div id="hot-deal" class="section">
		<!-- container -->
		<div class="container">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!--Phan cac chi so-->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-silde-to="2"></li>
					<li data-target="#myCarousel" data-silde-to="3"></li>
					<li data-target="#myCarousel" data-silde-to="4"></li>
					<li data-target="#myCarousel" data-silde-to="5"></li>
				</ol>

				<!--Phan bao cac silde-->
				<div class="carousel-inner" role="listbox">
					<!--nen chinh full width carousel-->
					<div class="item active">
						<img class="img-responsive"
							src="<c:url value="resources/user/img/carousel1.png"/>"
							alt="carousel1" width="100%">
					</div>
					<div class="item">
						<img class="img-responsive"
							src="<c:url value="resources/user/img/carousel2.png"/>"
							alt="carousel2" width="100%">
					</div>
					<div class="item">
						<img class="img-responsive"
							src="<c:url value="resources/user/img/carousel3.png"/>"
							alt="carousel3" width="100%">
					</div>
					<div class="item">
						<img class="img-responsive"
							src="<c:url value="resources/user/img/carousel4.png"/>"
							alt="carousel4" width="100%">
					</div>
					<div class="item">
						<img class="img-responsive"
							src="<c:url value="resources/user/img/carousel5.png"/>"
							alt="carousel5" width="100%">
					</div>
					<div class="item">
						<img class="img-responsive"
							src="<c:url value="resources/user/img/carousel6.png"/>"
							alt="carousel6" width="100%">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span class="sr-only"><i
						class="fas fa-angle-left"></i>Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span class="sr-only"><i
						class="fas fa-angle-right"></i>Next</span>
				</a>
			</div>
		</div>
		<!-- /container -->
	</div>
	<!-- /HOT DEAL SECTION -->

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">ĐANG GIẢM GIÁ</h3>
					</div>
				</div>
				<!-- /section title -->

				<!-- Products tab & slick -->
				<div class="col-md-12">
					<div class="row">
						<div class="products-tabs">
							<!-- tab -->
							<div id="tab2" class="tab-pane fade in active">
								<div class="products-slick" data-nav="#slick-nav-2">
									<c:forEach var="t" items="${topSelling }">
										<!-- product -->
										<div class="product">
											<a href="detail/${t.idcate}.htm">
												<div class="product-img">
													<img src="<c:url value="resources/user/img/${t.idcate}.jpg"/>"
														alt="">
													<div class="product-label">
														<span class="sale">-${t.discount }</span> <span class="new">NEW</span>
													</div>
												</div>	
											</a>
											<div class="product-body">
												<h3 class="product-name">
													<a href="#">${t.namecate}</a>
												</h3>
												<h4 class="product-price">
													${t.prices - t.prices*t.discount/100}											
													<del class="product-old-price">${t.prices}</del>
												</h4>									
											</div>
											
										</div>
										<!-- /product -->
									</c:forEach>
								</div>
								<div id="slick-nav-2" class="products-slick-nav"></div>
							</div>
							<!-- /tab -->
						</div>
					</div>
				</div>
				<!-- /Products tab & slick -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-4 col-xs-6">
					<div class="section-title">
						<h4 class="title">SẢN PHẨM HIỆN CÓ</h4>
						<div class="section-nav">
							<div id="slick-nav-3" class="products-slick-nav"></div>
						</div>
					</div>

					<div class="products-widget-slick" data-nav="#slick-nav-3">
						<div>
							<c:forEach var="w1" items="${widget1}">
							<!-- product widget -->
							<div class="product-widget">
								<a href="detail/${w1.idcate}.htm">
								<div class="product-img">
									<img src="<c:url value="resources/user/img/${w1.idcate}.jpg"/>"
										alt="">
								</div>
								</a>
								<div class="product-body">
									<h3 class="product-name">
										<a href="#">${w1.namecate}</a>
									</h3>
									<h4 class="product-price">
										${w1.prices - w1.prices*w1.discount/100}
										<del class="product-old-price">${w1.prices}</del>
									</h4>
								</div>
							</div>
							<!-- /product widget -->
							</c:forEach>						
						</div>
					</div>
				</div>

				<div class="col-md-4 col-xs-6">
					<div class="section-title">
						<h4 class="title"></h4>
						<div class="section-nav">
							<div id="slick-nav-4" class="products-slick-nav"></div>
						</div>
					</div>

					<div class="products-widget-slick" data-nav="#slick-nav-4">
						<div>
							<c:forEach var="w2" items="${widget2}">
							<!-- product widget -->
							<div class="product-widget">
								<a href="detail/${w2.idcate}.htm">
								<div class="product-img">
									<img src="<c:url value="resources/user/img/${w2.idcate}.jpg"/>"
										alt="">
								</div>
								</a>
								<div class="product-body">
									<h3 class="product-name">
										<a href="#">${w2.namecate }</a>
									</h3>
									<h4 class="product-price">
										${w2.prices - w2.prices*w2.discount/100}
										<del class="product-old-price">${w2.prices}</del>
									</h4>
								</div>
							</div>
							<!-- /product widget -->
							</c:forEach>
						</div>
					</div>
				</div>

				<div class="clearfix visible-sm visible-xs"></div>

				<div class="col-md-4 col-xs-6">
					<div class="section-title">
						<h4 class="title"></h4>
						<div class="section-nav">
							<div id="slick-nav-5" class="products-slick-nav"></div>
						</div>
					</div>

					<div class="products-widget-slick" data-nav="#slick-nav-5">
						<div>
							<c:forEach var="w3" items="${widget3}">
							<!-- product widget -->
							<div class="product-widget">
								<a href="detail/${w3.idcate}.htm">
								<div class="product-img">
									<img src="<c:url value="resources/user/img/${w3.idcate}.jpg"/>"
										alt="">
								</div>
								</a>
								<div class="product-body">
									<h3 class="product-name">
										<a href="#">${w3.namecate }</a>
									</h3>
									<h4 class="product-price">
										${w3.prices - w3.prices*w3.discount/100}
										<del class="product-old-price">${w3.prices}</del>
									</h4>
								</div>
							</div>
							<!-- /product widget -->
							</c:forEach>
						</div>
					</div>
				</div>

			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

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
