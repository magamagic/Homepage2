<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script>
	
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
							style="font-weight: bolder; color: black">비밀번호 변경</h2>
					</div>

					<!-- <div style="margin-bottom: 18%;">  -->
					<div class="real-cont">
						<!--// content -->
						<div class="container login-container">
							<div class="row">

								<div class="col-md-6 login-form-2">
									<h3>비밀번호 변경</h3>
									<form action="changePwd.do" method="post" id='changePwdFrm'>
										<div class="form-group">
											<input type="hidden" class="form-control" name="id"
												value='${member.id}' />
										</div>
										<div class="form-group">
											<input type="password" class="form-control" name="password"
												required />
										</div>
										<div class="form-group">
											<input type="password" class="form-control"
												name="password_confirm" required />
										</div>
										<div class="form-group">
											<input type="submit" class="btnSubmit" id="chgPwd"
												value="비밀번호변경" />
										</div>
										<div class="form-group">
											<a href="login.do" class="ForgetPwd" value="Login">로그인</a>
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