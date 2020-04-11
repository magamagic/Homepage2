<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원탈퇴</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">회원탈퇴</h3>
			
			<form class="form-signin" action="j_security_check" method="post">
				
					<div class="form-group">
					아이디<label for="inputId" class="sr-only">아이디</label> 
					<input	type="text" class="form-control" placeholder="Id" name='id' required>
				</div>
				
				
				<div class="form-group">
					비밀번호<label for="inputPassword" class="sr-only">비밀번호</label> 
					<input	type="password" class="form-control" placeholder="Password" name='j_password' required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">탈퇴</button>
			</form>
		</div>
	</div>
</body>





</body>
</html>