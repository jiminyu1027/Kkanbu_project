<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.study.vo.*" %>    
<%
	MemberVO vo = (MemberVO)request.getAttribute("vo");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정 | ShoeRologue</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
		
		<!-- Bootstrap Font Icon CSS 아이콘 -->
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="/shoerologue/resources/css/style.css">
		<link rel="stylesheet" href="/shoerologue/resources/css/headerFooter.css">
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
		*{
         	font-family: 'Montserrat', "Noto Sans KR", sans-serif;
     	 }
		section{
			background:rgb(247, 247, 247);
			text-align:left;
		}
		.section1{
			width:1000px;
			background:white;
			margin-bottom: 5vh;
		}
		.myPageMainBox{
			width:1500px;
			height:1500px;
			padding-left:50px;
			padding-right:50px;
			margin:auto;
		}
		.myPageBox{
			width:1930px;
			height:230px;
			background-color: light;
			margin:0 auto;
		}
		.myPageBoxs{
			width:230px;
			height:100%;
			float:left;
			margin:auto;
			padding-top:70px;
			text-align:center;
			font-size:20px;
			font-weight:bold;
		}
		.ft-weight{
			font-weight: bold;
			font-size:50px;
		}
		.myPageBoxs1{
			width:550px;
			height:100%;
			float:left;
			padding-top:70px;
			text-align:left;
			font-size:20px;
			margin-left:240px;
		}
		.myPageMenu{
			border:0px solid #616161;
			width:200px;
			height:550px;
			margin-top:10px;
			margin-bottom:50px;
			border-radius:20px;
		}
		.myPageTitle{
			height:50px;
			margin-top:40px;
			border-radius: 15px 15px 0px 0px;
			font-size:30px;
			font-weight:bold;
		}
		.myPageMenu2{
			margin-top:30px;
			margin-right:10px;
			font-size:14px;
		}
		.myPageMenu3{
			font-size:14px;
			margin-top:10px;
		}
		.myPageListBox{
			margin-top:43px;
			width:1120px;
		}
		.gray-box{
			background-color: #EEEEEE;
			padding-left:20px;
			padding-top:10px;
			border:1px solid #BDBDBD;
			height:700px;
		}
		.gray{
			color:gray;
		}
		.red{
			color:red;
			font-weight: bold;
		}
		.red:hover{
			color:red;
		}
		.infoSection{
			font-size:13px;
		}
		h6{
			font-weight: bold;
			color:green;
			margin-top:4px;
		}
		h2, h3, h4{
			font-weight: bold;
		}
		.joinbox{
			width:55%;
			height:100%;
			margin:auto;
		}
		.infoBox{
			padding-bottom:30px;
			padding-top:20px;
			border-top:2px solid black;
			border-bottom:2px solid lightgray;
		}
		.header{
			font-size:38px;
			padding:10px 0px;
			font-weight:bold;
		}
		
		.rows{
			width:100%;
			height:60px;
			text-align:left;
		}
		input[type=text].id{
			width:100%;
		}
		input{
			height:37px;
			width:100%;
			background-color:white;
			border-left:0;
			border-right:0;
			border-top:0;
			border-bottom:3;
			border-color:#9EA4AA;
			padding-left:5px;
		}
		input[type=button].id{
			width:100%;
			height:36px;
			maign-top:2px;
			margin-bottom:0px;
			background-color: white;
			border:1px solid black;
			color:black;
		}
		input[type=submit]{
			width:370px;
			height:40px;
			padding:0px;
			color:white;
			background-color:black;
			border:solid 2px black;
		}
		.red{
			color:red;
		}
		
		.black{
			color:black;
		}
		
		.check{
			display:none;
			margin:10px;
			position:absolute;
			height:30px;
			font-size:9pt;
		}
		#updatebtn{
			width:150px;
			height:50px;
		}
		#resetbtn{
			width:150px;
			height:50px;
			background-color:gray;
			color:white;
			border:0px;
		}
		#resetbtn:hover{
			background-color:#BDBDBD;
			color:white;
			border:0px;
		}
	
		.btnalign{
			margin-top:30px;
			margin-left:120px;
		}
		label{
			margin-top:10px;
			font-weight:bold;
			font-size:15px;
			
		}
		.formalign{
			float:right;
			width:370px;
			height:40px;
		}
		.agreelabel{
			width:30px;
			height:30px;
			border-radius:5px;
		}
		input[type=checkbox]{
			width:15px;
			height:15px;
		}
		input[type=checkbox]:focus{
			outline:0px !important;
		}
		.myPageLine{
			border-bottom:2px solid black;
			height:60px;
			padding-top:10px;
		}
		.myPageEndLine{
			border-top:2px solid gray;
			height:30px;
			margin-top:35px;
		}
		.myInfoReadonly{
			background-color: lightgray;
			border-radius:5px;
		}
	</style>

