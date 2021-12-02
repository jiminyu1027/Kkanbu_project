<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.study.vo.*" %>
<%@ page import="edu.study.domain.*" %>
<%
	List<ProductVO> kidslist = (List<ProductVO>)request.getAttribute("kidslist");
	ProductVO pvo = (ProductVO)request.getAttribute("pvo");
	PageMaker pageMaker = (PageMaker)request.getAttribute("pageMaker");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>키즈 | 슈롤로그</title>


<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
		
		<!-- Bootstrap Font Icon CSS 아이콘 -->
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="/shoerologue/resources/css/style.css">
		<link rel="stylesheet" href="/shoerologue/resources/css/brand.css">
		<link rel="stylesheet" href="/shoerologue/resources/css/headerFooter.css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
	</style>
	<script>
	var chkList = document.querySelectorAll("input[name=filterColor]:checked");
	chkList.forEach(function (ch) {
	    console.log(ch.value);
	});
	</script>
</head>
<body>
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
<!-- body  -->

	<div class="bigBox">
		<div class="channel">
			<ul>
				<li><a href="/shoerologue" style="color:#757575; font-size:1.1em">
					<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-house-fill mb-1" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
					  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
					</svg>
					HOME</a></li>&nbsp;&nbsp;>&nbsp;&nbsp;
				<li><a href="/shoerologue/category/gender/kids.do">KIDS</a></li>
			</ul>
		</div>
	</div>
	<div class="bigBox">
		<div class="shoesBox">
			<div class="shoesGender">KIDS</div>
			<div class="shoesList">
				<ul>
					<li><a href="/shoerologue/category/gender/kids/sneakers.do">운동화</a></li>
				 	<li><a href="/shoerologue/category/gender/kids/sports.do">스포츠</a></li>
				    <li><a href="/shoerologue/category/gender/kids/dressShoes.do">구두</a></li>
				    <li><a href="/shoerologue/category/gender/kids/sandle.do">샌들</a></li>
				    <li><a href="/shoerologue/category/gender/kids/casual.do">캐주얼</a></li>
				    <li><a href="/shoerologue/category/gender/kids/boots.do">부츠</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="bigBox">
		<div class="filterBox">
		<div class="filterTitle">FILTER</div>
		<div class="hr1"></div>
		<div id="menu">
			<h6><a>브랜드</a></h6>
			<div>
				<div class="filterSearchBox">
					<form action="#" method="get" name="brandSearchFrm">
						<input type="search" name="brandSearch" placeholder="브랜드검색" class="filterSearh">
						 <button class="filterSearchBtn" onclick="filterSearchBtn()" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16" >
						<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
						</svg></button>
					</form>
				</div>
			</div>
			<h6><a>사이즈</a></h6>
			<form action="#" method="get" name="filterSizeFrm">
				<div class="filterSize">
					<input type="checkbox" id="size180"><label for="size180">180</label>
					<input type="checkbox" id="size190"><label for="size190">190</label>
					<input type="checkbox" id="size200"><label for="size200">200</label>
					<input type="checkbox" id="size210"><label for="size210">210</label>
					<input type="checkbox" id="size220"><label for="size220">220</label>
					<input type="checkbox" id="size230"><label for="size230">230</label>
					<input type="checkbox" id="size240"><label for="size240">240</label>
					<input type="checkbox" id="size250"><label for="size250">250</label>
					<input type="checkbox" id="size260"><label for="size260">260</label>
					<input type="checkbox" id="size270"><label for="size270">270</label>
					<input type="checkbox" id="size280"><label for="size280">280</label>
					<input type="checkbox" id="size290"><label for="size290">290</label>
					<input type="checkbox" id="size300"><label for="size300">300</label>
				</div>
			</form>
			<h6><a>색상</a></h6>
			<form action="#" method="get" name="filterColorFrm">
			<div class="filterColor">
				<input type="checkbox" name="filterColor" id="color_white"><label for="color_white"><img src="/shoerologue/resources/image/color/white.png"></label>
				<input type="checkbox" name="filterColor" id="color_beige"><label for="color_beige"><img src="/shoerologue/resources/image/color/beige.png"></label>
				<input type="checkbox" name="filterColor" id="color_yellow"><label for="color_yellow"><img src="/shoerologue/resources/image/color/yellow.png"></label>
				<input type="checkbox" name="filterColor" id="color_pink"><label for="color_pink"><img src="/shoerologue/resources/image/color/pink.png"></label>
				<input type="checkbox" name="filterColor" id="color_red"><label for="color_red"><img src="/shoerologue/resources/image/color/red.png"></label>
				<input type="checkbox" name="filterColor" id="color_orange"><label for="color_orange"><img src="/shoerologue/resources/image/color/orange.png"></label>
				<input type="checkbox" name="filterColor" id="color_brown"><label for="color_brown"><img src="/shoerologue/resources/image/color/brown.png"></label>
				<input type="checkbox" name="filterColor" id="color_green"><label for="color_green"><img src="/shoerologue/resources/image/color/green.png"></label>
				<input type="checkbox" name="filterColor" id="color_blue"><label for="color_blue"><img src="/shoerologue/resources/image/color/blue.png"></label>
				<input type="checkbox" name="filterColor" id="color_navy"><label for="color_navy"><img src="/shoerologue/resources/image/color/navy.png"></label>
				<input type="checkbox" name="filterColor" id="color_purple"><label for="color_purple"><img src="/shoerologue/resources/image/color/purple.png"></label>
				<input type="checkbox" name="filterColor" id="color_gray"><label for="color_gray"><img src="/shoerologue/resources/image/color/gray.png"></label>
				<input type="checkbox" name="filterColor" id="color_black"><label for="color_black"><img src="/shoerologue/resources/image/color/black.png"></label>
				<input type="checkbox" name="filterColor" id="color_rainbow"><label for="color_rainbow"><img src="/shoerologue/resources/image/color/rainbow.png"></label>
			</div>
			</form>
			<h6><a>가격</a></h6>
			<div class="filterPrice">
				<form>
					<div class="priceRange">
						<input type="range" name="points" min="15000" max="240000" step="5000" value="0" oninput="document.getElementById('priceRange').innerHTML=this.value;">
						<div id="priceRange"></div>
					</div>
				</form>
			</div>
		</div>
	</div>
		<div class="brandBox">
			<div class="totalPdSel">
				<div  class="totalPd">
					<span>총 <span class="redBold"><%=pageMaker.getTotalCount()%></span>개의 상품이 있습니다.</span>
				</div>
				<div class="selection">
					<select class="">
					  <option value="1" selected>신상품순</option>
					  <option value="2">베스트상품순</option>
					  <option value="3">상품평순</option>
					  <option value="4">낮은가격순</option>
					  <option value="5">높은가격순</option>
					</select>
					<select class="">
					  <option value="15" selected>15개씩 보기</option>
					  <option value="30">30개씩 보기</option>
					  <option value="60">60개씩 보기</option>
					</select>
				</div>
				<div class="hr1"></div>
			</div>
			<!-- 상품 -->
			<div class="brandPdBox">
				<div class="brandPdSmBox">
					<%
					     if(kidslist.size() != 0){
					     for(int i=0; i<kidslist.size();i++) {	    
			    	 %>
					<div class="brandPd">
						<a href="/shoerologue/product/product.do?pidx=<%=kidslist.get(i).getPidx()%>">
							<img src="/shoerologue/resources/image/productdetail/<%=kidslist.get(i).getpFile1()%>">
							<div class="shoesBrand" id="pBrandKr"><%=kidslist.get(i).getpBrandKr()%></div>
							<div class="shoesName" id="pNameKr"><%=kidslist.get(i).getpNameKr()%></div>
							<div class="shoesPriceBox">
								<span class="shoesPrice" id="pPrice">
									<%=kidslist.get(i).getpPrice().substring(kidslist.get(i).getpPrice().length()-5,kidslist.get(i).getpPrice().length()-3) %>,<%=kidslist.get(i).getpPrice().substring(kidslist.get(i).getpPrice().length()-3,kidslist.get(i).getpPrice().length()) %>
								</span>
								<span class="won">원</span>
							</div>
						</a>
					</div>
					<% } 
					} else{
					%>
					<div class="emptyProductBox">
						<div class="exclamation"><svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" fill="currentColor" class="bi bi-exclamation-circle" viewBox="0 0 16 16">
						  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
						  <path d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z"/>
						</svg></div>
					등록된 상품이 없습니다.
					</div>
					<%
					}%>
				</div>
				<div class="page">
				<div class="hr1"></div>
					<ul>
						<c:if test="${pageMaker.prev}">
							<li><a class="pm" href="/shoerologue/category/gender/kids.do${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
						</c:if> 
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							<li><a class="pm" href="/shoerologue/category/gender/kids.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
						</c:forEach>
						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a class="pm" href="/shoerologue/category/gender/kids.do${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
						</c:if> 
					</ul>
				</div>
			</div>
		</div>
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
	  <footer class="py-5">
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
	    <div class="justify-content-between py-4 my-4 border-top">
	  	  사업자정보확인 | 개인정보처리방침 | 이용약관 | 멤버십 이용약관 | 위치 정보 서비스 이용약관 | 구매안전서비스 가입사실확인<br><br>
	      <p>
	   	   본 상품의 상품 이미지 저작권은 ㈜깐부코리아에 있으며 내용의 무단복제를 금합니다.<br>
	      COPYRIGHT &copy;KKANBU KOREA CO,LTD. ALL RIGHTS RESERVED.
	      </p>
	    </div>
	  </footer>
	 </div>
	</div>
	<script type="text/javascript">
	//<![CDATA[
	(function($, undefined){
		$.fn.multiOpenMenu = function(options) {
			// 메뉴가 될 엘리먼트가 없는지 체크합니다.
			if(this.length === 0) {
				return this;
			}
			// 기본값 설정 : active는 처음에 열려 있을 메뉴 입니다.
			var settings = $.extend({
				active: 0
			}, options);
			// 초기 메뉴를 생성합니다.
			var headers = this.find(">h6");
			$.each(headers, function(i, opt) {
				if(i != settings.active) {
					$(this).next().hide();
				}
			});
			// 메뉴를 클릭했을때 서브 메뉴를 보여주는 이벤트를 만듭니다.
			headers.on('click', function() {
				var menuArea = $(this).next();
				var isOpen = menuArea.is(":visible");
				// 열린 상태에 따라 이벤트를 반전해서 발생시킨다.
				menuArea[isOpen ? 'slideUp' : 'slideDown']().trigger(isOpen ? 'hide' : 'show');
				// 이벤트 버블링을 멈춘다.
				return false;
			});
			return this;
		};
	}(jQuery));
	// 메뉴를 생성합니다.
	$(function(){
		$("#menu").multiOpenMenu();
	});
	//]]>
	</script>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script> 	
</body>
</html>