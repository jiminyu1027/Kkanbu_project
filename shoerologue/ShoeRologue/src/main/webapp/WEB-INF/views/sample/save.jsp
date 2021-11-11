<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>springtest 테이블 데이터 추가 화면</h2>
	<form action="save.do" method="post">	 <!-- 저장버튼을 누르면 어디로 이동할건지?! -->
		제목 : <input type="text" name="stitle">	<br><br>	<!-- name은 samplevo에 적힌 이름으로 -->
		작성자 :	<input type="text" name="swriter">	<br><br>
		내용 : 	<textarea name="scontents"></textarea><br><br>
		<input type="submit" value="등록">
	</form>

</body>
</html>