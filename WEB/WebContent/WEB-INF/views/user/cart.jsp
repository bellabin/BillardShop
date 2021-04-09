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
	<div class="px-4 px-lg-0">
		<div class="pb-5">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
						<div class="table-responsive">
							<h3 class="breadcrumb-header">Giỏ hàng</h3>
							<table class="table">
								<thead>
									<tr>
										<th scope="col" class="border-0 bg-light">
											<div class="p-2 px-3 text-uppercase">Sản phẩm</div>
										</th>
										<th scope="col" class="border-0 bg-light">
											<div class="py-2 text-uppercase">Số lượng</div>
										</th>
										<th scope="col" class="border-0 bg-light">
											<div class="py-2 text-uppercase">Đơn giá</div>
										</th>
										<th scope="col" class="border-0 bg-light">
											<div class="py-2 text-uppercase"></div>
										</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="p" items="${list}">
									<c:url var="url" value="edit/${p.category.getIdcate()}.htm"/>
									<form action="${url}">
									<tr>
										<th scope="row" class="border-0">
											<div class="p-2">
												<img src="<c:url value="resources/user/img/${p.category.getIdcate()}.jpg"/>"
													alt="" width="70" class="img-fluid rounded shadow-sm">
												<div class="ml-3 d-inline-block align-middle">
													<h5 class="mb-0">
														<a href="#" class="text-dark d-inline-block align-middle">${p.category.getNamecate()}</a>
													</h5>
													<span
														class="text-muted font-weight-normal font-italic d-block"></span>
												</div>
											</div>
										</th>
										<td class="border-0 align-middle">
											<div id="chooseQuality">
												<button name="sub" class="btn" id="sub">
													<i class="fa fa-minus"></i>
												</button>
												<input id="quality" name="quality" type="text" value="${p.quality}"
													readonly="readonly">
												<button name="add" class="btn" id="add">
													<i class="fa fa-plus"></i>
												</button>
											</div>
										</td>
										<td class="border-0 align-middle"><strong><input id="gia" type="text" value="${p.category.getPrices() - p.category.getPrices()*p.category.getDiscount()/100}" readonly="readonly"></strong></td>
										<td class="border-0 align-middle"><a href="deleteCate/${p.category.getIdcate()}.htm"
											class="text-dark"><i class="fa fa-trash"></i></a></td>
									</tr>
									</form>
									</c:forEach>
								</tbody>
							</table>
							<div class="buy-products">
								<br/>
								<br/>
								<a href="checkout.htm"><input type="button" value="Mua hàng" /></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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