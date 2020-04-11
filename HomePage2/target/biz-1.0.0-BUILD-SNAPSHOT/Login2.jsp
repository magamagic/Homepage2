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
	margin-top: 200px;
}
</style>
<jsp:include page="menu.jsp"></jsp:include>
<div style="margin-bottom: 18%; margin-top: 10px;">
	<div class="overlay"></div>
<div id="container" align="center">
	<div class="content">
		<div class="contain">

		
<!-- <div style="margin-bottom: 18%;">  -->
		<div class="real-cont" >		
			<!--// content --> 
			<div class="container login-container" >
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <h3>관리자로그인</h3>
                    <form action="adminlogin.do" name="adminlogin" id="adminlogin" method="post">
                        <div class="form-group">
                            <input type="text" name="id" class="form-control" placeholder="ID *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" placeholder="Password *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btnSubmit" value="로그인" />
                        </div>
                        <div class="form-group">
                            <a href="#" class="ForgetPwd"></a>
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