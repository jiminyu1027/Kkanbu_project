<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.study.vo.*" %>
<%
	ArrayList<String> list = (ArrayList<String>)request.getAttribute("list");
	ArrayList<BoardVO> blist = (ArrayList<BoardVO>)request.getAttribute("blist");
%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Board/list.do 로 보여지는 화면입니다
	<div>
	<%
		for(int i=0; i<list.size();i++){
			String value = list.get(i);
	%>
		<%=value %> 
	<%
		}
	
		for(BoardVO vo : blist){
	%>
		<br><a href="view.do?bidx=<%=vo.getBidx()%>"><%=vo.getSubject() %></a>
	<%
	
		}
	
	%>
	
	<!-- 
		위 각 게시글의 제목 링크를 클릭하면 view.do로 이동하고 
		view.do 에서는 클릭한 제목에 해당하는 게시글의 데이터를 상세조회한 결과를 출력해준다
	 -->
	</div>
	
	<a href="view.do">상세보기 가기</a>
</body>
</html>