</head>
<body>
	<!-- 로그인 회원가입 -->
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light topNav">
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
			      <ul class="nav justify-content-end"> 
			      <!-- 로그인 안했을때 -->
			      <c:if test="${member == null}">
						  <li class="nav-item">
						    <a class="nav-link text-black-50 fw-bolder" href="/shoerologue/login.do">로그인</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link text-black-50 fw-bolder" href="/shoerologue/member/join.do">회원가입</a>
						  </li>
					</c:if>
					<!-- 로그인 했을때 -->
					<c:if test="${member != null}">
						  <li class="nav-item">
						    <a class="nav-link text-black-50 fw-bolder">${member.mName}님 환영합니다</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link text-black-50 fw-bolder" href="/shoerologue/logout.do">로그아웃</a>
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
              <a href="/shoerologue"><img class="banner-D" src="/shoerologue/resources/image/mainLogo/mainlogo.png" alt="슈롤로그 로고" width="85%"></a>
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
				<li class="iconli"><a href="/shoerologue/mypage/claim/myPage.do">
					<i class="bi bi-person icon"></i>
					</a>
				</li>
				<li class="iconli"><a href="/shoerologue/mypage/shopping/wishlist.do">
					<i class="bi bi-heart icon"></i>
					</a>
				</li>
				<li class="iconli"><a href="/shoerologue/cart/cart.do">
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
				<a class="nav-link fw-bolder text-white nav-fs" href="#">BRAND</a>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">MEN</a>
				    <ul class="dropdown-menu dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="#">MEN</a></li>
				   		<li><hr class="dropdown-divider "></li>
					 	<li><a class="dropdown-item" href="#">운동화</a></li>
					    <li><a class="dropdown-item" href="#">구두</a></li>
					    <li><a class="dropdown-item" href="#">캐주얼</a></li>
					    <li><a class="dropdown-item" href="#">스포츠</a></li>
					    <li><a class="dropdown-item" href="#">샌들</a></li>
					    <li><a class="dropdown-item" href="#">부츠</a></li>
				    </ul>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">WOMEN</a>
				    <ul class="dropdown-menu  dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="#">WOMEN</a></li>
				   		<li><hr class="dropdown-divider"></li>
					 	<li><a class="dropdown-item" href="#">운동화</a></li>
					    <li><a class="dropdown-item" href="#">구두</a></li>
					    <li><a class="dropdown-item" href="#">캐주얼</a></li>
					    <li><a class="dropdown-item" href="#">스포츠</a></li>
					    <li><a class="dropdown-item" href="#">샌들</a></li>
					    <li><a class="dropdown-item" href="#">부츠</a></li>
				    </ul>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">KIDS</a>
				    <ul class="dropdown-menu  dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="#">KIDS</a></li>
				   		<li><hr class="dropdown-divider"></li>
					 	<li><a class="dropdown-item" href="#">운동화</a></li>
					    <li><a class="dropdown-item" href="#">구두</a></li>
					    <li><a class="dropdown-item" href="#">캐주얼</a></li>
					    <li><a class="dropdown-item" href="#">스포츠</a></li>
					    <li><a class="dropdown-item" href="#">샌들</a></li>
					    <li><a class="dropdown-item" href="#">부츠</a></li>
				    </ul>
				</li>
			</ul>
		</div>
		 <div class="col-1 col-sm-3 col-md-6 col-lg-3 d-sm-none d-md-block d-none">
		    </div>
		    <div class="col-0 col-sm-0 col-md-0 col-lg-2"></div>
		</nav>
	</div>
	
	<!-- body  -->
	<!-- 상단 마이페이지 배너 -->
	<section>
	<div class="myPageBox">
		 <div class="myPageBoxs1">
		 	<div style=" float: left; width: 16%;">
			 	<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
				  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
				  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
				</svg>
			</div>
			<div style=" float: left; width:4%;">&nbsp;</div>
			<div style=" float: left; width:80%;">
        		<span style="font-size:1.5em; font-weight: bold;">${member.mName}</span> <span style="font-size:1.0em; font-weight: bold;">님은 통합멤버십 회원입니다.</span><br>
        		<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-credit-card" viewBox="0 0 16 16">
				  <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v1h14V4a1 1 0 0 0-1-1H2zm13 4H1v5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V7z"/>
				  <path d="M2 10a1 1 0 0 1 1-1h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1z"/>
				</svg>		
        		<span style="font-size:0.8em; font-weight: bold;">멤버십 회원 가입일 ${member.mJoindate.substring(0,10)}</span>
        	</div>
        </div>
        <div class="myPageBoxs">
        	주문상품
        	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill" viewBox="0 0 16 16">
			  <path d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z"/>
			</svg><br>
        	<span class="ft-weight">
        		0
        	</span>개
        </div>
        <div class="myPageBoxs">
        	쿠폰
        	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill" viewBox="0 0 16 16">
			  <path d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z"/>
			</svg><br>
        	<span class="ft-weight">
        		0
        	</span>개
        </div>
        <div class="myPageBoxs">
        	찜한상품
        	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill" viewBox="0 0 16 16">
			  <path d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z"/>
			</svg><br>
        	<span class="ft-weight">
        		0
        	</span>개
        </div>
        <div class="myPageBoxs">
        	장바구니
        	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill" viewBox="0 0 16 16">
			  <path d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z"/>
			</svg><br>
        	<span class="ft-weight">
        		0
        	</span>개
        </div>
	</div>
	</section>
	<div class="myPageMainBox">
		<!-- 페이지 이동경로 -->
		<div style=" float: left; width: 0%;">&nbsp;</div>
		<div style=" float: left; width: 99%;" class="mt-3">
			<span style="color:#757575; font-size:1em">
				<a href="/main.do" style="color:#757575; font-size:1.1em">
				<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-house-fill mb-1" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
				  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
				</svg>
				HOME</a> 
			> 마이페이지 > 내 정보 관리 > 개인 정보 수정
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
					<a href="/shoerologue/mypage/claim/myPage.do" class="gray">주문/배송 조회</a><br>
					<a href="/shoerologue/mypage/claim/orderCancel.do" class="gray">취소/교환/반품</a><br>
					<a href="/shoerologue/mypage/claim/insertCard.do" class="gray">카드 등록 관리</a>
				</div><br>
			</div>
			<div class="myPageMenu2">
				<span style="font-size:1.3em; font-weight: bold;"><a href="#">나의 활동</a>&nbsp;<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
				  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
				</svg></span>
				<div class="myPageMenu3">
					<a href="/shoerologue/cart/cart.do" class="gray">장바구니</a><br>
					<a href="/shoerologue/mypage/shopping/wishlist.do" class="gray">찜리스트</a><br>
					<a href="/shoerologue/mypage/shopping/qaList.do" class="gray">상품 Q&A</a><br>
					<a href="/shoerologue/mypage/memberCounsel/inquiry.do" class="gray">1:1 문의</a><br>
					<a href="/shoerologue/mypage/shopping/myReview.do" class="gray">나의 리뷰</a>
				</div><br>
			</div>
			<div class="myPageMenu2">
				<span style="font-size:1.3em; font-weight: bold;"><a href="#">내 정보 관리</a>&nbsp;<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
				  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
				</svg></span>
				<div class="myPageMenu3">
					<a href="/shoerologue/mypage/deliveryAddr/receiveAddr.do" class="gray">배송지 관리</a><br>
					<a href="/shoerologue/mypage/privateInfo/myInfoPwd.do" class="red">개인 정보 수정*</a><br>
					<a href="/shoerologue/member/leave.do" class="gray">회원 탈퇴</a>
				</div>
			</div>
		</div>
		</div>
		<!-- 좌측 마이페이지 메뉴 여기서 끝 -->
		
		<!-- 마이페이지 메인 -->
		<div style="float: left; width: 80%;">
		<div class="myPageListBox">
		<h2>개인 정보 수정</h2>
			<div class="section1">
			<form name="frm" id="frm" action="/shoerologue/mypage/privateInfo/myInfo.do" method="post" class="infoBox">
			<div class="joinbox">
				<div class="rows name mt-5">
					<label for="name">이름<span class="red"></span></label>
					<div class="formalign">
						<input type="text" class="impor myInfoReadonly" name="mName" id="name" value="${member.mName}" onblur="checkFn('name')" readonly>
						<span class="check"></span>
					</div>
				</div>
				<div class="rows id">
					<label for="id">아이디<span class="red"></span></label>
					<div class="formalign">
						<input type="text" class="id impor myInfoReadonly" name="mId" id="id" value="${member.mId}" onblur="checkFn('id')" readonly> 
					</div>
					<span class="check"></span>
				</div>
				<div class="rows password">
					<label for="password">비밀번호<span class="red">*</span></label>
					<div class="formalign">
						<input type="password" class="impor" name="mPwd" id="password" placeholder="비밀번호를 입력해 주세요. (영문 숫자 조합 4글자 이상)" onblur="checkFn('pass')">
						<span class="check"></span>
					</div>
				</div>
				<div class="rows passwordre">
					<label for="passwordre">비밀번호 확인<span class="red">*</span></label>
					<div class="formalign">
						<input type="password" class="impor" name="passwordre" id="passwordre" placeholder="비밀번호를 다시 입력해 주세요." onblur="checkFn('passre')">
						<span class="check"></span>
					</div>
				</div>
				
				<div class="rows email">
					<label for="email">이메일<span class="red">*</span></label>
					<div class="formalign">
						<input type="email" class="impor" name="mEmail" id="email" value="${loginUserInfo.mEmail}" onblur="checkFn('email')">
						<span class="check"></span>
					</div>
				</div>
				<div class="rows phone">
					<label for="phone">연락처<span class="red">*</span></label>
					<div class="formalign">
						<input type="text" class="impor" name="mPhone" id="phone" value="${loginUserInfo.mPhone}" onblur="checkFn('phone')">
						<span class="check"></span>
					</div>
				</div>
				<div class="rows btnalign">
					<label>
						<input type="reset" value="초기화" id="resetbtn" onclick="frm_reset(); return false;">
					</label>
					<label>
						<input type="submit" value="변경" id="updatebtn" onclick="sumbitFn(); return false;">
					</label>
				</div>
				</div>
			</form>
		</div>
			<div style="float: left; width: 100%;">
				<div class="gray-box">
					<span style="font-size:1.5em; font-weight: bold;"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-exclamation-circle" viewBox="0 0 16 16">
						  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
						  <path d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z"/>
						</svg> 정보 보호 인증 소개</span>
					<p>슈롤로그(주)는 서비스 이용자의 정보를 안전하게 보호하기 위하여 아래와 같은 정보보호 인증을 취득하여 유지해오고 있습니다.</p>
					
					<div class="infoSection">
						<div style="float: left; width: 23%; padding:10px;">
							<img src="https://s.pstatic.net/static/www/u/2015/0128/nmms_143850321.gif" width="213" height="114" alt="SOC 로고">
						</div>
						<div style="float: left; width: 75%; padding:10px;">
							<h6>SOC(Service Organization Control)</h6>
							SOC 인증은 국제감사인증 기준위원회 (IAASB)가 제정한 국제인증업무기준(ISAE) 에 따라 서비스의 안전성 및 관련 내부통제 수준을 평가하는 제도입니다. 슈롤로그(주)는 2013년 3월 국내 최초로 SOC2, SOC3 (SysTrust)인증을 동시에 취득하였으며, 특히 이용자 프라이버시 보호에 초점을 맞추어 인증을 진행함으로써 ‘견고한 개인정보보호체계’를 다시 한번 검증 받았습니다.
						</div>
					</div>
					
						<div style="float: left; width: 98%; padding:10px;"></div>
					
					<div class="infoSection">
						<div style="float: left; width: 23%; padding:10px;">
							<img src="https://s.pstatic.net/static/www/u/2015/0810/nmms_172911673.png" alt="ISO/IEC 27001 로고" height="114" width="213">
						</div>
						<div style="float: left; width: 75%; padding:10px;">
							<h6>ISO/IEC 27001, 27017, 27018, 27701</h6>
							ISO/IEC 27001은 국제표준화 기구(ISO) 및 국제 전기기술위원회(IEC)에서 제정한 정보보호 관리체계 국제규격 인증입니다. 슈롤로그는 메일, 클라우드와 같은 개인화 서비스, 카페, 블로그  및 슈롤로그페이 등 전사 서비스를 대상으로 인증을 유지해오고 있습니다. 2007년 3월 세계 최초로 ‘개인정보 부문’에 특화된 ISO 27001 인증을 취득하였고, 2016년 6월에는 ‘클라우드 서비스’의 정보보호 및 개인정보 보호를 강화하기 위해 ISO 27017 및 ISO 27018 인증을 취득하여 고객 여러분의 소중한 개인정보를 보호하고 있습니다.
						</div>
					</div>
					
						<div style="float: left; width: 98%; padding:10px;"></div>
						
					<div class="infoSection">	
						<div style="float: left; width: 23%; padding:10px;">
							<img src="https://s.pstatic.net/static/www/rules/img2/img_isms_p.png" alt="정보보호 및 개인정보보호 관리체계인증(ISMS-P) 로고" height="114" width="213">
						</div>
						<div style="float: left; width: 75%; padding:10px;">
							<h6>정보보호 및 개인정보보호 관리체계인증 (ISMS-P)</h6>
							정보보호 및 개인정보보호 관리체계(ISMS-P) 인증은 정보보호 및 개인정보보호를 위한 일련의 조치와 활동이 인증기준에 적합함을  인증기관이 증명하는 제도입니다. 슈롤로그(주)는 정보통신망의 안전성 확보 및 개인정보 보호를 위해 조직이 수립한 일련의 조치와 활동이 인증기준에 적합함을 인정받아 인증을 획득하였습니다.
						</div>
					</div>
					
						<div style="float: left; width: 98%; padding:10px;"></div>
					
					<div class="infoSection">
						<div style="float: left; width: 23%; padding:10px;">
							<img src="https://s.pstatic.net/static/www/rules/img2/img_isms.png" alt="정보보호관리체계 (ISMS) 로고" height="114" width="213">
						</div>
						<div style="float: left; width: 75%; padding:10px;">
							<h6>정보보호관리체계 (ISMS)</h6>
							정보보호관리체계(SMS) 인증은 미래창조과학부에서 기업이 전사 정보보호 활동에 대해 지속적인 보호 활동을 수행하고 있는지, 적절한 정보보호 수준을 유지하고 있는지 점검하여 일정 수준 이상의 기업에 인증을 부여하는 제도입니다. 슈롤로그(주)는 2010년 전사로 범위를 확대하여 해당 인증을 취득하였습니다.
						</div>
					</div>
			    </div>
			</div>
		</div>
		</div>
	</div><br>
	
