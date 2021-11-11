<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="edu.study.vo.*" %>
<%
	SampleVO vo = (SampleVO)request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="modify.do?sidx=<%=vo.getSidx() %>" method="post">
		<table border="1">
					<tr>
						<th>제목</th>
						<td colspan="3"><input type="text" name="stitle" value ="<%=vo.getStitle() %>"></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text" name="swriter" value ="<%=vo.getSwriter() %>"></td>
						<th>등록일</th>
						<td><%=vo.getSdate() %></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3"><textarea name="scontents"><%=vo.getScontents() %></textarea></td>
					</tr>
				</table>
				<button>저장</button>
		</form>	
</body>
</html>