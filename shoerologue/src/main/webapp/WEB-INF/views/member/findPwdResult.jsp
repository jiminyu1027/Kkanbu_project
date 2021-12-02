<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
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
<title>아이디찾기 | 슈롤로그</title>
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
	@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
	*{
		font-family: 'Montserrat', "Noto Sans KR", sans-serif;
	}

	  .marginAuto{
	  	margin:auto;
	  }
	  .HotPrice{
	  	font-size:25px;
	  	color:#EE1C25;
	  	font-weight: bold;
	  }
	  .HotPer{
	  	font-size:15px;
	  	color:red;
	  }
	  .exitPrice{
	  	color:gray;
	  	font-size:12pt;
	  }
	  .brandtitle ,.normalPrice{
	  	font-weight: bold;
	  }
	  .iconul{
	  	list-style:none;
	  	padding:auto;
	  	margin:auto;
	  }
	  .iconli{
	  	margin:7px;
	  	float:left;
	  }
	  .nav-fs{
	  	font-size:0.9rem;
	  }
	 .top{
	 	width:50px;
		height:50px;
		z-index:1;
		opacity:0.5;
	 }
	 .fixed{
		position:fixed;
		right:30px;
		bottom:3.5vh;
	 }
	.dropDownMenu{
		border:3px solid black;
	}

	.dropdown-item:hover{
		color:black !important;
	}
	.swiper-button-next,.swiper-button-prev{
		color:white !important;
	}
	section{
		width:800px;
		background:white;
		text-align:center;
		margin:10vh auto;
		border:1px solid black;
		padding-left:23px;
		padding-right:23px;
	}
	.h{
		font-weight:bold;
		margin-bottom:5px;
	}
	
	.header{
		font-size:30px;
		padding:10px 0px;
		text-align:left;
		font-weight:bold;
	}
	
	input{
		height:40px;
		width:65%;
		background-color:white;
		border-left:0;
		border-right:0;
		border-top:0;
		border-bottom:3;
		border-color:#9EA4AA;
	}
	.rows{
		width:99%;
		text-align:left;
	}

	div.id{
		text-align:left;
	}

	.blue{
		color:blue;
	}
	
	.agr{
		font-size:16px;
		text-align:left;
	}
	
	.check{
		display:none;
		margin:10px;
		position:absolute;
		height:30px;
		font-size:9pt;
	}
	.findInfoEndLine{
		border-top:2px solid gray;
		height:30px;
		margin-top:10px;
	}
	.findInfoEndLine2{
		border-top:2px solid gray;
		height:30px;
		margin-top:10px;
		width:90%;
		display:inline-block;
	}
	.findInfoEndLine3{
		border-top:2px solid lightgray;
		height:30px;
		width:90%;
		display:inline-block;
	}
	.succBox{
		display:inline-block;
		font-size:20px;
		width:90%;
		text-align:center;
	}
	.findInfobtn{
		width:290px;
		height:40px;
		padding:0px;
		color:white;
		background-color:black;
		border:solid 2px black;
		margin-left:40px;
		display:inline-block;
	}
	.btnPosition{
		padding-left:185px;
		display:inline-block;
	}
	.IdListBox1{
		font-size:23px;
		padding-top:5px;
		padding-left:55px;
		text-align:left;
	}
	.IdListBox2{
		font-size:18px;
		padding-top:8px;
		padding-right:55px;
		text-align:right;
		color:gray;
	}
	.findInfoSize{
		padding-top:5px;
		margin-left:5px;
	}
	.mIdSize{
		font-size:24px;
		font-weight:bold;
	}
	</style>	  
	  
	   