<!-- 우측하단 TOP 이동 배너 -->
	<a href="#top">
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-circle-fill top fixed" viewBox="0 0 16 16">
	  <path d="M16 8A8 8 0 1 0 0 8a8 8 0 0 0 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
	</svg></a><br><br>
	
	<!-- footer -->
	<div class="bg-light">
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
		     <img class="banner-D" src="/shoerologue/resources/image/mainLogo/mainlogo.png" alt="슈롤로그 로고"  width="45%">
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
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">고객센터</a></li>
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">입점문의</a></li>
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">기프트카드 안내</a></li>
	          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
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
				  <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05h4.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
				</svg> &nbsp; 페이스북</a></li>
	        </ul>
	      </div>
	    </div><br>
	    <div class="justify-content-between pt-4 pb-1 mt-4 mb-1 border-top">
	  	  사업자정보확인 | 개인정보처리방침 | 이용약관 | 멤버십 이용약관 | 위치 정보 서비스 이용약관 | 구매안전서비스 가입사실확인<br><br>
	      <p/>
	   	   본 상품의 상품 이미지 저작권은 ㈜깐부코리아에 있으며 내용의 무단복제를 금합니다.<br>
	      COPYRIGHT &copy;KKANBU KOREA CO,LTD. ALL RIGHTS RESERVED.
	    </div>
	  </footer>
	 </div>
	</div>
	
	<!-- 유효성 검사 -->
	<script src="../jquery-3.6.0.min.js"></script>
	<script>
	function checkFn(type){
		if(type == 'pass'){
			var checkId = /^.*(?=^.{4,20}$)(?=.*\d)(?=.*[a-zA-Z]).*$/;
			var value = document.frm.password.value;
			var span = document.getElementsByClassName("password")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "*필수";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checkId.test(value)){
				span.textContent = "*형식오류";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
		}else if(type == 'passre'){
			var value = document.frm.password.value;
			var value2 = document.frm.passwordre.value;
			var span = document.getElementsByClassName("passwordre")[0].getElementsByTagName("span")[0];
			if(value2 == ""){
				span.textContent = "*필수";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(value != value2){
				span.textContent = "*불일치";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
		}else if(type == 'email'){
			var checkEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/g;
			var value = document.frm.email.value;
			var span = document.getElementsByClassName("email")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "*필수";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checkEmail.test(value)){
				span.textContent = "*형식오류";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
		}else if(type == 'phone'){
			var checkPhone = /^[0-9]{10,12}/g;
			var value = document.frm.phone.value;
			var span = document.getElementsByClassName("phone")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "*필수";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checkPhone.test(value)){
				span.textContent = "*형식오류";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
		}
	}
	/*---------------------------------서브밋---------------------------------*/
	function sumbitFn(){
		var result = true;
		
		var checkPass = /^.*(?=^.{4,20}$)(?=.*\d)(?=.*[a-zA-Z]).*$/;
		value = document.frm.password.value;
		span = document.getElementsByClassName("password")[0].getElementsByTagName("span")[0];
		if(value == ""){
			span.textContent = "*필수";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else if(!checkPass.test(value)){
			span.textContent = "*형식오류";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		
		value = document.frm.password.value;
		var value2 = document.frm.passwordre.value;
		span = document.getElementsByClassName("passwordre")[0].getElementsByTagName("span")[0];
		if(value2 == ""){
			span.textContent = "*필수";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else if(value != value2){
			span.textContent = "*불일치";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		
		
		var checkEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/g;
		value = document.frm.email.value;
		span = document.getElementsByClassName("email")[0].getElementsByTagName("span")[0];
		if(value == ""){
			span.textContent = "*필수";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else if(!checkEmail.test(value)){
			span.textContent = "*형식오류";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		
		var checkPhone = /^[0-9]{10,12}/g;
		var value = document.frm.phone.value;
		var span = document.getElementsByClassName("phone")[0].getElementsByTagName("span")[0];
		if(value == ""){
			span.textContent = "*필수";
			span.style.color = "red";
			span.style.display = "inline";
		}else if(!checkPhone.test(value)){
			span.textContent = "*형식오류";
			span.style.color = "red";
			span.style.display = "inline";
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		if(result){
			document.frm.submit();
		}
	}
	
	<!-- 초기화 버튼  함수-->
	function frm_reset() {
	    document.getElementById("frm").reset();
	}
	
	
	// 동의 모두선택 / 해제
	const agreeChkAll = document.querySelector('input[name=agree_all]');
	    agreeChkAll.addEventListener('change', (e) => {
	    let agreeChk = document.querySelectorAll('input[name=agree]');
	    for(let i = 0; i < agreeChk.length; i++){
	      agreeChk[i].checked = e.target.checked;
	    }
	});
	</script>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script> 	
</body>
</html>