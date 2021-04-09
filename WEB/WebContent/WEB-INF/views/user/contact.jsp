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
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/font-awesome.min.css"/>">
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/style.css"/>"/>
</head>
<body>
	<%@include file="/WEB-INF/views/user/header.jsp" %>
	<!-- NAVIGATION -->
	<nav id="navigation">
		<!-- container -->
		<div class="container">
			<!-- responsive-nav -->
			<div id="responsive-nav">
				<!-- NAV -->
				<ul class="main-nav nav navbar-nav">
					<li class="active"><a href="#">Trang chủ</a></li>
					<li><a href="#">Hàng mới nhất</a></li>
					<li><a href="#">Đang giảm giá</a></li>
					<li><a href="#">Cơ Billard</a></li>
					<li><a href="#">Bàn Billard</a></li>
					<li><a href="#">Liên hệ</a></li>
				</ul>
				<!-- /NAV -->
			</div>
			<!-- /responsive-nav -->
		</div>
		<!-- /container -->
	</nav>
	<!-- /NAVIGATION -->
	</nav>
	<div class="container">
		<div id="contact">
			<h4>
				<strong>XIN CHÂN THÀNH CẢM ƠN QUÝ KHÁCH HÀNG ĐÃ TIN TƯỞNG
					SỬ DỤNG DỊCH VỤ CỦA CHÚNG TÔI</strong>
			</h4>
			<p>Mọi thắc mắc xin liên hệ:</p>
			<p>
				Số điện thoại đường dây nóng : <a href="#"><i
					class="fa fa-phone"></i> 1900000000</a>
			</p>
			<p>
				Gmail: <a href="#"><i class="fa fa-envelope-o"></i>
					didong@gmail.com</a>
			</p>
			<p>
				Văn phòng làm việc: <a href="#"><i class="fa fa-map-marker"></i>
					Địa chỉ 319 Nguyễn Duy Trinh,
					Quận 2, TPHCM</a>
			</p>
		</div>
		<div id="end">
			<p>Để phục vụ tốt nhất cho quý khách hàng. Vui lòng không để lộ
				thông tin cá nhân của mình cho người khác để tránh trường hợp lừa
				đảo</p>
			<p>Xin cảm ơn</p>
		</div>
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
