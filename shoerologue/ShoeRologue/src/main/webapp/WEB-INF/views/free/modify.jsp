<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String url = (String)request.getAttribute("url");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b>modify 페이지</b><br>
	<%=url %>
	
	<form action="/Free/modify.do" method="post">
		제목 : <input type="text" name="t1">
		<br><br>
		내용 : <textarea name="t2"></textarea>
		<br><br>
		testField : <input type="text" name="testField">
		<br><br>
		<button>저장</button>
	</form>
</body>
</html>