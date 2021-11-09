<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
		
		<!-- 글꼴 --> 
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		
		<!-- Bootstrap Font Icon CSS 아이콘 -->
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="/resources/css/media_query.css">
		
		<link rel="stylesheet" href="/resources/css/headerFooter.css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
			
		*{
		font-family: 'Montserrat', "Noto Sans KR", sans-serif;
		}
		
		.bigBox{
			margin:auto;
			width:1200px;
		}
		
		li{
			list-style:none;
		}
		
		.channel{
			margin-top:20px;
			color:#999999;
		}
		
		.channel>ul>li{
			display:inline;
		}
		
		.channel>ul>li>a{
			color:#999999;
		}
		
		.brandTitle{
			margin:auto;
			margin-top:30px;
			font-weight:700;
			text-align:center;
			font-size:29pt;
		}
		
		.bestBrandList>ul>li{
			display:inline;
			margin-left:-40px;
		}
		
		.bestBrandList>ul>li>a>img{
			border:1px solid #D5D5D5;
			width:220px;
			height:92px;
			margin:10px 25px;
		}
		
		.bestBrandList{
			margin:auto;
			margin-top:30px;
			margin-bottom:45px;
		}
		
		.brandList>ul>li{
			display:inline;
			
		}
		
		.brandList>ul{
			margin-left:-10px;
		}
		
		.brandList>ul>li>a{
			border:1px solid #D5D5D5;
			color:#747774;
			width:30px;
			height:30px;
		}
		.hr1{
			border:1px solid black;
		}
	</style>
