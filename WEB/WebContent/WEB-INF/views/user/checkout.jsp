<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Billard Shop</title>
<link href="<c:url value="/resources/user/css/css.css"/>"
	rel="stylesheet">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/user/css/bootstrap.min.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/user/css/slick.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/user/css/slick-theme.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/user/css/nouislider.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/user/css/font-awesome.min.css"/>">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/user/css/style.css"/>" />

</head>
<body>
	<%@include file="/WEB-INF/views/user/header.jsp"%>
	<!-- BREADCRUMB -->
	<div class="checkout-body">
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-7">
						<c:url var="url" value="buy.htm"/>
						<form action="${url}">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">* Thông tin người nhận</h3>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="hoten"
									placeholder="Họ Và Tên">
									<form:errors path="hoten"/>
							</div>
							<div class="form-group">
								<input class="input" type="email" name="email"
									placeholder="Email" >
									<form:errors path="email"/>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="diachi"
									placeholder="Địa chỉ nơi nhận hàng">
								<form:errors path="diachi"/>
							</div>
							<div class="form-group">
								<input class="input" type="tel" name="tel"
									placeholder="Số điện thoại">
								<form:errors path="tel"/>
							</div>
						</div>
						<!-- /Billing Details -->			

						<!-- Shiping Details -->
						<div class="shiping-details">
							<div class="section-title">
								<h3 class="title">* Ghi chú cho người bán</h3>
							</div>
						</div>
						<!-- /Shiping Details -->
				
						<!-- Order notes -->
						<div class="order-notes">
							<textarea class="input" placeholder="Ghi chú"></textarea>
						</div>
						<!-- /Order notes -->
						<button class="primary-btn order-submit">Đặt hàng</button>
						</form>
					</div>

					<!-- Order Details -->
					<div class="col-md-5 order-details">
						<div class="section-title text-center">
							<h3 class="title">Thông tin đơn hàng</h3>
						</div>
						<div class="order-summary">
							<div class="order-col">
								<div>
									<strong>Sản phẩm</strong>
								</div>
								<div>
									<strong>Tổng tiền</strong>
								</div>
							</div>
							<c:forEach var="p" items="${list}">
							<div class="order-products">
								<div class="order-col">
									<div>${p.category.getNamecate()} x ${p.quality}</div>
									<div>${p.quality*p.category.getPrices() - p.quality*p.category.getPrices()*p.category.getDiscount()/100}</div>
								</div>
							</div>
							</c:forEach>
							<div class="order-col">
								<div>Phí giao hàng</div>
								<div>
									<strong>Miễn phí</strong>
								</div>
							</div>
							<div class="order-col">
								<div>
									<strong>TOTAL</strong>
								</div>
								<div>
									<strong class="order-total">${tongtien}</strong>
								</div>
							</div>
						</div>
						<div>
							<p style="color: red">*Sẽ thanh toán hóa đơn khi quý vị khách
								quý nhận được hàng</p>
						</div>				
					</div>
					<!-- /Order Details -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
	</div>

	<%@include file="/WEB-INF/views/user/footer.jsp"%>

	<!-- jQuery Plugins -->
	<script src="<c:url value="/resources/user/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/user/js/slick.min.js"/>"></script>
	<script src="<c:url value="/resources/user/js/nouislider.min.js"/>"></script>
	<script src="<c:url value="/resources/user/js/jquery.zoom.min.js"/>"></script>
	<script src="<c:url value="/resources/user/js/main.js"/>"></script>

</body>
</html>
