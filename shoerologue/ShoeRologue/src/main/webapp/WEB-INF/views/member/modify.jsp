<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>modify페이지</h3>
	
	<form action="/Member/modify.do" method="post">
		이름 : <input type="text" name="name">
		<br><br>
		나이 : <input type="text" name="age">
		<br><br>
		주소 : <input type="text" name="addr">
		<br><br>
		<button>저장</button>
	</form>
	
</body>
</html>