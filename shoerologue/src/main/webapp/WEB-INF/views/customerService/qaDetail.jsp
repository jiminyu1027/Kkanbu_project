<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.study.vo.*" %>
<%
	QaVO qvo = (QaVO)request.getAttribute("qvo");

	MemberVO loginU = (MemberVO)session.getAttribute("member");
%>
<!DOCTYPE html>
<html>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 문의하기 | 슈롤로그</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

		<!-- Bootstrap Font Icon CSS 아이콘 -->
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    	<!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"> -->
	 	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/headerFooter.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/mypage.css">
		
		<style>
      @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
      *{
         font-family: 'Montserrat', "Noto Sans KR", sans-serif;
      }
		.empty-box{
			width:100%;
			height:50px;
		}
		.filter-box{
			width:150px;
			height:600px;
			margin-right:180px;
			border:1px solid black;
			border-radius:10px;
			float:left;
		}
		.filter-title{
			height:40px;
			background-color:black;
			border-radius:8px;
		}
		#filter-title{
			color:white;
			font-size:20px;
			font-style:bold;
		}
		.comNum{
			color:red;
			font-size:25px;
		}
		.main{
			color:red;
			text-decoration: underline;
			font-size:20px;
		}
		.other{
			font-size:20px;
		}
		.other:hover{
			color:red;
			text-decoration: underline;
		}
		.smft{
			color:gray;
		}
		.tsft{
			color:black;
			text-decoration: underline;
		}
		.cl-left{
			clear:left;
		}
		.card-img-top{
			width:200px;
			height:180px;
		}
		.body-box{
			width:1400px;
			margin:auto;
		}
		table{
			width:70%;
		}
		.btnFn{
			font-weight:bold;
			font-size:15px;
			margin-top:50px;
			margin-left:830px;
			left:1110px;
			width:150px;
			height:50px;
			border:2px solid gray;
		}
		.subFn{
			font-weight:bold;
			font-size:15px;
			margin-top:30px;
			margin-left:830px;
			width:150px;
			height:50px;
			border:2px solid gray;
		}
		textarea{
			resize:none; 
 			width:978px;
			height:150px;
		} 
		.commentFn{
			font-weight:bold;
			font-size:15px;
			width:150px;
			height:50px;
			margin-left:830px;
			border:1px solid black;
		}
		.commentBox{
			margin-top:50px;
			margin-left:280px;
		}
		</style>
		
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light topNav">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
	      <ul class="nav justify-content-end"> 
	      <!-- 로그인 안했을때 -->
	      <c:if test="${member == null}">
				  <li class="nav-item">
				    <a class="nav-link text-black-50 fw-bolder" href="<%=request.getContextPath()%>/login.do">로그인</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link text-black-50 fw-bolder" href="<%=request.getContextPath()%>/member/join.do">회원가입</a>
				  </li>
			</c:if>
			<!-- 로그인 했을때 -->
			<c:if test="${member != null}">
				  <li class="nav-item">
				    <a class="nav-link text-black-50 fw-bolder">${member.mName}님 환영합니다</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link text-black-50 fw-bolder" href="<%=request.getContextPath()%>/logout.do">로그아웃</a>
				  </li>
			</c:if>
			</ul>
		</nav>
	</div>
	<!-- 로고, 검색창, 마이페이지 -->
	<div class="container psts">
	  <div class="row">
	  	  <!-- 로고 -->
	      <div class="col-5 col-sm-5 col-md-4 col-lg-3 text-center d-flex px-1 logo-scroll mt-4">
              <a href="<%=request.getContextPath()%>"><img class="banner-D" src="<%=request.getContextPath()%>/resources/image/mainLogo/mainlogo.png" alt="슈롤로그 로고" width="85%"></a>
              <div class="logo-scroll3"></div>
           </div>
        <!-- 검색창 -->   
	    <div class="col-7 col-sm-7 col-md-6 col-lg-6 search">
	      <form class="d-flex">
	        <input class="form-control me-2 searchStyle" type="search" placeholder="검색어를 입력해주세요" aria-label="검색창">
	        <button class="btn btn-outline" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16" >
			  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
			</svg></button>
	      </form>
	    </div>
	     <!-- 마이페이지 찜목록 장바구니 -->
	     <div class="col-0 col-sm-0 col-md-2 col-lg-3 d-flex justify-content-center align-items-center">
			<ul class="iconul d-flex align-items-center icon-absolute">
				<li class="iconli"><a href="<%=request.getContextPath()%>/mypage/claim/myPage.do">
					<i class="bi bi-person icon"></i>
					</a>
				</li>
				<li class="iconli"><a href="<%=request.getContextPath()%>/mypage/shopping/wishlist.do">
					<i class="bi bi-heart icon"></i>
					</a>
				</li>
				<li class="iconli"><a href="<%=request.getContextPath()%>/cart/cart.do">
					<i class="bi bi-bag icon"></i>
					</a>
				</li>
			</ul>
	    </div>
	  </div>
	</div>
	<br>
	
	<!-- 메인 네비게이션 바 -->
	<div class="row menu">
		<nav class="navbar navbar-expand-lg navbar-light">
		<div class="col-0 col-sm-0 col-md-0 col-lg-2 d-sm-none d-md-block d-none"></div>
		 <div class="col-10 col-sm-8 col-md-6 col-lg-5">
			 <ul class="nav navMenu">
			 	<li class="nav-item">
				<a class="nav-link fw-bolder text-white nav-fs" href="<%=request.getContextPath()%>/category/brand.do">BRAND</a>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="<%=request.getContextPath()%>/category/gender/men.do" role="button" aria-expanded="false">MEN</a>
				    <ul class="dropdown-menu bg-white dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="<%=request.getContextPath()%>/category/gender/men.do">MEN</a></li>
				   		<li><hr class="dropdown-divider "></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/men/sneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/men/sports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/men/dressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/men/sandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/men/casual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/men/boots.do">부츠</a></li>
				    </ul>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="<%=request.getContextPath()%>/category/gender/women.do" role="button" aria-expanded="false">WOMEN</a>
				    <ul class="dropdown-menu bg-white dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="<%=request.getContextPath()%>/category/gender/women.do">WOMEN</a></li>
				   		<li><hr class="dropdown-divider"></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/women/sneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/women/sports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/women/dressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/women/sandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/women/casual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/women/boots.do">부츠</a></li>
				    </ul>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="<%=request.getContextPath()%>/category/gender/kids.do" role="button" aria-expanded="false">KIDS</a>
				    <ul class="dropdown-menu bg-white dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="<%=request.getContextPath()%>/category/gender/kids.do">KIDS</a></li>
				   		<li><hr class="dropdown-divider"></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/kids/sneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/kids/sports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/kids/dressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/kids/sandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/kids/casual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath()%>/category/gender/kids/boots.do">부츠</a></li>
				    </ul>
				</li>
			</ul>
		</div>
		 <div class="col-1 col-sm-3 col-md-6 col-lg-3 d-sm-none d-md-block d-none">
		     <ul class="navbar-nav me-auto mb-6 mb-lg-0">
		     </ul>
		 </div>
		    <div class="col-0 col-sm-0 col-md-0 col-lg-2"></div>
		</nav>
	</div>