</head>
<body>
	<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light topNav">
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
			      <ul class="nav justify-content-end"> 
					  <li class="nav-item">
					    <a class="nav-link text-black-50 fw-bolder" href="/Shoerologue/login.do">로그인</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link text-black-50 fw-bolder" href="/Shoerologue/join.do">회원가입</a>
					  </li>
					</ul>
				</nav>
			</div>
	
	<!-- 로고, 검색창, 마이페이지 -->
	<div class="container psts">
	  <div class="row">
	  	  <!-- 로고 -->
	      <div class="col-5 col-sm-5 col-md-4 col-lg-3 text-center d-flex px-1 logo-scroll mt-4">
              <a href="/main.do"><img class="banner-D" src="/resources/image/mainlogo.png" alt="슈롤로그 로고" width="85%"></a>
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
				<li class="iconli"><a href="#">
					<i class="bi bi-person icon"></i>
					</a>
				</li>
				<li class="iconli"><a href="#">
					<i class="bi bi-heart icon"></i>
					</a>
				</li>
				<li class="iconli"><a href="#">
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
				<a class="nav-link fw-bolder text-white nav-fs" href="/Shoerologue/category/brand/brand.do">BRAND</a>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="/Shoerologue/category/gender/men/men.do" role="button" aria-expanded="false">MEN</a>
				    <ul class="dropdown-menu bg-white dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="/Shoerologue/category/gender/men/men.do">MEN</a></li>
				   		<li><hr class="dropdown-divider "></li>
					 	<li><a class="dropdown-item" href="/Shoerologue/category/gender/men/menSneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="/Shoerologue/category/gender/men/menSports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/men/menDressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/men/menSandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/men/menCasual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/men/menBoots.do">부츠</a></li>
				    </ul>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="/Shoerologue/category/gender/women/women.do" role="button" aria-expanded="false">WOMEN</a>
				    <ul class="dropdown-menu bg-white dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="/Shoerologue/category/gender/women/women.do">WOMEN</a></li>
				   		<li><hr class="dropdown-divider"></li>
					 	<li><a class="dropdown-item" href="/Shoerologue/category/gender/women/womenSneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="/Shoerologue/category/gender/women/womenSports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/women/womenDressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/women/womenSandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/women/womenCasual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/women/womenBoots.do">부츠</a></li>
				    </ul>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="/Shoerologue/category/gender/kids/kids.do" role="button" aria-expanded="false">KIDS</a>
				    <ul class="dropdown-menu bg-white dropDownMenu mt-2">
				    	<li><a class="dropdown-item fw-bolder" href="/Shoerologue/category/gender/kids/kids.do">KIDS</a></li>
				   		<li><hr class="dropdown-divider"></li>
					 	<li><a class="dropdown-item" href="/Shoerologue/category/gender/kids/kidsSneakers.do">운동화</a></li>
					 	<li><a class="dropdown-item" href="/Shoerologue/category/gender/kids/kidsSports.do">스포츠</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/kids/kidsDressShoes.do">구두</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/kids/kidsSandle.do">샌들</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/kids/kidsCasual.do">캐주얼</a></li>
					    <li><a class="dropdown-item" href="/Shoerologue/category/gender/kids/kidsBoots.do">부츠</a></li>
				    </ul>
				</li>
			</ul>
		</div>
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
<!-- body  -->


	<div class="bigBox">
		<div class="channel">
			<ul>
				<li><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
				  <path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z"/>
				</svg>
				<a href="/main.do">HOME</a></li>&nbsp;&nbsp;>&nbsp;&nbsp;
				<li><a href="/Shoerologue/category/brand/brand.do">BRAND</a></li>
			</ul>
		</div>
		<div class="brandBox">
			<div class="brandTitle">BRAND</div>
			<div class="bestBrandList">
				<ul>
					<li><a href="/Shoerologue/category/brand/nike.do"><img src="/resources/image/brandlogo/nike.png"></a></li>
					<li><a href="/Shoerologue/category/brand/nike.do"><img src="/resources/image/brandlogo/adidas.png"></a></li>
					<li><a href="/Shoerologue/category/brand/nike.do"><img src="/resources/image/brandlogo/newbalance.png"></a></li>
					<li><a href="/Shoerologue/category/brand/nike.do"><img src="/resources/image/brandlogo/converse.png"></a></li>
					<li><a href="/Shoerologue/category/brand/nike.do"><img src="/resources/image/brandlogo/vans.png"></a></li>
					<li><a href="/Shoerologue/category/brand/nike.do"><img src="/resources/image/brandlogo/reebok.png"></a></li>
					<li><a href="/Shoerologue/category/brand/nike.do"><img src="/resources/image/brandlogo/nuovo.png"></a></li>
					<li><a href="/Shoerologue/category/brand/nike.do"><img src="/resources/image/brandlogo/jordan.png"></a></li>
					<li><a href="/Shoerologue/category/brand/nike.do"><img src="/resources/image/brandlogo/puma.png"></a></li>
					<li><a href="/Shoerologue/category/brand/nike.do"><img src="/resources/image/brandlogo/hawkins.png"></a></li>
				</ul>
			</div>
		</div>
		<div class="brandList">
			<ul>
				<li><a href="#" class="brandInit">A</a></li>
				<li><a href="#" class="brandInit">B</a></li>
				<li><a href="#" class="brandInit">C</a></li>
				<li><a href="#" class="brandInit">D</a></li>
				<li><a href="#" class="brandInit">E</a></li>
				<li><a href="#" class="brandInit">F</a></li>
				<li><a href="#" class="brandInit">G</a></li>
				<li><a href="#" class="brandInit">H</a></li>
				<li><a href="#" class="brandInit">I</a></li>
				<li><a href="#" class="brandInit">J</a></li>
				<li><a href="#" class="brandInit">K</a></li>
				<li><a href="#" class="brandInit">L</a></li>
				<li><a href="#" class="brandInit">M</a></li>
				<li><a href="#" class="brandInit">N</a></li>
				<li><a href="#" class="brandInit">O</a></li>
				<li><a href="#" class="brandInit">P</a></li>
				<li><a href="#" class="brandInit">Q</a></li>
				<li><a href="#" class="brandInit">R</a></li>
				<li><a href="#" class="brandInit">S</a></li>
				<li><a href="#" class="brandInit">T</a></li>
				<li><a href="#" class="brandInit">U</a></li>
				<li><a href="#" class="brandInit">V</a></li>
				<li><a href="#" class="brandInit">W</a></li>
				<li><a href="#" class="brandInit">X</a></li>
				<li><a href="#" class="brandInit">Y</a></li>
				<li><a href="#" class="brandInit">Z</a></li>
				<li><a href="#" class="brandInit">123</a></li>
				<li><a href="#" class="brandInit">ㄱ</a></li>
				<li><a href="#" class="brandInit">ㄴ</a></li>
				<li><a href="#" class="brandInit">ㄷ</a></li>
				<li><a href="#" class="brandInit">ㄹ</a></li>
				<li><a href="#" class="brandInit">ㅁ</a></li>
				<li><a href="#" class="brandInit">ㅂ</a></li>
				<li><a href="#" class="brandInit">ㅅ</a></li>
				<li><a href="#" class="brandInit">ㅇ</a></li>
				<li><a href="#" class="brandInit">ㅈ</a></li>
				<li><a href="#" class="brandInit">ㅊ</a></li>
				<li><a href="#" class="brandInit">ㅋ</a></li>
				<li><a href="#" class="brandInit">ㅌ</a></li>
				<li><a href="#" class="brandInit">ㅍ</a></li>
				<li><a href="#" class="brandInit">ㅎ</a></li>
			</ul>
		</div>
		<div class="hr1"></div>
		<div class="brandinitBox">
			<div>
				<div class="brandFirstInit">A</div>
				<div class="brandName">
					<ul>
						<li><a href="#">ADIDAS</a></li>
						<li><a href="#">AKIII CLASSIC</a></li>
						<li><a href="#">ASICS</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">B</div>
				<div class="brandName">
					<ul>
						<li><a href="#">BEARPAW</a></li>
						<li><a href="#">BIRKENSTOCK</a></li>
						<li><a href="#">BSQTBYCLASSY</a></li>
						<li><a href="#">Box&amp;Cox</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">C</div>
				<div class="brandName">
					<ul>
						<li><a href="#">CATCHBALL</a></li>
						<li><a href="#">COCOMODS</a></li>
						<li><a href="#">CONVERSE</a></li>
						<li><a href="#">CROCS</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">D</div>
				<div class="brandName">
					<ul>
						<li><a href="#">D.LAVAN</a></li>
						<li><a href="#">DANNER</a></li>
						<li><a href="#">DINOSOLES</a></li>
						<li><a href="#">DISCOVERY</a></li>
						<li><a href="#">DR.MARTENS</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">E</div>
				<div class="brandName">
					<ul>
						<li><a href="#">EARTHUS</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">F</div>
				<div class="brandName">
					<ul>
						<li><a href="#">FEIYUE</a></li>
						<li><a href="#">FILA</a></li>
						<li><a href="#">FIRENZE ATELIER</a></li>
						<li><a href="#">FLORIDA STUDIO</a></li>
						<li><a href="#">FRED PERRY</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">G</div>
				<div class="brandName">
					<ul>
						<li><a href="#">GGOMOOSIN</a></li>
						<li><a href="#">GIANCARIO MORELLI</a></li>
						<li><a href="#">GRENDENE</a></li>
						<li><a href="#">gravis</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">H</div>
				<div class="brandName">
					<ul>
						<li><a href="#">HAWKINS</a></li>
						<li><a href="#">HUNTER</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">I</div>
				<div class="brandName">
					<ul>
						<li><a href="#">IPANEMA</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">J</div>
				<div class="brandName">
					<ul>
						<li><a href="#">J.DAUL</a></li>
						<li><a href="#">JORDAN</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">K</div>
				<div class="brandName">
					<ul>
						<li><a href="#">KKOMOMSHOE</a></li>
						<li><a href="#">KOLCA</a></li>
						<li><a href="#">KOMUELLO</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">L</div>
				<div class="brandName">
					<ul>
						<li><a href="#">LACOSTE</a></li>
						<li><a href="#">Little Diana</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">M</div>
				<div class="brandName">
					<ul>
						<li><a href="#">MACMOC</a></li>
						<li><a href="#">MALIBU SANDALS</a></li>
						<li><a href="#">MELISSA</a></li>
						<li><a href="#">MERCY CROWN</a></li>
						<li><a href="#">MIAMI PROJECT</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">N</div>
				<div class="brandName">
					<ul>
						<li><a href="#">NEW BALANCE</a></li>
						<li><a href="#">NIKE</a></li>
						<li><a href="#">NUOVO</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">P</div>
				<div class="brandName">
					<ul>
						<li><a href="#">POLO</a></li>
						<li><a href="#">POPSOCKETS</a></li>
						<li><a href="#">POSE GANCH</a></li>
						<li><a href="#">PRO-SPECS</a></li>
						<li><a href="#">PUMA</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">R</div>
				<div class="brandName">
					<ul>
						<li><a href="#">RARAGO</a></li>
						<li><a href="#">RED WING</a></li>
						<li><a href="#">REEBOK</a></li>
						<li><a href="#">REVE</a></li>
						<li><a href="#">ROCKFISH</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">S</div>
				<div class="brandName">
					<ul>
						<li><a href="#">2ND ATELIER</a></li>
						<li><a href="#">SAUCONY</a></li>
						<li><a href="#">SKA</a></li>
						<li><a href="#">SKECHERS</a></li>
						<li><a href="#">STARTAS</a></li>
						<li><a href="#">STEFANOROSSI</a></li>
						<li><a href="#">SUPERGA</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">T</div>
				<div class="brandName">
					<ul>
						<li><a href="#">TIMBERLAND</a></li>
						<li><a href="#">TOTETOTE</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">U</div>
				<div class="brandName">
					<ul>
						<li><a href="#">UGG</a></li>
						<li><a href="#">UNPUBLIC</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">V</div>
				<div class="brandName">
					<ul>
						<li><a href="#">VANS</a></li>
						<li><a href="#">VEJA</a></li>
						<li><a href="#">VERBENAS</a></li>
						<li><a href="#">VLADO</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">X</div>
				<div class="brandName">
					<ul>
						<li><a href="#">XEXYMIX</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">123</div>
				<div class="brandName">
					<ul>
						<li><a href="#">2ND ATELIER</a></li>
						<li><a href="#">4T2ND</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㄱ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">그라비스</a></li>
						<li><a href="#">그랜대네</a></li>
						<li><a href="#">꼬무신</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㄴ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">나이키</a></li>
						<li><a href="#">누오보</a></li>
						<li><a href="#">뉴발란스</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㄷ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">다이노솔즈</a></li>
						<li><a href="#">닥터마틴</a></li>
						<li><a href="#">대너</a></li>
						<li><a href="#">드라반</a></li>
						<li><a href="#">디스커버리</a></li>
						<li><a href="#">또떼또떼</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㄹ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">라라고</a></li>
						<li><a href="#">라코스테</a></li>
						<li><a href="#">락피쉬</a></li>
						<li><a href="#">레드윙</a></li>
						<li><a href="#">레브</a></li>
						<li><a href="#">리복</a></li>
						<li><a href="#">리틀다이애나</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㅁ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">마이애미프로젝트</a></li>
						<li><a href="#">마크모크</a></li>
						<li><a href="#">말리부 샌들</a></li>
						<li><a href="#">머씨 크라운</a></li>
						<li><a href="#">멜리사</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㅂ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">박스앤콕스</a></li>
						<li><a href="#">반스</a></li>
						<li><a href="#">버켄스탁</a></li>
						<li><a href="#">베르베나스</a></li>
						<li><a href="#">베어파우</a></li>
						<li><a href="#">베자</a></li>
						<li><a href="#">블라도</a></li>
						<li><a href="#">비에스큐티바이클래시</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㅅ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">세컨드아뜨리에</a></li>
						<li><a href="#">수페르가</a></li>
						<li><a href="#">스카</a></li>
						<li><a href="#">스케쳐스</a></li>
						<li><a href="#">스타타스</a></li>
						<li><a href="#">스테파노로시</a></li>
						<li><a href="#">써코니</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㅇ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">아디다스</a></li>
						<li><a href="#">아식스</a></li>
						<li><a href="#">아키클래식</a></li>
						<li><a href="#">어그</a></li>
						<li><a href="#">어더스</a></li>
						<li><a href="#">언퍼블릭</a></li>
						<li><a href="#">이파네마</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㅈ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">장까를로 모렐리</a></li>
						<li><a href="#">제이다울</a></li>
						<li><a href="#">젝시믹스</a></li>
						<li><a href="#">조던</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㅋ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">캐치볼</a></li>
						<li><a href="#">컨버스</a></li>
						<li><a href="#">코뮤엘로</a></li>
						<li><a href="#">코코모즈</a></li>
						<li><a href="#">콜카</a></li>
						<li><a href="#">크록스</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㅌ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">팀버랜드</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㅍ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">나이키</a></li>
						<li><a href="#">누오보</a></li>
						<li><a href="#">뉴발란스</a></li>
					</ul>
				</div>
				<div class="brandFirstInit">ㅎ</div>
				<div class="brandName">
					<ul>
						<li><a href="#">헌터</a></li>
						<li><a href="#">호킨스</a></li>
						<li><a href="#">휠라</a></li>
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
		     <img class="banner-D" src="/resources/image/mainlogo.png" alt="슈롤로그 로고"  width="45%">
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
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script> 	
</body>
</html>