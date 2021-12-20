<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.study.vo.*" %>
<%
	MemberVO vo =(MemberVO) session.getAttribute("member");
	ProductVO pvo = (ProductVO)request.getAttribute("pvo");
	List<ProductVO> plist = (List<ProductVO>)request.getAttribute("plist");
	List<HotProductVO> hlist = (List<HotProductVO>)request.getAttribute("hlist");
%>
<html>
	<head>
		<title>신발의 시작, 슈롤로그</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
		
		<!-- 스와이퍼 -->
		<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
		<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
		
		<!-- 아이콘 크기 -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css">
		<!-- Bootstrap Font Icon CSS -->
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/headerFooter.css">
		
		<style>
		@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
		
		*{
		font-family: 'Montserrat', "Noto Sans KR", sans-serif;
		}
		.img-fluid{
			width:100%;
		}
		body{
			overflow-x:hidden;
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
						    <a class="nav-link text-black-50 fw-bolder" href="<%=request.getContextPath() %>/login.do">로그인</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link text-black-50 fw-bolder" href="<%=request.getContextPath() %>/member/join.do">회원가입</a>
						  </li>
					</c:if>
					<!-- 로그인 했을때 -->
					<c:if test="${member != null}">
						  <li class="nav-item">
						    <a class="nav-link text-black-50 fw-bolder">${member.mName}님 환영합니다</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link text-black-50 fw-bolder" href="<%=request.getContextPath() %>/logout.do">로그아웃</a>
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
              <a href="<%=request.getContextPath() %>"><img class="banner-D" src="<%=request.getContextPath() %>/resources/image/mainLogo/mainlogo.png" alt="슈롤로그 로고" width="85%"></a>
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
	     <!-- 마이페이지, 찜목록, 장바구니 -->
	     <div class="col-0 col-sm-0 col-md-2 col-lg-3 d-flex justify-content-center align-items-center">
			<ul class="iconul d-flex align-items-center icon-absolute">
				<li class="iconli"><a href="<%=request.getContextPath() %>/mypage/claim/myPage.do">
					<i class="bi bi-person icon"></i>
					</a>
				</li>
				<li class="iconli"><a href="<%=request.getContextPath() %>/mypage/shopping/wishlist.do">
					<i class="bi bi-heart icon"></i>
					</a>
				</li>
				<li class="iconli"><a href="<%=request.getContextPath() %>/cart/cart.do">
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
				<a class="nav-link fw-bolder text-white nav-fs" href="<%=request.getContextPath() %>/category/brand.do">BRAND</a>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="<%=request.getContextPath() %>/category/gender/men.do" role="button" aria-expanded="false">MEN</a>
				    <ul class="dropdown-menu bg-white dropDownMenu">
				    	<li><a class="dropdown-item fw-bolder" href="<%=request.getContextPath() %>/category/gender/men.do">MEN</a></li>
				   		<li><hr class="dropdown-divider "></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/men/sneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/men/sports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/men/dressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/men/sandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/men/casual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/men/boots.do">부츠</a></li>
				    </ul>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="<%=request.getContextPath() %>/category/gender/women.do" role="button" aria-expanded="false">WOMEN</a>
				    <ul class="dropdown-menu bg-white dropDownMenu">
				    	<li><a class="dropdown-item fw-bolder" href="<%=request.getContextPath() %>/category/gender/women.do">WOMEN</a></li>
				   		<li><hr class="dropdown-divider"></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/women/sneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/women/sports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/women/dressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/women/sandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/women/casual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/women/boots.do">부츠</a></li>
				    </ul>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="<%=request.getContextPath() %>/category/gender/kids.do" role="button" aria-expanded="false">KIDS</a>
				    <ul class="dropdown-menu bg-white dropDownMenu ">
				    	<li><a class="dropdown-item fw-bolder" href="<%=request.getContextPath() %>/category/gender/kids.do">KIDS</a></li>
				   		<li><hr class="dropdown-divider"></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/kids/sneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/kids/sports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/kids/dressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/kids/sandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/kids/casual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/category/gender/kids/boots.do">부츠</a></li>
				    </ul>
				</li>
			</ul>
		</div>
		<!-- 메인페이지에서 이동하는 핫딜,베스트,코디 -->
		 <div class="col-1 col-sm-3 col-md-6 col-lg-3 d-sm-none d-md-block d-none">
		      <ul class="navbar-nav me-auto mb-6 mb-lg-0">
		      </ul>
		      <ul class="nav justify-content-end"> 
				  <li class="nav-item nav-fs">
				    <a class="nav-link text-white fw-bolder" href="#hotdeal">#핫딜</a>
				  </li>
				  <li class="nav-item nav-fs">
				    <a class="nav-link text-white fw-bolder" href="#best">#베스트</a>
				  </li>
				   <li class="nav-item nav-fs">
				    <a class="nav-link text-white fw-bolder" href="#codi">#코디</a>
				  </li>
				</ul>
				
		    </div>
		    <div class="col-0 col-sm-0 col-md-0 col-lg-2"></div>
		</nav>
	</div>
	
	<!-- 메인 슬라이드 배너 -->
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <!-- 배너이미지 3장 -->
	  <div class="carousel-inner">
	    <div class="carousel-item active"  data-bs-interval="4000">
	      <img src="<%=request.getContextPath() %>/resources/image/mainbanner/001.png" class="d-block w-100" alt="45%할인 이벤트">
	    </div>
	    <div class="carousel-item"  data-bs-interval="4500">
	      <img src="<%=request.getContextPath() %>/resources/image/mainbanner/KAKAO.png" class="d-block w-100" alt="카카오페이 결제시 3천원 할인 이벤트">
	    </div>
	    <div class="carousel-item"  data-bs-interval="4500">
	      <img src="<%=request.getContextPath() %>/resources/image/mainbanner/ilnam.png" class="d-block w-100" alt="45%할인 이벤트">
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>	
	<!-- 공백 -->
	<div class="jumping">
	</div>
	
	<!-- 핫딜 -->
	<div class="container">
	  <div class="row pdRowBox">
	    <div class="col-6 col-sm-6 col-md-3 col-lg-3">
	     <div class="card w-20">
		  <div class="card-body">
		    <div class="card-title hotdeal-txt" id="hotdeal">
		    	<svg xmlns="http://www.w3.org/2000/svg" width="31" height="31" fill="currentColor" class="bi bi-clock mb-2" viewBox="0 0 16 16">
				  <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
				  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
				</svg>&nbsp;HOT DEAL</div><br>
		    <h5 class="card-subtitle mb-2 text-muted">Super Sale Event</h5>
		    <p class="card-text more-text"><a href="#">MORE &gt;</a></p><br>
		  </div>
		</div>
	    </div>
	     <!-- 핫딜 상품 --> 
	     <%
			     if(hlist.size()>=3){
			     for(int i=0; i<3;i++) {  
	    	 %>
	     <div class="col-6 col-sm-6 col-md-3 col-lg-3 cardhover">
			<a href="<%=request.getContextPath() %>/product/product.do?pidx=<%=hlist.get(i).getPidx()%>">
		     <div class="card">
		     <div class="hotDealRedBox"><%=hlist.get(i).getHsaleper()%><sapn class="hotLfThanSmall">%</sapn></div>
			 <img src="<%=request.getContextPath() %>/resources/image/productdetail/<%=hlist.get(i).gethFile1()%>" class="card-img-top" alt="핫딜상품">
			 <div id="count" class="hotTimer count"></div>
			  <div class="card-body">
			  	<h5 class="card-title brandtitle"><%=hlist.get(i).gethBrandKr()%></h5>
			    <p class="card-text"><%=hlist.get(i).gethNameKr()%></p>
			    <span class="card-text exitPrice">
			    	<del>
					<% if(hlist.get(i).gethPrice().length() <6) {%>
					<%=hlist.get(i).gethPrice().substring(hlist.get(i).gethPrice().length()-5,hlist.get(i).gethPrice().length()-3) %>,<%=hlist.get(i).gethPrice().substring(hlist.get(i).gethPrice().length()-3,hlist.get(i).gethPrice().length()) %>
					<%}else{ %>
						<%=hlist.get(i).gethPrice().substring(hlist.get(i).gethPrice().length()-6,hlist.get(i).gethPrice().length()-3) %>,<%=hlist.get(i).gethPrice().substring(hlist.get(i).gethPrice().length()-3,hlist.get(i).gethPrice().length()) %>
					<% } %>
			    	원
			    	</del>
			    </span>&nbsp;
			    <span class="card-text HotPrice">
				    <% if(hlist.get(i).getHsaleprice().length() <6) {%>
					<%=hlist.get(i).getHsaleprice().substring(hlist.get(i).getHsaleprice().length()-5,hlist.get(i).getHsaleprice().length()-3) %>,<%=hlist.get(i).getHsaleprice().substring(hlist.get(i).getHsaleprice().length()-3,hlist.get(i).getHsaleprice().length()) %>
					<%}else{ %>
						<%=hlist.get(i).getHsaleprice().substring(hlist.get(i).getHsaleprice().length()-6,hlist.get(i).getHsaleprice().length()-3) %>,<%=hlist.get(i).getHsaleprice().substring(hlist.get(i).getHsaleprice().length()-3,hlist.get(i).getHsaleprice().length()) %>
					<% } %>
			    </span>
			    <span class="card-text HotPer">원 [<%=hlist.get(i).getHsaleper()%>%]</span>
			  </div>
			</div>
		  </a>
	    </div>
	    <% } 
		} %>
	    
	  
	</div>
	</div>
	<!-- 이벤트 광고 베너 -->
	<div class="jumping"></div>
		<img src="resources/image/mainbanner/005.png" class="img-fluid" alt="이젠카드 결제시 20% 할인 이벤트">
	<div class="jumping"></div>
	
	<!-- BEST 20 상품 -->
	<h1 class="text-center fw-bolder" id="best">#BEST 20</h1><br>
	<div class="container">
	  <div class="row">
	  <%
			     if(plist.size()>=20){
			     for(int i=0; i<20;i++) {	    
	    	 %>
	    <div class="col-6 col-md-3 cardhover">
	    	<a href="<%=request.getContextPath() %>/product/product.do?pidx=<%=plist.get(i).getPidx()%>">
		     <div class="card w-20">
			  <img src="<%=request.getContextPath() %>/resources/<%=plist.get(i).getpFile1()%>" class="card-img-top" alt="best20상품">
			  <div class="card-body">
			    <h5 class="card-title brandtitle"><%=plist.get(i).getpBrandKr() %></h5>
			    <p class="card-text"><%=plist.get(i).getpNameKr() %></p>
			    <span class="card-text normalPrice">
			    	<% if(plist.get(i).getpPrice().length() <6) {%>
					<%=plist.get(i).getpPrice().substring(plist.get(i).getpPrice().length()-5,plist.get(i).getpPrice().length()-3) %>,<%=plist.get(i).getpPrice().substring(plist.get(i).getpPrice().length()-3,plist.get(i).getpPrice().length()) %>
					<%}else{ %>
						<%=plist.get(i).getpPrice().substring(plist.get(i).getpPrice().length()-6,plist.get(i).getpPrice().length()-3) %>,<%=plist.get(i).getpPrice().substring(plist.get(i).getpPrice().length()-3,plist.get(i).getpPrice().length()) %>
					<% } %>
			    원</span>&nbsp;
			  </div>
			</div>
		  </a>
	    </div>
	     <% } 
		} %>
	  </div>
	  <br>
	</div>
	
	<!-- 공백 -->
	<div class="jumping"></div>
	<!-- 3번째 배너 -->
	<img src="resources/image/mainbanner/banner3.png" class="img-fluid" alt="크리스마스 선물 이벤트">
	<!-- 공백 -->
	<div class="jumping"></div>
	
	<!-- 코디  타이틀-->
	<div class="codi">
		<center>
		<h1 id="codi"><b>SHOES STYLE</b></h1> <br>
		<h5>#OOTD #DAILY</h5>
		</center>
	</div>
	
	<!-- Swiper -->
	<!-- 코디 슬라이드 이미지 12장-->
	<div class="row">
	    <div class="swiper mySwiper slideSize slideH">
		      <div class="swiper-wrapper">
			    <div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper1.png" alt="필라코디" ></div>
				<div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper2.jpg" alt="컨버스코디" ></div>
				<div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper3.png" alt="뉴발란스코디" ></div>
				<div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper4.jpg" alt="뉴발란스코디" ></div>
				<div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper5.jpeg" alt="컨버스코디" ></div>
				<div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper6.png" alt="닥터마틴코디" ></div>
				<div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper7.png" alt="나이키코디" ></div>
				<div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper8.png" alt="콜카신발" ></div>
				<div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper9.png" alt="꼬무신신발" ></div>
				<div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper10.png" alt="아디다스코디" ></div>
				<div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper11.jpg" alt="나이키코디" ></div>
				<div class="swiper-slide imageSize"><img class="image" src="resources/image/swiper/swiper12.png" alt="반스코디" ></div>
		      </div>
		    <div class="swiper-button-next"></div>
		    <div class="swiper-button-prev"></div>
		    <div class="swiper-pagination"></div>
   		 </div>
	</div>
	<!-- 공백 -->
	<div class="jumping">
	</div>
	
	<!-- 우측하단 TOP 이동 배너 -->
	<a href="#top">
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-circle-fill top fixed" viewBox="0 0 16 16">
	  <path d="M16 8A8 8 0 1 0 0 8a8 8 0 0 0 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
	</svg></a>
	
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
		     <img class="banner-D" src="resources/image/mainLogo/mainlogo.png" alt="슈롤로그 로고"  width="45%">
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
	          <li class="nav-item mb-2"><a href="<%=request.getContextPath() %>/customerService/cs.do" class="nav-link p-0 text-muted">고객센터</a></li>
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
	    <div class="justify-content-between pt-4 mb-1 mt-4 mb-1 border-top">
	  	  사업자정보확인 | 개인정보처리방침 | 이용약관 | 멤버십 이용약관 | 위치 정보 서비스 이용약관 | 구매안전서비스 가입사실확인<br><br>
	      <p/>
	   	   본 상품의 상품 이미지 저작권은 ㈜깐부코리아에 있으며 내용의 무단복제를 금합니다.<br>
	      COPYRIGHT &copy;KKANBU KOREA CO,LTD. ALL RIGHTS RESERVED.
	    </div>
	  </footer>
	 </div>
	</div>
 	<!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
 	  <!-- shoestyle Initialize Swiper js-->
    <script>
      var swiper = new Swiper(".mySwiper", {
        slidesPerView: 1,
        spaceBetween: 30,
        slidesPerGroup: 1,
        
        loop: true,
        loopFillGroupWithBlank: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        autoplay: {
            delay: 1200,
            disableOnInteraction: false,
          },
          
        breakpoints: { //반응형 조건 속성
            500: { //500 이상일 경우
              slidesPerView: 2, //레이아웃 2열
            },
            750: {
              slidesPerView: 3,
            },
            1000: {
              slidesPerView: 4,
            },
            1250: {
               slidesPerView: 5,
            },
            1500: {
              slidesPerView: 6,
            },
           }     
      });
      
      
	    var dday = new Date("December 27, 2021, 0:00:00").getTime();

	      setInterval(function() {
	        var today = new Date().getTime();
	        var gap = dday - today;
	        var day = Math.ceil(gap / (1000 * 60 * 60 * 24));
	        var hour = Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	        var min = Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60));
	        var sec = Math.ceil((gap % (1000 * 60)) / 1000);

	       // document.getElementById("count").innerHTML = day + " DAY " + " " + hour + " : " + min + " : " + sec;
	       var counts = document.getElementsByClassName("count");
	       for(var i=0; i<counts.length; i++){
	    	   counts[i].innerHTML = day + " DAY " + " " + hour + " : " + min + " : " + sec;
	       }
	      }, 1000);
    </script>
 	<!-- swiper js -->
	<script src="path/to/swiper.min.js"></script>

	<!-- bootstrap js -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	</body>
</html>