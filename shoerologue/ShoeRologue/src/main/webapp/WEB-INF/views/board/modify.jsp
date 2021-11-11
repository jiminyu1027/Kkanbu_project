<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="edu.study.vo.*" %>
<% BoardVO vo = (BoardVO)request.getAttribute("vo"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>modify 페이지</h3>
	<form action="/Board/modify.do" method="post">
		<input type="hidden" name="bidx" value="<%=vo.getBidx()%>">
		글제목 : <input type="text" name="subject" value="<%=vo.getSubject() %>">
		<br><br>
		작성자 : <input type="text" name="writer" value="<%=vo.getWriter() %>"> 
		<br><br>
		글 내용 : <textarea name="contents"><%=vo.getContents() %></textarea>
		<br><br>
		<button>저장</button>
	</form>
</body>
</html>