<!-- body  -->
	<div class="body-box">
	<div style=" float: left; width: 0%;">&nbsp;</div>
	<div style=" float: left; width: 99%;" class="mt-3">
		<span style="color:#757575; font-size:1em">
			<a href="<%=request.getContextPath()%>" style="color:#757575; font-size:1.1em">
			<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-house-fill mb-1" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
			  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
			</svg>
			HOME</a> 
		> 마이페이지 > 나의 활동 > 상품Q&amp;A
		</span>
	</div>
		<!-- 좌측 마이페이지 메뉴-->
		<div style=" float: left; width: 20%;">
		<div class="myPageMenu">
			<div class="myPageTitle">
				마이페이지
			</div>
			<div class="myPageMenu2">
				<span style="font-size:1.3em; font-weight: bold;"><a href="#">나의 주문관리</a>&nbsp;<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
				  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
				</svg></span>
				<div class="myPageMenu3">
					<a href="myPage.do" class="gray">주문/배송 조회</a><br>
					<a href="orderCancel.do" class="gray">취소/교환/반품</a><br>
					<a href="insertCard.do" class="gray">카드 등록 관리</a>
				</div><br>
			</div>
			<div class="myPageMenu2">
				<span style="font-size:1.3em; font-weight: bold;"><a href="#">나의 활동</a>&nbsp;<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
				  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
				</svg></span>
				<div class="myPageMenu3">
					<a href="<%=request.getContextPath()%>/cart/cart.do" class="gray">장바구니</a><br>
					<a href="<%=request.getContextPath()%>/mypage/shopping/wishlist.do" class="gray">찜리스트</a><br>
					<a href="<%=request.getContextPath()%>/mypage/shopping/qaList.do" class="red">상품 Q&A*</a><br>
					<a href="<%=request.getContextPath()%>/mypage/memberCounsel/inquiry.do" class="gray">1:1 문의</a><br>
					<a href="<%=request.getContextPath()%>/mypage/shopping/myReview.do" class="gray">나의 리뷰</a>
				</div><br>
			</div>
			<div class="myPageMenu2">
				<span style="font-size:1.3em; font-weight: bold;"><a href="#">내 정보 관리</a>&nbsp;<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
				  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
				</svg></span>
				<div class="myPageMenu3">
					<a href="<%=request.getContextPath()%>/mypage/deliveryAddr/receiveAddr.do" class="gray">배송지 관리</a><br>
					<a href="<%=request.getContextPath()%>/mypage/privateInfo/myInfoPwd.do" class="gray">개인 정보 수정</a><br>
					<a href="<%=request.getContextPath()%>/member/leave.do" class="gray">회원 탈퇴</a>
				</div>
			</div>
		</div>
		</div>
		<!-- 좌측 마이페이지 메뉴 여기서 끝 -->
		<div class="empty-box"></div>
		<div class="empty-box"></div>
		<form action="<%=request.getContextPath()%>/mypage/shopping/qaUpdate.do" method="post">
		<input type="hidden" name="pqidx" value="<%=qvo.getPqidx() %>">
		<table>
			<colgroup>
				<col style="width:65%;">
				<col style="width:20%;">
				<col style="width:15%;">
			</colgroup>
			<thead style="border-top:2px solid black; border-bottom:2px solid gray; height:70px;">
				<tr>
					<th style="font-size:20px; color:gray;"><%=qvo.getPqSubject() %></th>
					<th style="font-size:15px; color:gray; padding-left:70px;"><%=qvo.getPqWriteday().substring(0,10) %></th>
					<th style="font-size:15px; color:gray; text-align:right; padding-right:40px;"><%=qvo.getPqWriter() %></th>
				</tr>	
			</thead>
			<tbody>
				<tr><td style="height:20px;"></td></tr>
				<tr>
					<td colspan="3">
					 	<%=qvo.getPqContents() %>
					</td>
				</tr>
				<tr><td style="border-bottom:1px solid gray; height:150px;" colspan="3"></td></tr>	
			</tbody>
		</table>	
		<%if(loginU.getMaster().equals("master") || qvo.getMidx()==loginU.getMidx()){ %>
		<input type="submit" value="QA삭제" class="subFn" style="background-color:gray">
		<%} %>
		<input type="button" value="목록보기" class="btnFn" style="background-color:white;" onclick="location.href='<%=request.getContextPath()%>/mypage/shopping/qaList.do'">
		</form>	
		<div class="empty-box"></div>
		<div class="empty-box"></div>
		<table style="width:978px; margin-left:280px; margin-top:50px; text-align:center;">
			<tr style="border-bottom:1px solid black; height:50px; font-size:20px; background-color:#ccc; font-weight:bold;">
				<td>답변 내용</td>
			</tr>
			<%if(qvo.getAnswer() != null){ %>
				<tr>
					<td><%=qvo.getAnswer() %></td>
				</tr>
				</table>
			<%}else{ %>
				<tr>
					
				</tr>
				</table>
			<%} %>
		<%
			if(loginU.getMaster().equals("master")){
		%>
		<form action="<%=request.getContextPath()%>/customerService/qaComment.do" method="post" class="commentBox">
		<input type="hidden" name="pqidx" value="<%=qvo.getPqidx()%>">
			<p>
				<textarea name="answer" placeholder="여기에 댓글을 작성하세요"></textarea>				
			</p>
			<p>
				<input type="submit" value="답글 작성" class="commentFn">	
			</p>
		</form>
		<%
			}
		%>
	</div>	
	<div class="empty-box"></div>
	<div class="empty-box"></div>
