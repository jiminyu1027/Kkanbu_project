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
	<b>view 페이지</b>
	<br>
	<%=url %>
	<br>	
	<a href="modify.do">modify 페이지</a>
</body>
</html>