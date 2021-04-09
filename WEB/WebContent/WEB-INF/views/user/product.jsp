<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Billard Shop</title>
	<link href="<c:url value="resources/user/css/css.css"/>" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/bootstrap.min.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/slick.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/slick-theme.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/nouislider.min.css"/>"/>
	<link rel="stylesheet" href="<c:url value="resources/user/css/font-awesome.min.css"/>">
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/style.css"/>"/>
	<style>
		.detail {
			margin-top:100px;
		}
	</style>
</head>
<body>
	<%@include file="/WEB-INF/views/user/header.jsp" %>
	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
				
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /BREADCRUMB -->

	<div class="detail">
	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- Product main img -->
				<div class="col-md-5 col-md-push-2">
					<div id="product-main-img">
						<c:forEach var="i" items="${detail}">
						<div class="product-preview">
							<img src="<c:url value="resources/user/img/${i.idcate}.jpg"/>" alt="">
						</div>
						</c:forEach>
					</div>
				</div>
				<!-- /Product main img -->

				<!-- Product thumb imgs -->
				<div class="col-md-2  col-md-pull-5">
					<div id="product-imgs">
						
					</div>
				</div>
				<!-- /Product thumb imgs -->

				<!-- Product details -->
				<div class="col-md-5">
					<div class="product-details">
						<c:forEach var="x" items="${detail}">
						<h2 class="product-name">${x.namecate}</h2>
						<div>
							<c:if test="${x.discount == 0}">
								<h3 class="product-price">
									${x.prices}
								</h3>
							</c:if>
							<c:if test="${x.discount > 0}">
								<h3 class="product-price">
									${x.prices - x.prices*x.discount/100}
									<del class="product-old-price">${x.prices}</del>
								</h3>
							</c:if>
							
							<span class="product-available">Còn Hàng</span>
							<p>
								${x.reviews}
							</p>
							<div class="add-to-cart">
								<c:url var="url" value="addToCart.htm"/>
								<form action="${url}">
									<div class="qty-label">
										Số lượng
										<div class="input-number">
											<input type="number" name="soluong" value="1"> <span class="qty-up">+</span> <span
												class="qty-down">-</span>
										</div>
									</div> 
									<br/> <br/>
									<button class="add-to-cart-btn">
										<i class="fa fa-shopping-cart"></i> Thêm vào giỏ
									</button>
								</form>
				
							</div>
							
							<ul class="product-links">
								<li>Chia sẽ:</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-envelope"></i></a></li>
							</ul>
						</div>
						</c:forEach>
						

					</div>
				</div>
				<!-- /Product details -->

				<!-- Product tab -->
				<div class="col-md-12">
					<div id="product-tab">
						<!-- product tab nav -->
						<ul class="tab-nav">
							<li class="active"><a data-toggle="tab" href="#tab1" >Review sản phẩm</a></li>
						</ul>
						<!-- /product tab nav -->

						<!-- product tab content -->
						<div class="tab-content">
							<!-- tab3  -->
							<div id="tab1" class="tab-pane fade in active">
								<div class="row">
									<!-- Reviews -->
									<div class="col-md-9">
										<div id="reviews">
											<ul class="reviews">
												<c:forEach var="r" items="${res}">
												<li>
													<div class="review-heading">
														<h5 class="name">${r.user.getUsername()}</h5>
														<div class="review-rating">
															<c:if test="${r.stars == 5}">
																<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
																<i class="fa fa-star"></i><i class="fa fa-star"></i>
															</c:if>
															<c:if test="${r.stars == 4}">
																<i class="fa fa-star"></i><i class="fa fa-star"></i>
																<i class="fa fa-star"></i><i class="fa fa-star"></i>
															</c:if>
															<c:if test="${r.stars == 3}">
																<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
															</c:if>
															<c:if test="${r.stars == 2}">
																<i class="fa fa-star"></i><i class="fa fa-star"></i>
															</c:if>
															<c:if test="${r.stars == 1}">
																<i class="fa fa-star"></i>
															</c:if>
														</div>
													</div>
													<div class="review-body">
														<p>${r.comments}</p>
													</div>
												</li>			
												</c:forEach>												
											</ul>
										</div>
									</div>
									<!-- /Reviews -->

									<!-- Review Form -->
									<div class="col-md-3">
										<div id="review-form">
											<c:url var="url" value="reviews.htm"/>
											<form class="review-form" action="${url}">
												<textarea name="cmt" class="input" placeholder="Review"></textarea>
												<div class="input-rating">
													<span>Vote sao: </span>
													<div class="stars">
														<input id="star5" name="rating" value="5" type="radio"><label for="star5"></label> 
														<input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
														<input id="star3" name="rating" value="3" type="radio"><label for="star3"></label> 
														<input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
														<input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
													</div>
												</div>
												<button class="primary-btn">Submit</button>
											</form>
										</div>
									</div>
									<!-- /Review Form -->
								</div>
							</div>
							<!-- /tab3  -->
						</div>
						<!-- /product tab content  -->
					</div>
				</div>
				<!-- /product tab -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->
	</div>

	
	
	<%@include file="/WEB-INF/views/user/footer.jsp" %>
	
	<!-- jQuery Plugins -->
	<script src="<c:url value="resources/user/js/jquery.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/slick.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/nouislider.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/jquery.zoom.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/main.js"/>"></script>

</body>
</html>
