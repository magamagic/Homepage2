<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>member</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
</head>
<script>
function chkid(result){
	if(result==true){
	opener.document.newMember.id.value="${memberId}"; //id를  세팅하고
	opener.document.newMember.id.readOnly=true;//수정불가한 readonly로 바꾸고
	opener.document.newMember.password.focus();//focus를 password에 지정
	opener.document.newMember.checkidID.value="1";
	}else{
		opener.document.newMember.id.value="";//id를 다시 입력할수 있도록 기존 id를 삭제하고
		opener.document.newMember.id.focus();//focus를 id에 둔다
	}
	self.close();//자신을 닫는다.
}
</script>
<body>
  
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">회원id중복결과</h5>
      </div>
      <div class="modal-body">
        <c:if test="${checkIdResult==true }">
         <h4 class="alert alert-success" role="alert">${memberId}는 사용가능한 아이디 입니다.</h4>
        </c:if>
        <c:if test="${checkIdResult==false }">
          <h4 class="alert alert-danger" role="alert">${memberId}는 중복이라 사용불가한  아이디 입니다.</h4> 
        </c:if>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary"  onclick="chkid(${checkIdResult})">Close</button>
      </div>
    </div>
 

</body>
</html>