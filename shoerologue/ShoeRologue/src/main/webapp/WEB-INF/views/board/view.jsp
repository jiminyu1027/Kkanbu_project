<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.study.vo.*" %>
<% BoardVO vo = (BoardVO)request.getAttribute("vo"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	상세보기 페이지<br>
	<a href="modify.do?bidx=<%=vo.getBidx()%>">modify 페이지</a><br>
	<form action="/Board/list.do?bidx=<%=vo.getBidx() %>" method="post">
	<table border=1 style="width:600px">
		<tr>
			<td width="100">제목</td>
			<td><%=vo.getSubject() %></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><%=vo.getContents() %></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><%=vo.getWriter() %></td>
		</tr>
	</table>
	<button>삭제</button>
	</form>
	
</body>
</html>