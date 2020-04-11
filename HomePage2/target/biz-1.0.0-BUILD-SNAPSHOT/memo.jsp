<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% String seq = request.getParameter("seq");
   String content = request.getParameter("content");
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="insertEstimationMemo.do">
 <input type="hidden" name="seq" value="<%=seq%>">
 <textarea rows="5" cols="30" name="memo"><%=content%></textarea>
 <br>
 <input type="submit" value="등록">
 <input type="reset" value="취소">
 </form>
 
 
 
 
</body>
</html>