<!-- 우측하단 TOP 이동 배너 -->
	<a href="#top">
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-circle-fill top fixed" viewBox="0 0 16 16">
	  <path d="M16 8A8 8 0 1 0 0 8a8 8 0 0 0 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
	</svg></a>
	
	<!-- footer -->
	<div class="bg-light cl-left">
		<div class="row footLine">
			<div class="col-md-2"></div>
			<div class="col-md-8 marginAuto">
	  			 통합고객센터 1588-9667 월~금 09:00 ~ 12:00 / 13:00 ~ 20:00 토,일 10:00 ~ 14:00 (공휴일 휴무)
	  		</div>
	  		<div class="col-md-2"></div>
	  	</div>
	<div class="container">
	  <footer class="py-4">
	    <div class="row">
		  <div class="col-12 col-sm-12 col-md-4">
		     <img class="banner-D" src="<%=request.getContextPath()%>/resources/image/mainLogo/mainlogo.png" alt="슈롤로그 로고"  width="45%">
		     <div class="d-flex w-100 gap-2"><br>
			          ㈜ 슈롤로그 대표: 성기훈 | 주소 : 전라북도 전주시 덕진구 쌍문동 <br>
				사업자 등록번호: 001-0456-000456 <br>통신판매업 신고: 제 2021-서울중구-1456호<br>
				개인정보 보호 책임자 : 알리 | 이메일:squid@game.com
		      </div>
		  </div>
		  <div class="col-12 col-sm-0 col-md-2"><br></div>
	      <div class="col-4 col-sm-4 col-md-2">
	        <h5><b>HELP</b></h5>
	        <ul class="nav flex-column">
	          <li class="nav-item mb-2"><a href="<%=request.getContextPath()%>/customerService/cs.do" class="nav-link p-0 text-muted">고객센터</a></li>
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">입점문의</a></li>
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">기프트카드 안내</a></li>
	        </ul>
	      </div>
		  <div class="col-4 col-sm-4 col-md-2 ">
	        <h5><b>BRAND</b></h5>
	        <ul class="nav flex-column">
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">JIMIN</a></li>
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">DAYUN</a></li>
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">SANGHOON</a></li>
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">JAEWON</a></li>
	        </ul>
	      </div>
	      <div class="col-4 col-sm-4 col-md-2">
	        <h5><b>SOCIAL</b></h5>
	        <ul class="nav flex-column">
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
				  <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
				</svg> &nbsp; 인스타그램</a></li>
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
				  <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
				</svg> &nbsp; 트위터</a></li>
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
				  <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
				</svg> &nbsp; 페이스북</a></li>
	        </ul>
	      </div>
	    </div><br>
	    <div class="justify-content-between pt-4 pb-1 mt-4 mb-1 border-top">
	  	  사업자정보확인 | 개인정보처리방침 | 이용약관 | 멤버십 이용약관 | 위치 정보 서비스 이용약관 | 구매안전서비스 가입사실확인<br><br>
	   	   본 상품의 상품 이미지 저작권은 ㈜깐부코리아에 있으며 내용의 무단복제를 금합니다.<br>
	      COPYRIGHT &copy;KKANBU KOREA CO,LTD. ALL RIGHTS RESERVED.
	      </p>
	    </div>
	  </footer>
	 </div>
	</div>
	
    <!--<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script> -->
</body>
</html>