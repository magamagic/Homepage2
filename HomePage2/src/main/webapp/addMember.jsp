<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력해주세요");
			return false;
		}
		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요");
			return false;
		}
		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요");
			return false;
		}
		if (!document.newMember.name.value) {
			alert("이름을 입력해주세요");
			return false;
		}
		if (!document.newMember.gender.value) {
			alert("성별을 입력해주세요");
			return false;
		}
		if (document.newMember.checkedID.value != "1") {
			alert("ID 중복체크를 하세요");
			return false;
		}

	}
</script>

<script>
	function call() {
		if (document.getElementById("mail1").value
				&& document.getElementById("mail2").value) {
			document.getElementById('mail').value = document
					.getElementById('mail1').value
					+ "@" + document.getElementById('mail2').value
		}

		if (document.getElementById("phone1").value
				&& document.getElementById("phone2").value
				&& document.getElementById("phone3").value) {
			document.getElementById('phone').value = document
					.getElementById('phone1').value
					+ document.getElementById("phone2").value
					+ document.getElementById('phone3').value
		}

	}
</script>

<script>
	function numkeyCheck(e) {
		var keyValue = event.keyCode;
		if (((keyValue >= 48) && (keyValue <= 57)))
			return true;
		else
			return false;
	}
</script>

<script>
	function checkId() {
		var id = document.newMember.id.value;
		var checkidID = document.newMember.checkidID.value;
		if (id == null || id.length == 0) {
			alert("id를 입력하세요");
			document.newMember.id.focus();
			return false;
		} else {
			window.open("checkIdDoubleOrNot.do?id=" + id + "&checkidID="+ checkidID, "id 체크","width=600,height=300");
		}
	}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<script src="./resources/js/jquery.js"></script>
</head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<body>

	<jsp:include page="menu.jsp"></jsp:include>
	<div style="margin-bottom: 18%; margin-top: 10px;">
		<div class="container">
			<br>
			<h1 style="font-weight: bold;">회원가입</h1>
			<br>

			<div class="container">

				<form action="addMember.do" name="newMember" method="post"
					class="form-horizontal" onsubmit="return checkForm()">
					<div class="form-group row">
						<label class="col-sm-2">아이디</label>
						<div class="col-sm-3">
							<input type="text" name="id" class="form-control"
								placeholder="id" autofocus> <input type="hidden"
								name="checkidID" id="checkedID" value="0">
							<button type="button" class="btn btn-info" onclick="checkId()">check</button>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">비밀번호</label>
						<div class="col-sm-3">
							<input type="password" name="password" class="form-control"
								placeholder="password">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">비밀번호확인</label>
						<div class="col-sm-3">
							<input type="password" name="password_confirm"
								class="form-control" placeholder="password confirm">
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">성 명</label>
						<div class="col-sm-3">
							<input type="text" name="name" class="form-control"
								placeholder="name">
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">성별</label>
						<div class="col-sm-10">
							<input type="radio" name="gender" value="남" checked="checked">남
							<input type="radio" name="gender" value="여">여
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">생년월일</label>
						<div class="col-sm-4">

							<input type="date" name="birth" id="birth">


						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">이메일</label>

						<div class="col-sm-10">
							<input type="text" name="mail1" id="mail1" maxlength="50"
								onkeyup='call()'>@ <select name="mail2" id="mail2"
								onmousedown='call()'>
								<option>naver.com</option>
								<option>daum.net</option>
								<option>gmail.com</option>
								<option>nate.com</option>
							</select>
						</div>
						<input type="hidden" name="mail" id="mail">

					</div>

					<div class="form-group row">
						<label class="col-sm-2">전화번호</label>

						<div class="input-group triple-input">
							<input type="text" name="phone1" id="phone1" class="form-control"
								maxlength="3" onKeyPress="return numkeyCheck(event)"
								onkeyup='call()' style="width: 3px">&nbsp;&nbsp;-&nbsp;&nbsp;
							<input type="text" name="phone2" id="phone2" class="form-control"
								maxlength="4" onKeyPress="return numkeyCheck(event)"
								onkeyup='call()'>&nbsp;&nbsp;-&nbsp; &nbsp; <input
								type="text" name="phone3" id="phone3" class="form-control"
								maxlength="4" onKeyPress="return numkeyCheck(event)"
								onkeyup='call()'>
						</div>
						<input type="hidden" name="phone" id="phone" maxlength="12">

					</div>

					<div class="form-group row">
						<label class="col-sm-2">우편번호</label>
						<div class="col-sm-5">
							<input type="text" name="zipcode" id="zipcode"
								class="form-control" placeholder="zipcode"><a
								href="javascript:execDaumPostcode()" class="btn btn-secondary"
								role="button"> 우편번호 &raquo;</a>
						</div>
					</div>



					<div class="form-group row">
						<label class="col-sm-2">주소</label>
						<div class="col-sm-5">
							<input type="text" name="address" id="address"
								class="form-control" placeholder="address">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상세주소</label>
						<div class="col-sm-5">
							<input type="text" name="detailaddress" id="detailaddress"
								class="form-control" placeholder="address">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">참고</label>
						<div class="col-sm-5">
							<input type="text" name="extraaddress" id="extraaddress"
								class="form-control" placeholder="address">
						</div>
					</div>
					<!-- <input type="hidden" value="1" name="entry_role" id="entry_role"> -->
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn btn-primary" value="등록">
							<input type="reset" class="btn btn-primary" value="취소">
						</div>
					</div>

				</form>
			</div>
			<div class="jumbotron" style="background-color: goldenrod;">
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
</body>
</html>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
					// 조합된 참고항목을 해당 필드에 넣는다.
					document.getElementById("extraaddress").value = extraAddr;

				} else {
					document.getElementById("extraaddress").value = '';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('zipcode').value = data.zonecode;
				document.getElementById("address").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("detailaddress").focus();
			}
		}).open();
	}
</script>
