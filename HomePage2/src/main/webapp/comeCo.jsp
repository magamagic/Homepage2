<!-- WebMarket 지도 작업(모승환) -->
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>WebMarket Co</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">찾아 오시는 길</h1>
	</div>
</div>
<div id="map" style="width: 500px; height: 500px;" class="container"></div>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=61e7bc417dd474ef0b97f8b3722ffce9">/* 키는 서버 포트가 달라질 때마다 새로 발급받아야 정상 작동 */</script>
<script type="text/javascript">
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
	center : new kakao.maps.LatLng(37.499571, 127.030468), // 지도의 중심좌표
	level : 3// 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption);

// 마커가 표시될 위치입니다 
var markerPosition = new kakao.maps.LatLng(37.499571, 127.030468);

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
	position : markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="width:390px; height:80px; padding:5px; font-size:15px;">본사 위치<br>서울특별시 강남구 역삼동 649-5 에스코빌딩 7층 703호<br><a href="https://map.kakao.com/link/map/본사 위치,37.499571, 127.030468" style="color:red" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/WebMarket본사,37.499571, 127.030468" style="color:red" target="_blank">길찾기</a></div>'
				 // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
iwPosition = new kakao.maps.LatLng(37.499571, 127.030468); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
	position : iwPosition,
	content : iwContent
});

// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker);
</script>
<hr>
<%@ include file="footer.jsp"%>
</body>
</html>