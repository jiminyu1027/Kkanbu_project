<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<title>주문/결제 | 슈롤로그</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	
		<!-- 아이콘 크기 -->
		<link rel="stylesheet" href="/resources/css/media_query.css">
		<!-- Bootstrap Font Icon CSS -->
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    	 
		
		<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>	
		<link rel="stylesheet" href="/resources/css/headerFooter.css">	
		<link rel="stylesheet" href="/resources/css/orderpayment.css">	
	
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
		*{
			font-family: 'Montserrat', "Noto Sans KR", sans-serif;
		}

	</style>
	<script src="/js/jquery-3.6.0.min.js"></script>
	<script>
	function goOrderbtn(){
		//console.log("check!!");
		var name = document.frm.name.value;
		var number = document.frm.number.value;
		var email = document.frm.email.value;
		var rname = document.frm.rname.value;
		var rnumber = document.frm.rnumber.value;
		var addr1 = document.frm.addr1.value;
		var addr2 = document.frm.addr2.value;
		
		if(!name){
			alert('이름을 입력해주세요');
			document.getElementById("name").focus();
			return false;
		}else if (!number){
			alert('휴대폰 번호를 입력해주세요');
			document.getElementById("number").focus();
			return false;
		}else if (!email){
			alert('이메일을 입력해주세요');
			document.getElementById("email").focus();
			return false;
		}else if (!rname){
			alert('받으실 분을 입력해주세요');
			document.getElementById("rname").focus();
			return false;
		}else if (!rnumber){
			alert('받으실 분의 휴대폰 번호를 입력해주세요');
			document.getElementById("rnumber").focus();
			return false;
		}else if (!addr1){
			alert('주소를 입력해주세요');
			document.getElementById("zip").focus();
			return false;
		}else if (!number){
			alert('상세주소를 입력해주세요');
			document.getElementById("addr2").focus();
			return false;
		}else if(frm.checkEssen.checked!==true){
			alert("필수항목에 체크해주세요");
			document.getElementById("checkEssen").focus();
			return false;
		}else{
			return true;
			}
		}
	
	function checkFn(type){
		if(type == 'name'){
			var checkName = /^[가-힣]/g;
			var value = document.frm.name.value;
			var span = document.getElementsByClassName("name")[0].getElementsByTagName("span")[0];
			var input = document.getElementsByClassName("name")[0].getElementsByTagName("input")[0];
			
			if(value == ""){
				span.textContent = "이름을 입력해주세요!";
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000";
			}else if(!checkName.test(value)){
				span.textContent = "한글 이름을 입력해주세요:)"
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000"
			}else{
				span.textContent = "";
				input.style.border = "1px solid green"
			}
		}else if(type == 'number'){
			var checkNumber = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/g;
			var value = document.frm.number.value;
			var span = document.getElementsByClassName("number")[0].getElementsByTagName("span")[0];
			var input = document.getElementsByClassName("number")[0].getElementsByTagName("input")[0];
			
			if(value == ""){
				span.textContent = "전화번호를 입력해주세요.";
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000";
			}else if(!checkNumber.test(value)){
				span.textContent = "'-'이 없이 정확한 번호를 입력해주세요:-)"
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000"
			}else{
				span.textContent = "";
				input.style.border = "1px solid green"
			}
		}else if(type == 'email'){
			var checkEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			var value = document.frm.email.value;
			var span = document.getElementsByClassName("email")[0].getElementsByTagName("span")[0];
			var input = document.getElementsByClassName("email")[0].getElementsByTagName("input")[0];
		
			if(value == ""){
				span.textContent = "이메일을 입력해주세요.";
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000";
			}else if(!checkEmail.test(value)){
				span.textContent = "메일형식에 맞게 입력해주세요:)"
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000"
			}else{
				span.textContent = "";
				input.style.border = "1px solid green"
			}
		}else if(type == 'rname'){
			var checkRname = /^[가-힣]/g;
			var value = document.frm.rname.value;
			var span = document.getElementsByClassName("rname")[0].getElementsByTagName("span")[0];
			var input = document.getElementsByClassName("rname")[0].getElementsByTagName("input")[0];
		
			if(value == ""){
				span.textContent = "받으실 분을 입력해주세요.";
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000";
			}else if(!checkRname.test(value)){
				span.textContent = "한글이름을 입력해주세요:)"
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000"
			}else{
				span.textContent = "";
				input.style.border = "1px solid green"
			}
		}else if(type == 'rnumber'){
			var checkRnumber = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/g;
			var value = document.frm.rnumber.value;
			var span = document.getElementsByClassName("rnumber")[0].getElementsByTagName("span")[0];
			var input = document.getElementsByClassName("rnumber")[0].getElementsByTagName("input")[0];
		
			if(value == ""){
				span.textContent = "전화번호를 입력해주세요.";
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000";
			}else if(!checkRnumber.test(value)){
				span.textContent = "'-'이 없이 정확한 번호를 입력해주세요:-)"
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000"
			}else{
				span.textContent = "";
				input.style.border = "1px solid green"
			}
		}else if(type == 'addr2'){
			var checkAddr2 = /^[가-힣a-zA-Z0-9]+$/
			var value = document.frm.addr2.value;
			var span = document.getElementsByClassName("addr2")[0].getElementsByTagName("span")[0];
			var input = document.getElementsByClassName("addr2")[0].getElementsByTagName("input")[0];
		
			if(value == ""){
				span.textContent = "상세주소를 입력해주세요.";
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000";
			}else if(!checkAddr2.test(value)){
				span.textContent = "상세주소를 정확히 입력해주세요!"
				span.style.color = "#ED0000";
				input.style.border = "1px solid #ED0000"
			}else{
				span.textContent = "";
				input.style.border = "1px solid green"
			}
		}
	}
	</script>
	</head>
