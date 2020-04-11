<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="total_record" value="${total_record}" />
<html>
<head>
<script>
function sendMail(seq){
	location.href="sendMail.do?seq="+seq;
}
</script>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<body>
	<!-- menu include부분 -->
	<jsp:include page="menu.jsp"/>
	<!-- menu include부분 끝 -->
	<!-- 본문 -->
	<div class="container-fluid">
		<div class="text-center">
			<h1 style="font-weight: bolder;">구매자 견적 요청 현황</h1>
		</div>
		<!-- 견적 현황 list출력 부분(게시판 응용) -->
		<div class="container-fluid"> <!-- 수정부분 #1 -->
			<form action="getEstimationList.do" method="post">
				<div class="table-reponsive"> <!-- 수정부분 #2 -->
					<table class="table table-hover" style="font-size: 13px; border-collapse: separate; text-align: center;">
						<tr>
							<th>번호</th>
							<th>물품 명</th>
							<th>참고 URL</th>
							<th>E-Mail</th>
							<th>ID</th>
							<th>이름</th>
							<th>연락처</th>
							<th>배송받을 곳</th>
							<th>관리자 메모</th>
							<th>견적 요청 날짜</th>
							<th>구매 여부</th>
							<th>메일 전송</th>
						</tr>
						<!-- list출력 -->
						<c:forEach items="${estimationList}" var="estimation">
							<tr>
								<td><a href="estimationdetail.do?seq=${estimation.seq}">${estimation.seq}</td>
								<td>${estimation.product}</td>
								<td><a href="${estimation.url}">url</a></td>
								<td>${estimation.email}</td>
								<td>${estimation.id}</td>
								<td>${estimation.name}</td>
								<td>${estimation.phone}</td>
								<td>${estimation.shipping_address}</td>
								<td>${estimation.memo}</td>
								<td>${estimation.regDate}</td>
								<td>${estimation.purchase}</td>
								<td><button type="button" onclick="sendMail(${estimation.seq})">메일전송</button></td>
							</tr>
						</c:forEach>
						<!-- list출력 끝 -->
					</table>
				</div>
				<!-- 페이지 네비게이션 -->
				<div align="center">
					<nav aria-label="...">
						<ul class="pagination">


						  <c:if test="${current <= 1}">
							<li class="page-item disabled"><a class="page-link" href="#" aria-disabled="true">Previous</a></li>
					     </c:if>
					     <c:if test="${current  > 1}">
							<li class="page-item"><a class="page-link" href="getEstimationList.do?page=${current-1}">Previous</a></li>
					     </c:if>
	
						<c:forEach  var="i"  begin="1" end="${pageCount}" >
						<c:if test="${i==current}">
							<li class="page-item active" aria-current="page" >
							                 <a class="page-link" href="getEstimationList.do?page=${i}">${i}<span class="sr-only">(${i})</span></a>
							</li>
						 </c:if>
                        
                         <c:if test="${i!=current}">
							<li class="page-item inactive" aria-current="page" >
							                 <a class="page-link" href="getEstimationList.do?page=${i}">${i}</a>
							</li>
						 </c:if>
                        
                        
                        </c:forEach>
                        
						  <c:if test="${current>=(pageCount)}">
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
					     </c:if>
					     <c:if test="${current <(pageCount)}">
							<li class="page-item"><a class="page-link" href="getEstimationList.do?page=${current+1}">Next</a></li>
					     </c:if>
						</ul>
					</nav>
				</div>
				<!-- 페이지 네비게이션 끝 -->
				<!-- list내 검색 기능
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
				list내 검색 기능 끝 -->
				<hr>
			</form>
		</div>
	</div>
</body>
</head>
</html>