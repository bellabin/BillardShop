<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="vi">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Billard Shop</title>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/css.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/bootstrap.min.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/slick.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/slick-theme.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/nouislider.min.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/font-awesome.min.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/style.css"/>"/>
	<style>
		*[id$=errors] {
			color: red;
		}
		
		.loginForm {
		  float: left;
		  padding: 10px;
		  margin-top: 150px;
		  margin-left: 150px;
		}
		
		.loginForm  input{
		  padding: 10px;
		  margin: 10px;
		  width: 250%;
		}
		
		.loginForm button {
		  padding: 10px;
		  width: 200px;
		  margin-top: 20px;
		  margin-left: 95%;
		}
	</style>
</head>
<body>
	<%@include file="/WEB-INF/views/user/header.jsp" %>
	<!-- REGISTER FORM-->
	${message}
	<div class="container">
		<c:url var="url" value="/infoLogin.htm"/>
		<form:form action="${url }" modelAttribute="user" class="loginForm">
			<div>
				<label>*Tên đăng nhập</label>
				<input id="username" name="username" type="text" /> 
				<form:errors path="username"/>
			</div>
			
			<div>
				<br/>
				<br/>
				<label>*Mật khẩu</label> 
				<input type="password" name="password" id="password">
				<form:errors path="password"/>
			</div>
			<button class="btn btn-info btn-lg">Đăng nhâp</button>
		</form:form>
	</div>
	<!-- END REGISTER FORM-->
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

