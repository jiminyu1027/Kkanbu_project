<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

		<!-- Bootstrap Font Icon CSS 아이콘 -->
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    	<!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"> -->
	 	<link rel="stylesheet" href="/resources/css/style.css">
		<link rel="stylesheet" href="/resources/css/headerFooter.css">
		
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
		.mainTitle{
			position:absolute;
			font-size:30px;
			font-style:strong;
			margin-left:30px;
		}
		.faq-box{
			width:60%;
		}
		.faq-title-box{
			border-bottom:1px solid gray;
		}
		.faq-title{
			font-size:20px;
			color:gray;
			text-align:center;
		}
		.faq-q{
			background-color:#EEEEEE;
		}
		.body-box{
			width:1400px;
			margin:auto;
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
					    <a class="nav-link text-black-50 fw-bolder" href="/Shoerologue/member/join.do">회원가입</a>
					  </li>
					</ul>
				</nav>
			</div>
	
	<!-- 로고, 검색창, 마이페이지 -->
	<div class="container psts">
	  <div class="row">
	  	  <!-- 로고 -->
	      <div class="col-5 col-sm-5 col-md-4 col-lg-3 text-center d-flex px-1 logo-scroll mt-4">
              <a href="/"><img class="banner-D" src="/resources/image/mainLogo/mainlogo.png" alt="슈롤로그 로고" width="85%"></a>
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
				<li class="iconli"><a href="/Shoerologue/mypage/claim/myPage.do">
					<i class="bi bi-person icon"></i>
					</a>
				</li>
				<li class="iconli"><a href="/Shoerologue/mypage/shopping/wishlist.do">
					<i class="bi bi-heart icon"></i>
					</a>
				</li>
				<li class="iconli"><a href="/Shoerologue/cart/cart.do">
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
				    <ul class="dropdown-menu bg-black dropDownMenu mt-2">
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
				    <ul class="dropdown-menu bg-black dropDownMenu mt-2">
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
				    <ul class="dropdown-menu bg-black dropDownMenu mt-2">
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
		    <div class="col-0 col-sm-0 col-md-0 col-lg-2"></div>
		</nav>
	</div>
<!-- body  -->

	<div class="empty-box"></div>
	<div class="body-box">
		
		<div class="filter-box">
			<div class="filter-title"><span id="filter-title"><center>고객센터</center></span></div>
			<center><p><a href="/Shoerologue/customerService/cs.do" class="main">FAQ</a></p></center>
			<center><p><a href="/Shoerologue/customerService/notice.do" class="other">공지사항</a></p></center>
			<center><p><a href="/Shoerologue/mypage/memberCounsel/inquiry.do" class="other">1:1 문의</a></p></center>
			<center><p><a href="#" class="other">고객의 소리</a></p></center>
			<center><p><a href="#" class="other">회원 혜택 안내</a></p></center>
			<hr>
			<center><h5>슈롤샵 고객센터</h5></center>
			<center><p class="comNum">1661-0332</p></center>
			<center><div class="smft">평일 09:30~17:30</div></center>
			<center><div class="smft">점심시간 13:00~14:00</div></center>
			<center><div class="smft">주말·공휴일 휴무</div></center>
			<hr>
			<center><h5>은행계좌 안내</h5></center>
			<center><div class="smft">국민 010-101-0101</div></center>
			<center><div class="smft">신한 101-010-1010</div></center>
			<center><div class="smft">농협 210-120-2151</div></center>
			<center><div class="tsft">예금주:㈜깐부 글로벌</div></center>
			
		</div>
		
		<div><span class="mainTitle">FAQ</span></div><br><br>
		<table class="faq-box">
			<thead class="faq-title-box">
				<tr>
					<th class="faq-title">자주 묻는 질문 BEST 10</th>
				</tr>
			</thead>  
    		<tr>
    			<td>
  					<div class="accordion-item">
  						<h2 class="accordion-header" id="headingOne">
    						<button class="accordion-button collapsed faq-q" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
        						Q.회원 정보 수정은 어떻게 하나요?
      						</button>
      					</h2>
	    				<div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
	      					<div class="accordion-body">
								A.▶ 개인정보 수정에서 변경<br><br>
								    회원 정보 수정은 [마이페이지 > 내 정보]에서 변경 가능하며, 핸드폰 번호 변경 시에는 추가 인증 후 변경 가능합니다
					      	</div>
	    				</div>
    				</div>

  				</td>
  			</tr>
  			<tr>
    			<td>
  					<div class="accordion-item">
  						<h2 class="accordion-header" id="headingTwo">
    						<button class="accordion-button collapsed faq-q" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        						Q.회원 아이디와 비밀번호 변경이 가능한가요?
      						</button>
      					</h2>
    				<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      					<div class="accordion-body">
							A.▶ 비밀번호는 변경 가능, 아이디는 변경 불가<br><br>
					
								아이디를 사용하는 경우 아이디는 변경이 불가합니다.<br>
								변경을 원하실 경우 회원탈퇴 후 새로운 아이디로 재가입 후 이용할 수 있습니다.<br>
								재가입은 회원탈퇴 30일 후 가능합니다.<br><br>
								
								비밀번호 변경은 [마이페이지 > 통합회원정보수정]에서 수정하실 수 있습니다.<br>
								개인정보 보호를 위해 비밀번호 변경 시 기존 비밀번호를 입력 후 변경 가능합니다.
				      	</div>
    				</div>
    				</div>
  				</td>
  			</tr>
        	<tr>
    			<td>
  					<div class="accordion-item">
  						<h2 class="accordion-header" id="headingThree">
    						<button class="accordion-button collapsed faq-q" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        						Q.개명으로 인해 이름이 변경되었는데 어떻게 해야하나요?
      						</button>
      					</h2>
    				<div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      					<div class="accordion-body">
								A.▶고객센터 문의<br><br>
				
								개명으로 인해 이름 변경을 원하시는 고객님께서는 ☎ 고객센터 : 1661-0332으로 연락주시면 필요서류 확인 후 등록된 이름 변경이 가능합니다.
				      	</div>
    				</div>
    				</div>
  				</td>
  			</tr>
  			<tr>
    			<td>
  					<div class="accordion-item">
  						<h2 class="accordion-header" id="headingFour">
    						<button class="accordion-button collapsed faq-q" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
        						Q.증빙서류 발급 안내
      						</button>
      					</h2>
    				<div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
      					<div class="accordion-body">
								A.▶당사는 2007.7.1 부터 시행되는 '현금영수증 의무발행제도' 시행에 발맞추어 구매대금의 결제증빙으로 [신용카드매 출전표] 또는 [현금영수증]을 교부하여 드립니다.<br><br>

								(법인세법 제117조, 제117조의 2 및 소득세법 제162조의 2, 제162조의 3)<br><br>
								
								또한 [신용카드매출전표] 또는 [현금영수증]을 교부한 경우, 별도의 세금계산서가 교부 되지 않음을 알려드립니다.<br><br>
								
								(부가가치세법 시행령 제57조 2항)<br><br>
								
								[신용카드매출전표] 또는 [현금영수증(지출증빙용)]을 발급받으신 사업자는 부가가치세법 시행령 제60조 1항에 의거 매입세액을 공제받으실 수 있습니다.<br><br>
								
								※ 현금영수증은 결제하기 단계에서 신청가능합니다.
								※ 현금영수증 신청시, 주민등록번호 미수집으로 인하여 휴대폰번호와 사업자등록번호로 신청 가능합니다.
								※ 현금영수증 미신청시에도 국세청 지정코드(010-000-1234)로 자동발행됩니다.
				      	</div>
    				</div>
    				</div>
  				</td>
  			</tr>
  			<tr>
    			<td>
  					<div class="accordion-item">
  						<h2 class="accordion-header" id="headingFive">
    						<button class="accordion-button collapsed faq-q" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
        						Q.회원가입은 어떻게 할 수 있나요?
      						</button>
      					</h2>
    				<div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
      					<div class="accordion-body">
								A.▶인증 후 가입 가능<br><br>
	
								아이핀 또는 휴대폰 인증을 통해 만 14세 이상 일반회원으로 가입이 가능합니다.
				      	</div>
    				</div>
    				</div>
  				</td>
  			</tr>
  			<tr>
    			<td>
  					<div class="accordion-item">
  						<h2 class="accordion-header" id="headingSix">
    						<button class="accordion-button collapsed faq-q" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
        						Q.회원 탈퇴 후 재가입이 가능한가요?
      						</button>
      					</h2>
    				<div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
      					<div class="accordion-body">
								A.▶고객센터를 통해 복원신청 가능<br><br>
								
								탈퇴한 아이디는 탈퇴한 날로부터 30일간 재가입이 불가합니다.<br>
								해당 기간 내에 재가입을 원하시는 경우 기존에 사용하시던 아이디를 '탈퇴취소'을 통해 복원하여 사용 가능합니다.<br>	
								탈퇴취소는 고객센터 (☎1661-0332)로 연락 시 복원신청 가능합니다.
				      	</div>
    				</div>
    				</div>
  				</td>
  			</tr>
  			<tr>
    			<td>
  					<div class="accordion-item">
  						<h2 class="accordion-header" id="headingSeven">
    						<button class="accordion-button collapsed faq-q" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
        						Q.결제수단 별 환불 시점 및 방법이 궁금합니다.
      						</button>
      					</h2>
    				<div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample">
      					<div class="accordion-body">
								A.▶결제 수단별 환불 반영 기간은 아래와 같습니다.<br><br>
	
								- 신용(체크)카드 : 취소/반품완료일로부터 3~5영업일 소요.<br>
								- PAYCO : 취소/반품완료일로부터 3~5영업일 소요<br>
								- 카카오페이 : 등록된 카드 사용 시 취소/반품완료일로부터 3~5영업일 소요<br>
								카카오머니 사용 시 취소/반품완료 후 즉시 환불 처리<br>
								- 토스 : 등록된 카드 사용 시 취소/반품완료일로부터 3~5영업일 소요<br>
								토스머니 사용 시 취소/반품완료 후 즉시 환불 처리<br>
								- 무통장입금 : 취소/반품완료일로부터 1~3영업일 소요<br>
								- 실시간 계좌이체 : 취소/반품완료일로부터 1~3영업일 소요<br>
								- 휴대폰 소액결제 : 당월 전체 취소 시 자동 승인 취소<br>
								부분 취소 및 익월 취소 시 예치금 또는 등록된 계좌로<br>
								환불 진행(등록된 계좌 환불 시 1~3영업일 소요)<br>
								- 네이버페이 :<br>
								네이버 충전 포인트 사용 시 취소/반품완료 후 즉시 환불 처리<br>
								등록된 체크카드 사용 시 취소/반품완료일로부터 2영업일 소요<br>
								등록된 신용카드 사용 시 취소/반품완료일로부터 3~5영업일 소요<br><br>
								
								※ 신용카드 환불은 카드사 정책에 따라 취소 반영 기간의 차이가 있으니 자세한 사항은 해당 카드사로 문의해 주시기 바랍니다.<br>
								※ 무통장 입금 환불의 경우 환불받으실 계좌정보가 부정확할 경우 환불이 지연될 수 있습니다.<br>
								※ "배송중" 이후 환불 반영 기간은 취소 및 반품 신청 후 접수 처리된 후 상품 회수 및 확인이 완료된 시점에 환불 처리됩니다.
				      	</div>
    				</div>
    				</div>
  				</td>
  			</tr>
  			<tr>
    			<td>
  					<div class="accordion-item">
  						<h2 class="accordion-header" id="headingEight">
    						<button class="accordion-button collapsed faq-q" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
        						Q.주문 취소는 어떻게 하나요?
      						</button>
      					</h2>
    				<div id="collapseEight" class="accordion-collapse collapse" aria-labelledby="headingEight" data-bs-parent="#accordionExample">
      					<div class="accordion-body">
								A.▶ 주문 취소<br><br>

								☎ 고객센터 : 1661-0332 / [고객센터 > 문의하기] 를 통해 문의해 주시기 바랍니다.<br><br>
								
								※ "배송중"부터는 상품이 이미 출고된 상태로 주문취소 불가합니다.<br>
								상품을 수령 받으신 후 반품신청 가능합니다.
				      	</div>
    				</div>
    				</div>
  				</td>
  			</tr>
  			<tr>
    			<td>
  					<div class="accordion-item">
  						<h2 class="accordion-header" id="headingNine">
    						<button class="accordion-button collapsed faq-q" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
        						Q.온라인, 모바일, 오프라인의 가격이 왜 다른가요?
      						</button>
      					</h2>
    				<div id="collapseNine" class="accordion-collapse collapse" aria-labelledby="headingNine" data-bs-parent="#accordionExample">
      					<div class="accordion-body">
								A.▶온라인쇼핑몰 및 오프라인 매장의 소비자 가격은 모두 동일합니다.<br><br>
								
								다만, 온라인쇼핑몰 이벤트가 수시로 진행되기 때문에 가격이 다를 수 있습니다.
				      	</div>
    				</div>
    				</div>
  				</td>
  			</tr>
  			<tr>
    			<td>
  					<div class="accordion-item">
  						<h2 class="accordion-header" id="headingTen">
    						<button class="accordion-button collapsed faq-q" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
        						Q.다른 상품으로 교환할 수 있나요?
      						</button>
      					</h2>
    				<div id="collapseTen" class="accordion-collapse collapse" aria-labelledby="headingTen" data-bs-parent="#accordionExample">
      					<div class="accordion-body">
								A.▶교환의 경우 사이즈 교환만 가능하며, 색상 변경 및 다른상품으로의 교환은 반품(환불)후 재 주문 해주셔야 합니다.
				      	</div>
    				</div>
    				</div>
  				</td>
  			</tr>  		
		</table>
<!-- 	<script src="http://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	 -->
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
		     <img class="banner-D" src="/resources/image/mainLogo/mainlogo.png" alt="슈롤로그 로고"  width="45%">
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
	          <li class="nav-item mb-2"><a href="/Shoerologue/customerService/cs.do" class="nav-link p-0 text-muted">고객센터</a></li>
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