</head>
<body>
	<div class="container">
  <nav class="navbar navbar-expand-lg navbar-light topNav">
    <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
    <ul class="nav justify-content-end">
      <li class="nav-item">
        <a class="nav-link text-black-50 fw-bolder" href="/shoerologue/login.do">로그인</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-black-50 fw-bolder" href="/shoerologue/member/join.do">회원가입</a>
      </li>
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
        <button class="btn btn-outline" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
            fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
            <path
              d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
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
		<!-- 대분류 카테고리 -->
		 <div class="col-10 col-sm-8 col-md-6 col-lg-5">
			 <ul class="nav navMenu">
			 	<li class="nav-item">
				<a class="nav-link fw-bolder text-white nav-fs" href="/shoerologue/category/brand.do">BRAND</a>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="/shoerologue/category/gender/men.do" role="button" aria-expanded="false">MEN</a>
				    <ul class="dropdown-menu bg-white dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="/shoerologue/category/gender/men.do">MEN</a></li>
				   		<li><hr class="dropdown-divider "></li>
					 	<li><a class="dropdown-item" href="/shoerologue/category/gender/men/sneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="/shoerologue/category/gender/men/sports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/men/dressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/men/sandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/men/casual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/men/boots.do">부츠</a></li>
				    </ul>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="/shoerologue/category/gender/women.do" role="button" aria-expanded="false">WOMEN</a>
				    <ul class="dropdown-menu bg-white dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="/shoerologue/category/gender/women.do">WOMEN</a></li>
				   		<li><hr class="dropdown-divider"></li>
					 	<li><a class="dropdown-item" href="/shoerologue/category/gender/women/sneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="/shoerologue/category/gender/women/sports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/women/dressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/women/sandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/women/casual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/women/boots.do">부츠</a></li>
				    </ul>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="/shoerologue/category/gender/kids.do" role="button" aria-expanded="false">KIDS</a>
				    <ul class="dropdown-menu bg-white dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="/shoerologue/category/gender/kids.do">KIDS</a></li>
				   		<li><hr class="dropdown-divider"></li>
					 	<li><a class="dropdown-item" href="/shoerologue/category/gender/kids/sneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="/shoerologue/category/gender/kids/sports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/kids/dressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/kids/sandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/kids/casual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="/shoerologue/category/gender/kids/boots.do">부츠</a></li>
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