<body>
<!-- header -->
<header>
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
					<li class="iconli"><a href="/Shoerologue/ll.do">
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
		<!-- 대분류 카테고리 -->
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
		<!-- 핫딜,베스트,코디 nav menu -->
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
</header>

<!-- 주문/결제 section -->
<section>
	<form name="frm" action="#" method="POST" autocomplete="off">
		<div class="sectionBox">
			<span class="orderHead">주문 / 결제</span>
			<div class="textHead">주문리스트</div>
		<!--주문/결제 content -->
			<div class="cartBox1 my-3">
				<div class="cartBox2 d-flex align-items-center">
					<div class="d-flex align-items-center justify-content-center">
					<span class="pOptionInfo">상품옵션정보</span>
					</div>
					<div class="d-flex align-items-center justify-content-center">
					<span class="pAmount">수량</span>
					</div>
					<div class="d-flex align-items-center justify-content-center">
					<span class="pPrice">상품금액</span>
					</div>
					<div class="d-flex align-items-center justify-content-center">
					<span class="pTotal">합계금액</span>
					</div>
					<div class="d-flex align-items-center justify-content-center">
					<span class="pDeli">배송비</span>
					</div>
				</div>
			</div>
		<!-- 상품정보 -->
			<div class="infoBox">
				<table>
						<tr>
							<td class="imgSize"><img src="/resources/image/tim.jpg" width="110px"></td>
							<td class="prodIntro">
								<span class="pBrand">VANS</span>
								<div class="pTitle">OLD SCOOL</div>
								<div>
								<span class="pColor">WHITE / BLACK</span>
								</div>	
								<span class="pSize">230</span>
							</td>
							<td class="textBox">
							  	<span class="pAmountOp">1</span>
							</td>
							<td class="textBox2">
								<div class="textBox3">
								<span class="pPriceVal1">29,000</span>
								<span class="won1">원</span>
								</div>
							</td>
							<td class="textBox2">
								<div class="textBox3">
								<span class="pPriceVal2">29,000</span>
								<span class="won2">원</span>
								</div>
							</td>
							<td class="textBox2">
								<div class="textBox3">
								<span class="pPriceVal1">0</span>
								<span class="won1">원</span>
								</div>
							</td>
						</tr>
					</table>
			</div>
			<div class="bullet-right">
				<span class="bullet-text">ㆍ 상품수량 및 옵션변경은 상품상세 또는 장바구니에서 가능합니다.</span>
			</div>
			<!-- 주문자 정보 -->
		<div class="contentBox">
			<div class="ordererHead">주문고객정보
			<span class="redEssen">*표는 필수 입력 사항입니다.</span></div>
			<div class="orderBox">
				<div class="orderBox2 d-flex align-items-center">
			<table>
				<colgroup>
					<col style="width:165px;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th>이름<span class="colorRed">*</span></th>
						<td>
								<div class="input-wrap name" style="width:350px;">
									<input type="text" class="name" id="name" name="name" onblur="checkFn('name')">
									<span class="checkSpan"></span>
								</div>
						</td>
					</tr>
					<tr>
						<th>휴대폰번호<span class="colorRed">*</span></th>
						<td>
							<div class="input-wrap number" style="width:350px;">
								<input type="text" id="number" name="number" onblur="checkFn('number')" placeholder="휴대폰 번호를 '-' 없이 입력해 주세요." maxlength="11">
								<span class="checkSpan"></span>
							</div>
						</td>
					</tr>
					<tr>
						<th>이메일<span class="colorRed">*</span></th>
						<td>
							<div class="input-wrap email" style="width:350px;">
								<input type="text" id="email" name="email" onblur="checkFn('email')">
								<span class="checkSpan"></span>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			</div>
			</div>
			<!-- 배송지 입력 -->
			<div class="ordererHead">배송 정보</div>
			<div class="orderBox">
				<div class="orderBox2 d-flex align-items-center">
			<table>
				<colgroup>
					<col style="width:165px;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th>배송지 선택</th>
						<td>
							<div class="radio-wrap">
								<input type="radio" id="check-radio-input1" name="location" value="location1">
								<label for="check-radio-input1">
								<span class="ordererAddr">주문자와 동일</span></label>
								<input type="radio" id="check-radio-input2" name="location" value="location2" checked>
								<label for="check-radio-input2">
								<span class="newAddr">신규입력</span></label>
							</div>
						<td>
					</tr>
					<tr>
						<th>이름<span class="colorRed">*</span></th>
						<td><div class="input-wrap rname">
									<input type="text" id="rname" name="rname" onblur="checkFn('rname')" placeholder>
									<span class="checkSpan"></span>
								</div>
						</td>
					</tr>
					<tr>
						<th>휴대폰번호<span class="colorRed">*</span></th>
						<td><div class="input-wrap rnumber">
									<input type="text" id="rnumber" name="rnumber" onblur="checkFn('rnumber')" placeholder="휴대폰 번호를 '-' 없이 입력해 주세요." maxlength="11">
									<span class="checkSpan"></span>
								</div>
						</td>
					</tr>
					<tr>
						<th class="addr-header">주소<span class="colorRed">*</span></th>
						<td>
							<div class="zip-code">
								<input type="text" name="zip" id="zip" class="zip" placeholder="우편번호" readonly onclick="alert('우편번호를 검색해주세요:D')">
								<input type="button" value="우편번호검색" onclick="zipbtn();" class="findZipbtn">
							</div>
							<div class="address">
								<input type="text" name="addr1" id="addr1"  class="addrLocal" title="기본주소" readonly onclick="alert('우편번호를 검색해주세요:D')">
							</div>
							<div class="address addr2">
								<input type="text" name="addr2" id="addr2" class="addrLocal" onblur="checkFn('addr2')" title="상세주소">
								<span class="checkSpan"></span>
							</div>
						</td>
					</tr>
					<tr>
						<th class="addr-header">배송메세지</th>
						<td>
							<div class="select_wrap">
								<select>
								<option>배송 시 요청사항을 선택해주세요:)</option>
								<option>부재시 문 앞에 두고 가주세요</option>
								<option>부재시 경비실에 맡겨주세요</option>
								<option>직접입력</option>
								</select>
								<input type="text" class="deliMessage" name="oMessage" value="" maxlength="40" placeholder="배송메세지는 40자 이내로 입력해주세요.">
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			</div>
			</div>
				
			<!-- 결제수단 선택-->
			<div>
				<div class="ordererHead pt-4">결제수단선택</div>
			</div>
			<div class="orderBox mt-2 py-3">
				<label class="box-radio-input"><input type="radio" name="payment" value="" checked><span>신용/체크카드</span></label>
				<label class="box-radio-input"><input type="radio" name="payment" value=""><span>무통장입금</span></label>
				<label class="box-radio-input"><input type="radio" name="payment" value=""><span>계좌이체</span></label>
				<label class="box-radio-input"><input type="radio" name="payment" value=""><span>휴대폰결제</span></label>
					
					<!-- 무통장입금 주의사항 -->
					<div class="cautionBox2" style="width:100%">
						<span class="caution1"><i class="bi bi-exclamation-circle" style="font-size: 18px;"></i> 무통장 입금(가상계좌)는 주문하신 후 3일 이내(주문일 포함)에 주문하신 금액을 정확히 입금해 주셔야 합니다.</span>
						<ul class="ulText2">
							<li>계좌번호 : 1회 주문에 한하여 발급되는 1회성 계좌로 주문 완료 시 주문 상세내역 또는 고객님의 휴대전화로 발송되는 SMS로 확인하실 수 있습니다.</li>
							<li>예금주 : ㈜깐부코리아</li>
						</ul>
					</div>	
					<!-- 품절 주의사항 -->
					<div class="cautionBox" style="width:100%">
						<span class="caution1"><i class="bi bi-exclamation-circle" style="font-size: 18px;"></i> 품절 취소 안내</span>
						<ul class="ulText">
							<li>상품 품절로 인해 주문 후 취소될 수 있습니다. 
							<br>
							품절 취소 시 결제하신 수단으로 자동 환불됩니다.
							<br>
							※ 결제하신 수단으로 환불이 불가능할 경우 별도 안내드립니다.</li>
						</ul>
					</div>	
			</div>
			<!-- 주문동의-->
			<div class="agreeBox">
				<div class="ordererHead pt-4">주문동의</div>
			</div>
			<div class="orderBox mt-2 py-3">
				<div id="Accordion_wrap">
				     <div class="que">
				      <span class="essentialBox">
				      <input type="checkbox" id="checkEssen">
				      <label for="checkEssen"></label>
				      <span class="essential"> [필수]</span>주문내역에 대한 동의
				     </div>
				     <div class="anw">
				      <span>주문하는 상품, 가격, 배송정보, 할인내역 등을 최종 확인 하였으며, 구매에 동의합니다. (전자상거래법 제 8조 제2항)</span>
				     </div>
				 </div>
			</div>
			<div class="bottom-button-wrap">
				<input type="button" id="gotomain" name="gotomain" class="gotomain" onclick="gotomainbtn()" value="돌아가기">
				<input type="button" id="goOrder2" name="goOrderbt2" class="orderb2" onclick="goOrderbtn(); return false;" value="주문하기">
			</div>
		</div>
			<!-- 우측 결제 확인 창-->
			<div class="order-payment-box" id="orderPaymentBox">
				<h4 class="payment-head">결제정보</h4>
					<ul class="paymentInfo ulText">
						<li>
							<div class="payment-text">
								<span class="txt">총 정상가</span>
								<span class="payment-sum" id="paymentsum">29,000
								<span class="won">원</span></span>
							</div>
						</li>
						<li>
							<div class="payment-text">
								<span class="txt">총 배송비</span>
								<span class="payment-sum" id="deliverysum">5,000
								<span class="won">원</span></span>
							</div>
						</li>
						<li>
							<div class="payment-text">
								<span class="txt">총 할인금액</span>
								<span class="payment-sum" id="discountsum">0
								<span class="won">원</span></span>
							</div>
						</li>
						<li>
							<div class="payment-text">
								<span class="txt">포인트사용</span>
								<span class="payment-sum" id="usePoint">0
								<span class="won">P</span></span>
							</div>
						</li>
						<li>
							<div class="payment-text">
								<span class="txt">총 배송비</span>
								<span class="payment-sum" id="paymentsum">5,000
								<span class="won">원</span></span>
							</div>
						</li>
					</ul>
					<div>
						<span class="totalSum">총 결제예정금액</span>
						<span class="payment-sum2" id="totalPaymentPrice">29,000
						<span class="won">원</span></span>
					</div>
					<div class="btnBox">
						<input type="button" name="orderbt1" id="orderb1" class="orderbtn1" onclick="goOrderbtn(); return false;" value="결제하기">
					</div>
			</div>
		</div>
	</form>
	<!-- 우측하단 TOP 이동 배너 -->
	<a href="#top">
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-circle-fill top fixed" viewBox="0 0 16 16">
	  <path d="M16 8A8 8 0 1 0 0 8a8 8 0 0 0 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
	</svg></a>
</section>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function zipbtn(){
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var roadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 참고 항목 변수
	
	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if(extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('zip').value = data.zonecode;
	            document.getElementById("addr1").value = roadAddr;
	            document.getElementById("addr1").value = data.jibunAddress;
	        }
	    }).open();
	}

	$(".que").click(function() {
		   $(this).next(".anw").stop().slideToggle(300);
		  $(this).toggleClass('on').siblings().removeClass('on');
		  $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
		});
	

</script>
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
	    <div class="justify-content-between pt-4 pb-1 mt-4 mb-1 border-top">
	  	  사업자정보확인 | 개인정보처리방침 | 이용약관 | 멤버십 이용약관 | 위치 정보 서비스 이용약관 | 구매안전서비스 가입사실확인<br><br>
	  	  <p/>
	   	   본 상품의 상품 이미지 저작권은 ㈜깐부코리아에 있으며 내용의 무단복제를 금합니다.<br>
	      COPYRIGHT &copy;KKANBU KOREA CO,LTD. ALL RIGHTS RESERVED.
	    </div>
	  </footer>
	 </div>
	</div>	
	<!-- bootstrap js -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>