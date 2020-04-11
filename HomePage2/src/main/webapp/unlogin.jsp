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
		<h1 class="display-2" align="center" style="font-weight: bolder; color: goldenrod">비회원 · 구매 대행</h1>
	</div>
<div class="col-md-11" style="margin-top:80px;">
<form role="form" >
	<div class="form-group row" >
		<label class="col-md-2"></label> 
		<div class="col-md-3">
			<input style="height:60px; " class="form-control" type="text" name="pname[]" placeholder="물품명을 입력해주세요." required>
		</div>
		<div class="col-md-3">
			<input style="height:60px;" class="form-control" type="text" name="serial[]" placeholder="참고 URL(선택)을 입력해주세요.">
		</div>
		<div class="col-md-3">
			<input style="height:60px;" class="form-control" type="text" name="email[]" placeholder="E-mail을 입력해주세요.">
		</div> 
</div>
</div>	
</form>
<div class="submit"  align="center" style="margin-top:30px;">
		<button type="submit" class="btn btn-dark btn-lg">견적요청</button>
</div>
</div>

<div class= "jumbotron" style="background-color: goldenrod;">
	<jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>
