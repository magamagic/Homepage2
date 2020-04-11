<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>ID, PASSWORD 찾기</title>
<style type="text/css">


 .e {
        border:1px ridge #000000 ;
      }
      </style>
</head>
<body>
<style>
.real-cont{
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-left: 275px;
}
</style>
<jsp:include page="menu.jsp"></jsp:include>
<div style="margin-bottom: 18%; margin-top: 10px;">
	<div class="overlay"></div>
<div id="container" align="center">
	<div class="content">
		<div class="contain">
<div class="container">
<h2 class="display-2" align="center" style="font-weight: bolder; color: black">회원 로그인</h2>
</div>
		
<!-- <div style="margin-bottom: 18%;">  -->
		<div class="real-cont" >		
			<!--// content --> 
			<div class="container login-container" >
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <h3>로그인</h3>
                    <form action="login.do" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="ID *" value=""  name="id"/>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password *" value=""  name="password"/>
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btnSubmit" value="로그인" />
                        </div>
                        <div class="form-group">
                            <a href="FindingMember.jsp" class="ForgetPwd">아이디/비밀번호 찾기</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</div>
<div class= "jumbotron" style="background-color: goldenrod;">
	<jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>