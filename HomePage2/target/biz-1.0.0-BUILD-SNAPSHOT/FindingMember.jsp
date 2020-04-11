<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script>
	$().ready(function() {
		$('#findId').click(function() {
			$('#findingIdFrm').submit();
		});
		$('#findPwd').click(function() {
			$('#findingPwdFrm').submit();
		});
	});
</script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>ID, PASSWORD 찾기</title>
<style type="text/css">
.e {
	border: 1px ridge #000000;
}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div style="margin-bottom: 18%; margin-top: 10px;">
		<div class="overlay"></div>
		<div id="container" align="center">
			<div class="content">
				<div class="contain">
					<div class="container">
						<h2 class="display-2" align="center"
							style="font-weight: bolder; color: black">아이디· 비밀번호 찾기</h2>
					</div>

					<!-- <div style="margin-bottom: 18%;">  -->
					<div class="real-cont">
						<!--// content -->
						<div class="container login-container">
							<div class="row">
								<div class="col-md-6 login-form-1">
									<h3>아이디 찾기</h3>
									<form action="findingId.do" method="post" id='findingIdFrm'>
										<div class="form-group">
											<input type="text" class="form-control" placeholder="이름*"
												name="name" required />
										</div>
										<div class="form-group">
											<input type="text" class="form-control" placeholder="전화번호 *"
												name="phone" required />
										</div>
										<div class="form-group">
											<input type="submit" class="btnSubmit" id="findId"
												value="아이디찾기" />
										</div>
									</form>
								</div>
								<div class="col-md-6 login-form-2">
									<h3>비밀번호 찾기</h3>
									<form action="findingPwd.do" method="post" id='findingPwdFrm'>
										<div class="form-group">
											<input type="text" class="form-control" placeholder="이름 *"
												name="name" required />
										</div>
										<div class="form-group">
											<input type="text" class="form-control" placeholder="ID *"
												name="id" required />
										</div>
										<div class="form-group">
											<input type="submit" class="btnSubmit" id="findPwd"
												value="비밀번호찾기" />
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="jumbotron" style="background-color: goldenrod;">
						<jsp:include page="footer.jsp"></jsp:include>
					</div>
					<script>
						
					</script>
</body>
</html>