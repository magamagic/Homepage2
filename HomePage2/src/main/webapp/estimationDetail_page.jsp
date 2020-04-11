<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
function writeMemo(seq,obj){
	window.open('memo.jsp?seq='+seq+'&content='+obj.value);
}
</script>
<script>
function selchange(value){
	if(confirm("확정하시겠습니까?")){
		location.href="/estimationConfirm.do?seq="+${estimation.seq}+"&purchase="+value;
	}
	
}

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<body>
<!-- menu include부분 -->
	<jsp:include page="menu.jsp"/>
	<!-- menu include부분 끝 -->
	<!-- 본문 -->
	<div class="container">
		<div class="text-center">
			<h1 style="font-weight: bolder;">구매자 견적 요청 세부 현황</h1>
	</div>
		<!-- 견적 현황 단건 출력 부분(게시판 응용) -->
		<div class="container">
		<div style="padding-top: 50px;">
     <c:set value="${estimation}" var="estimation"/>
     <table class="table table-hover" style="font-size: 13px">
    <tr>
	<th>번호</th>    <td>${estimation.seq}</td>
	</tr>
	<tr>
	<th>물품 명</th>  <td>${estimation.product}</td>
	</tr>
	<tr>
	<th>참고 URL</th> <td>${estimation.url}</td>
	</tr>
	<tr>
	<th>E-Mail</th> <td>${estimation.email}</td>
	</tr>
	<tr>
	<th>ID</th>     <td>${estimation.id}</td>
	</tr>
	<tr>
	<th>이름</th>    <td>${estimation.name}</td>
	</tr>
	<tr>
	<th>연락처</th>   <td>${estimation.phone}</td>
	</tr>
	<tr>
	<th>배송받을 곳</th><td>${estimation.shipping_address}</td>
	</tr>
	<tr>
	<th>관리자 메모</th><td><textarea onclick="writeMemo(${estimation.seq},this)">${estimation.memo}</textarea></td>
	</tr>
	<tr>
	<th>견적 요청 날짜</th><td>${estimation.regDate}</td>
	</tr>
	<tr>
	<th>구매 여부</th>
	<td>
	<select  name="purchaseGb" onchange="selchange(this.value)" id="purchaseGb">
	<option value="Y" <c:if test="${estimation.purchase=='Y'}">selected</c:if>>Y</option>
	<option value="N" <c:if test="${estimation.purchase=='N'}">selected</c:if>>N</option>
	</select>
	</td>
	</tr>
	<tr>
	<td colspan=2><a href="getEstimationList.do">진행현황</a></td>
	</tr>
	</table>
	</div>
	</div>
	</div>
	
	
</body>
</html>