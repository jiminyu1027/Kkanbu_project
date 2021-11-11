<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery-3.6.0.min.js"></script>
<script>
	function ajax1fn(){
		$.ajax({
			url:"/ajax/ajaxlist.do",
			type:"get",
			data:"sampleData=testData",
			success:function(data){
				$("#result").text(data);
			},
			error: function(){
				alert("실행오류");
			}
		});
		
	}
	function ajax2fn(){
		var value=$("#test").val();
		$.ajax({
			url:"/ajax/test.do",
			type:"get",
			data:"param="+value,
			success:function(data){
				$("#result").text(data);
			},
			error: function(){
				alert("실행오류");
			}
		});
	}
	
	function listFn(){
		$.ajax({
			url:"/ajax/alllist.do",
			type:"get",
			contentType:"application/json",
			success:function(data){
				var str = "";
				str += "<table border='1'>";
				str += "<tr>";
				str += "	<th>제목</th>";
				str += "	<th>작성자</th>";
				str += "	<th>등록일</th>";
				str += "</tr>";
				for(var i=0; i<data.length; i++){
					var item = data[i];
					str += "<tr>";
					str += "	<td><a href='javascript:view("+item.sidx+")'>"+item.stitle+"</a></td>";
					str += "	<td>"+item.swriter+"</td>";
					str += "	<td>"+item.sdate+"</td>";
					str += "</tr>";	
				}
				str += "</table>";
				$("#list").html(str);
				
			},
			error: function(){
				alert("실행오류");
			}
		});
	}
	
	function view(idx){
		//테이블에서 제목을 클릭하면 각각의 행에 해당하는 게시글의 인자값으로 sidx가 매개변수 idx로 넘어옵니다
		//이 idx를 사용하여 ajax 통신으로 springtest 테이블의 게시글 상세조회를 하고 
		//데이터를 id="detail" 영역에 출력해주세요
		$.ajax({
			url:"/ajax/detail.do",
			type:"get",
			contentType:"application/json",
			data:"sidx="+idx,
			success:function(data){
				var str = "";
				str += "<table border='1'>";
				str += "<tr>";
				str += "	<th>제목</th>";
				str += "	<th>작성자</th>";
				str += "	<th>내용</th>";
				str += "</tr>";
					str += "<tr>";
					str += "	<td>"+data.stitle+"</td>";
					str += "	<td>"+data.swriter+"</td>";
					str += "	<td>"+data.scontents+"</td>";
					str += "</tr>";
				
				str += "</table>";
				
				$("#detail").html(str);
				
			},
			error: function(){
				alert("실행오류");
			}
			
		});
	}
	
</script>
</head>
<body>
	<h2>springtest 테이블 데이터 목록 ajax로 가져오기</h2>
	<button onclick="listFn()">call list</button>
	<div id="list">
	</div>
	
	<h3>상세 조회 영역</h3>
	<div id="detail">
	
	</div>
	
	<hr>
	<button onclick="ajax1fn()">ajax1</button><br>
	<input type="text" id="test">
	<button onclick="ajax2fn()">ajax2</button>
	<div id="result">
		ajax2 버튼 클릭시 id="test" 양식에 있는 값을 ajax를 사용하여 
		/ajax/test.do 경로로 보낸뒤 다시 응답 데이터로 얻어와 이 영역에 출력합니다
	</div>
</body>
</html>