<!-- 아이디 찾기 -->
	<!-- 정보에 일치하는 비밀번호가 있을때 (비밀번호 찾기 성공) -->
	<c:if test="${ not empty vo.getmPwd()}">
		<section>
			<div class="logbox">
				<div class="header mt-3">
					아이디 찾기
				</div>
				<div class="rows mt-2 findInfoEndLine"></div><br>
				<div class="findIdBoxStyle">
				<div class="mt-5">
					<svg xmlns="http://www.w3.org/2000/svg" width="130" height="130" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
					  <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
					</svg>
				</div>
				<div class="rows Name succBox mt-2">
					<a class="findInfoSize0">회원님이 입력하신 <a class="mIdSize"><%=vo.getmId() %></a> 계정의 비밀번호입니다.</a>
				</div>
				<div class="mt-3">&nbsp;</div>
				<div class="rows mt-2 findInfoEndLine2 mt-5"></div>
				<div class="rows IdListBox1 mt-3" style=" float: left; width: 50%;">
					<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-shield-lock mb-1" viewBox="0 0 16 16">
					  <path d="M5.338 1.59a61.44 61.44 0 0 0-2.837.856.481.481 0 0 0-.328.39c-.554 4.157.726 7.19 2.253 9.188a10.725 10.725 0 0 0 2.287 2.233c.346.244.652.42.893.533.12.057.218.095.293.118a.55.55 0 0 0 .101.025.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067c-.53 0-1.552.223-2.662.524zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z"/>
					  <path d="M9.5 6.5a1.5 1.5 0 0 1-1 1.415l.385 1.99a.5.5 0 0 1-.491.595h-.788a.5.5 0 0 1-.49-.595l.384-1.99a1.5 1.5 0 1 1 2-1.415z"/>
					</svg>
					<a class="findInfoSize"><%=vo.getmPwd() %></a>
				</div>
				<div class="rows IdListBox2 mt-3" style=" float: left; width: 50%;">
					<!-- 2021년 10월 11일 16:27:44 가입 -->
					<%=vo.getmJoindate().substring(0,4) %>년
					<%=vo.getmJoindate().substring(5,7) %>월
					<%=vo.getmJoindate().substring(8,10) %>일 가입
				</div>
				<div class="rows mt-2 findInfoEndLine3 mt-5"></div>
				<div class="rows mt-4 btnPosition">
					<label>
						<input type="button" class="btn btn-secondary findInfobtn" value="로그인" id="findId" onclick="location.href='/shoerologue/login.do'">
					</label>
				</div>
				</div>
				<br><br><br>
				<div class="mt-3 findIdMore">
					<p style="text-align:left;">아이디를 잊으셨나요?&nbsp;&nbsp; <U><a href="findId.do"> 아이디 찾기</a></U></p>
					<p style="text-align:left;">아직 슈롤로그 회원이 아니신가요?&nbsp;&nbsp; <U><a href="join.do"> 회원가입</a></U></p>
				</div>
			</div>
		</section>
	</c:if>
	<!-- 정보에 일치하는 비밀번호가 없을때 (비밀번호 찾기 실패) -->
	<c:if test="${ empty vo.getmPwd()}">
		<section>
			<div class="logbox">
				<div class="header mt-3">
					비밀번호 찾기
				</div>
				<div class="rows mt-2 findInfoEndLine"></div><br>
				<div class="findIdBoxStyle">
				<div class="mt-5">
					<svg xmlns="http://www.w3.org/2000/svg" width="130" height="130" fill="currentColor" class="bi bi-person-x-fill" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6.146-2.854a.5.5 0 0 1 .708 0L14 6.293l1.146-1.147a.5.5 0 0 1 .708.708L14.707 7l1.147 1.146a.5.5 0 0 1-.708.708L14 7.707l-1.146 1.147a.5.5 0 0 1-.708-.708L13.293 7l-1.147-1.146a.5.5 0 0 1 0-.708z"/>
					</svg>
				</div>
				<div class="rows Name succBox mt-2">
					<a class="findInfoSize0">회원님의 정보와 일치하는 계정이 없습니다.</a>
				</div>
				<div class="mt-3">&nbsp;</div>
				<div class="rows mt-2 findInfoEndLine2 mt-5"></div>
				<div class="rows IdListBox1 mt-3" style=" float: left; width: 70%;">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-circle mb-1" viewBox="0 0 16 16">
						  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
						  <path d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z"/>
						</svg>
					<a class="findInfoSize">계정이 존재하지 않습니다.</a>
				</div>
				<div class="rows IdListBox2 mt-3" style=" float: left; width: 30%;">
				</div>
				<div class="rows mt-2 findInfoEndLine3 mt-5"></div>
				<div class="rows mt-4 btnPosition">
					<label>
						<input type="button" class="btn btn-secondary findInfobtn" value="비밀번호 찾기" id="findId" onclick="location.href='/shoerologue/member/findPwd.do'">
					</label>
				</div>
				</div>
				<br><br><br>
				<div class="mt-3 findIdMore">
					<p style="text-align:left;">아이디를 잊으셨나요?&nbsp;&nbsp; <U><a href="findId.do"> 아이디 찾기</a></U></p>
					<p style="text-align:left;">아직 슈롤로그 회원이 아니신가요?&nbsp;&nbsp; <U><a href="join.do"> 회원가입</a></U></p>
				</div>
			</div>
		</section>
	</c:if>


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
	          <li class="nav-item mb-2"><a href="/shoerologue/customerService/cs.do" class="nav-link p-0 text-muted">고객센터</a></li>
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
				  <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
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
		
		</script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script> 	
		
</body>
</html>