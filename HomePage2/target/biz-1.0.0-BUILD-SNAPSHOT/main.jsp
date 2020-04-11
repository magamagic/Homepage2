<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 목록</title>
</head>
<body>
	<!-- <script>
	function call() {
		
	}
</script> -->
	<script>
		function confirm() {
			var frm = document.getElementById('frm');
			if (document.getElementById("zipcode").value
					&& document.getElementById("address").value
					&& document.getElementById("detailaddress").value
					&& document.getElementById("extraaddress").value) {
				document.getElementById('Shipping_address').value = document
						.getElementById('zipcode').value
						+ "/"
						+ document.getElementById('address').value
						+ "/"
						+ document.getElementById('detailaddress').value
						+ "/"
						+ document.getElementById('extraaddress').value
			}
			frm.action = "/insertEstimation.do";
			frm.method = "post";
			frm.submit();
		}
	</script>

	<jsp:include page="menu.jsp"></jsp:include>
	<div style="margin-bottom: 18%; margin-top: 10px;">
		<div class="container">
			<h1 class="display-2" align="center"
				style="font-weight: bolder; color: goldenrod">해외 직구 · 구매 대행</h1>
		</div>
		<div class="col-md-11" style="margin-top: 80px;">
			<form role="form" name="frm" id="frm">
				<div class="form-group row">
					<label class="col-md-2"></label>
					<div class="col-md-3">
						<input type="hidden" class="form-control" name="id"
							value='${member.id}' />
					</div>
					<div class="col-md-3">
						<input type="hidden" class="form-control" name="name"
							value='${member.name}' />
					</div>
					<div class="col-md-3">
						<input type="hidden" class="form-control" name="phone"
							value='${member.phone}' />
					</div>
					<div class="col-md-3">
						<input type="hidden" class="form-control" id="zipcode"
							value='${member.zipcode}' /> <input type="hidden"
							class="form-control" id="address" value='${member.address}' />
						<input type="hidden" class="form-control" id="detailaddress"
							value='${member.detailaddress}' /> <input type="hidden"
							class="form-control" id="extraaddress"
							value='${member.extraaddress}' /> <input type="hidden"
							class="form-control" name="Shipping_address"
							id="Shipping_address" />
					</div>
					<div class="col-md-3">
						<input style="height: 60px;" class="form-control" type="text"
							name="product" placeholder="물품명을 입력해주세요." required>
					</div>
					<div class="col-md-3">
						<input style="height: 60px;" class="form-control" type="text"
							name="url" placeholder="참고 URL(선택)을 입력해주세요.">
					</div>
					<div class="col-md-3">
						<input style="height: 60px;" class="form-control" type="text"
							name="email" placeholder="E-mail을 입력해주세요.">
					</div>
				</div>
		</div>
		</form>
		<div class="submit" align="center" style="margin-top: 30px;">
			<button type="submit" class="btn btn-dark btn-lg" onclick="confirm()">견적요청</button>
		</div>
	</div>

	<div class="jumbotron" style="background-color: goldenrod;">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>
