<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 목록</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div style="margin-bottom: 18%; margin-top: 10px;">
<div class="container">	
		<h1 class="display-2" align="center" style="font-weight: bolder; color: goldenrod">찾아오시는 길</h1>
	</div>
<div align="center">
<img alt="map" src="./resources/images/map.png" style="width:900px; height: 500px; padding: 5px;">
</div>
<br>
<p align="center">서울특별시 강남구 역삼동 테헤란로7길 7</p>

<div class= "jumbotron" style="background-color: goldenrod;">
	<jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>
