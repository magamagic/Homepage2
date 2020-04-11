<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 목록</title>
</head>
<body>
	<style>
.myButton1 {
	box-shadow: 0px 0px 0px 0px #fff6af;
	background-color: #daa520;
	border-radius: 16px;
	display: inline-block;
	cursor: pointer;
	color: #333333;
	font-family: Verdana;
	font-size: 24px;
	font-weight: bold;
	padding: 70px 75px;
	text-decoration: none;
}

.myButton1:hover {
	background-color: #f4d258;
	color: #4b515d;
}

.myButton1:active {
	position: relative;
	top: 1px;
}
</style>
	<style>
.myButton2 {
	box-shadow: 0px 0px 0px 0px #fff6af;
	background-color: #333333;
	border-radius: 16px;
	display: inline-block;
	cursor: pointer;
	color: #f4d258;
	font-family: Verdana;
	font-size: 24px;
	font-weight: bold;
	padding: 70px 75px;
	text-decoration: none;
}

.myButton2:hover {
	background-color: #4b515d;
	color: #ffd400;
}

.myButton2:active {
	position: relative;
	top: 1px;
}

.submit {
	margin-left: 200px;
	margin-bottom: 100px;
}
</style>

	<jsp:include page="menu.jsp"/>
	<div style="margin-bottom: 18%; margin-top: 10px;">
		<div class="container">
			<h1 class="display-2" align="center"
				style="font-weight: bolder; color: black">해외 직구 · 구매 대행</h1>
		</div>
		<div class="col-md-11" style="margin-top: 80px;">

			<div class="submit" align="center" style="margin-top: 30px;">
				<a href="login.jsp" class="myButton1">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Login2.jsp" class="myButton2">관리자로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="addMember.jsp" class="myButton1">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="FindingMember.jsp" class="myButton2">회원찾기</a> <br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
			</div>
		</div>

		<div class="jumbotron" style="background-color: goldenrod;">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
</body>
</html>
