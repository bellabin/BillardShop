<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<nav class="navbar navbar-default navbar-fixed-top">
	<header>
		<!-- TOP HEADER -->
		<div id="top-header">
			<div class="container">
				<ul class="header-links pull-left">
					<li><a href="#"><i class="fa fa-phone"></i> 1900000000</a></li>
					<li><a href="#"><i class="fa fa-envelope-o"></i>
							billard@gmail.com</a></li>
					<li><a href="#"><i class="fa fa-map-marker"></i> 319 Nguyễn Duy Trinh, Q2, TPHCM</a></li>
				</ul>
				<ul class="header-links pull-right">
					<li data-toggle="modal" data-target="#myModal" onclick="loginForm()">
						<a href="login.htm">
							<i class="fa fa-sign-in"></i> Đăng nhập
						</a>
					</li>
					<li><a href="register.htm"><i class="fa fa-user-o"></i>
							Đăng ký</a></li>
				</ul>
			</div>
		</div>
		<!-- /TOP HEADER -->

		<!-- MAIN HEADER -->
		<div id="header">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- LOGO -->
					<div class="col-md-3">
						<div class="header-logo">
							<a href="index.htm" class="logo"> <img
								src="<c:url value="resources/user/img/logo.png"/>" alt="">
							</a>
						</div>
					</div>
					<!-- /LOGO -->

					<!-- SEARCH BAR -->
					<div class="col-md-6">
						<div class="header-search">
							<form>
								<input class="input" placeholder="Search here">
								<button class="search-btn">Search</button>
							</form>
						</div>
					</div>
					<!-- /SEARCH BAR -->

					<!-- ACCOUNT -->
					<div class="col-md-3 clearfix">
						<div class="header-ctn">
							<!-- Cart -->
							<div class="dropdown">
								<a href="shopCart.htm"> <i class="fa fa-shopping-cart"></i> <span>Giỏ hàng</span>
									<div class="qty">${total}</div>
								</a>						
							</div>
							<!-- /Cart -->

							<!-- Menu Toogle -->
							<div class="menu-toggle">
								<a href="#"> <i class="fa fa-bars"></i> <span>Menu</span>
								</a>
							</div>
							<!-- /Menu Toogle -->
						</div>
					</div>
					<!-- /ACCOUNT -->
				</div>
				<!-- row -->
			</div>
			<!-- container -->
		</div>
		<!-- /MAIN HEADER -->
	</header>
	<!-- /HEADER -->

	<!-- NAVIGATION -->
	<nav id="navigation">
		<!-- container -->
		<div class="container">
			<!-- responsive-nav -->
			<div id="responsive-nav">
				<!-- NAV -->
				<ul class="main-nav nav navbar-nav">
					<li class="${trangchu}"><a href="index.htm">Trang chủ</a></li>
					<li class="${isNew}"><a href="isNew.htm">Hàng mới nhất</a></li>
					<li class="${selling}"><a href="isSelling.htm">Đang giảm giá</a></li>
					<li class="${cuestick}"><a href="cuestick.htm">Cơ Billard</a></li>
					<li class="${table}"><a href="table.htm">Bàn Billard</a></li>
					<li class="${contact}"><a href="contact.htm">Liên hệ</a></li>
				</ul>
				<!-- /NAV -->
			</div>
			<!-- /responsive-nav -->
		</div>
		<!-- /container -->
	</nav>
	<!-- /NAVIGATION -->
</nav>