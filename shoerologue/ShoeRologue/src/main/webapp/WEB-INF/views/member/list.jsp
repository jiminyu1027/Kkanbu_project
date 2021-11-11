<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="edu.study.vo.MemberVO" %> 
<%
	ArrayList<MemberVO> alist = (ArrayList<MemberVO>)request.getAttribute("alist");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>list페이지</h3>
	<a href="view.do">view페이지로 이동</a><br>
	
	<form action="/Member/list.do" method="post">
	<%
		for(MemberVO vo : alist){
	%>
		<%=vo.getName() %> <br>
		<%=vo.getAge() %> <br>
		<%=vo.getAddr() %> <br><br>
	<%
		}
	%>
	</form>
</body>
</html>