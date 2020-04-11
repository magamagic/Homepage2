<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand  navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<c:choose>
				<c:when test="${empty member.id}">
					<a class="navbar-brand" href="welcome.jsp">홈</a>
					<a class="navbar-brand" href="comeCo.jsp">찾아오시는길</a>
					<a class="navbar-brand" href="introduction.jsp">회사소개</a>
				</c:when>
				<c:when test="${member.entry_role==null}">
					<a class="navbar-brand" href="main.jsp">구매대행 요청</a>
					<a class="navbar-brand" href="updateMember.do">회원정보수정</a>
					<a class="navbar-brand" href="getMemberEstimationList.do">진행현황</a>
					<a class="navbar-brand" href="comeCo.jsp">찾아오시는길</a>

					<ul class="navbar-nav mr-auto">
						<li style="padding-top: 7px; color: white;"></li>
						<li class="nav-item"><a class="nav-link" href="logout.do">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link"
							href="deleteMember.do">회원탈퇴</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<a class="navbar-brand" href="getEstimationList.do">관리자용 진행현황</a>
					<ul class="navbar-nav mr-auto">
						<li style="padding-top: 7px; color: white;"></li>
						<li class="nav-item"><a class="nav-link" href="logout.do">로그아웃</a></li>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</nav>
