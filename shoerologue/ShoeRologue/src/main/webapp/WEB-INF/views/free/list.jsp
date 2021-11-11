<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String testData = (String)request.getAttribute("test1");

	String url = (String)request.getAttribute("url");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	가상경로 Free/list.do로 보여지는 화면입니다
	||
	<%=testData %>
	<br>
	</div>
	<b>list 페이지</b>
	<br>
	<a href="view.do">view 페이지</a><br>
	<%=url %>
	
</body>
</html>