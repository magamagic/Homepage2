<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<body>
	<!-- menu include부분 -->
<jsp:include page="menu.jsp"></jsp:include>
<div style="margin-bottom: 18%; margin-top: 10px;">

	<!-- menu include부분 끝 -->
	<!-- 본문 -->
	<div class="container">
		<div class="text-center">
			<h1 style="font-weight: bolder;">구매자 견적 요청 현황</h1>
		</div>
		<!-- 견적 현황 list출력 부분(게시판 응용) -->
		<div class="container">
			<form action="#" method="post">
				<div class="text-right">
					<span class="badge badge-success">전체 ${request_list}건</span>
				</div>
				<div style="padding-top: 50px;">
					<table class="table table-hover">
						<tr>
							<th>번호</th>
							<th>물품 명</th>
							<th>참고 URL</th>
							<th>E-Mail</th>
							<th>이름</th>
							<th>연락처(핸드폰)</th>
							<th>관리자 메모</th>
							<th>구매 여부</th>
						</tr>
						<!-- list출력 -->
						<!-- list출력 끝 -->
					</table>
				</div>
				<!-- 페이지 네비게이션 -->
				<div align="center">
					<nav aria-label="...">
						<ul class="pagination">
							<li class="page-item disabled"><a class="page-link" href="#"
								tabindex="-1" aria-disabled="true">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</nav>
				</div>
				<!-- 페이지 네비게이션 끝 -->
				<!-- list내 검색 기능 -->
				<div align="center">
					<table>
						<tr>
							<td class="input-group"><select name="items"
								class="input-group-text">
									<option>물품 명</option>
									<option>URL</option>
									<option>E-Mail</option>
							</select>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="serch" name="text" class="input-group-text">&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" id="btnAdd" class="btn btn-info" value="검색"></td>
						</tr>
					</table>
				</div>
				<!-- list내 검색 기능 끝 -->
				<hr>
			</form>
		</div>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<div class= "jumbotron" style="background-color: goldenrod;">
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</head>
</html>