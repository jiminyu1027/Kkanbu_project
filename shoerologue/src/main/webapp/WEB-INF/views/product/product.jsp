<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.study.vo.*" %>
<%
	ProductVO pvo = (ProductVO)request.getAttribute("pvo");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title><%=pvo.getpNameKr() %> | 슈롤로그</title>
	
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
		
		<!-- Bootstrap Font Icon CSS 아이콘 -->
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    	<link rel="stylesheet" href="/shoerologue/resources/css/style.css">
    	<link rel="stylesheet" href="/shoerologue/resources/css/product.css">
	    <link rel="stylesheet" href="/shoerologue/resources/css/headerFooter.css">
	   
 	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		
		<style>
			@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
		</style>
		<!-- 상품 이미지 페이지 클릭시 사진 변화 -->
		<script>
			$(function(){
				$(".pdSmImgeBox a").click(function(){
					$(".pdImage").attr("src",$(this).attr('href'));
					return false;
				});
			});
		</script>
		<!-- 가격 , 보이기 -->
        <script>
			$(document).ready( function() {
				$(".productSizeBtn").one('click',function(){
					/* $(".hereSize").append($(this).attr('value')," / ");*/
					$(".productTotalPrice").text(comma(<%=pvo.getpPrice()%>));
				return false;
				});
			});
			
			//콤마 정규식
			function comma(str) { 
				 str = String(str); 
				  str = str.replace(/[^\d]+/g, ''); // 숫자만 남김 
				  return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,'); 
			}
			
			var sizeSelectYN = false;
			
			function sizeSelect(obj){
				sizeSelectYN = true;
				var size = obj.textContent;
				
				$("input[name='ctsize']").val(size);
				console.log($("input[name='ctsize']").val());
				
			}
			
			function gotoCart(){
				
				if(sizeSelectYN == false){
					alert("사이즈를 선택해 주세요.");
					return false;
				}else {
					document.frm.submit();
				}
			}
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
			<!-- 대분류 카테고리 -->
			 <div class="col-10 col-sm-8 col-md-6 col-lg-5">
				 <ul class="nav navMenu">
				 	<li class="nav-item">
					<a class="nav-link fw-bolder text-white nav-fs" href="/shoerologue/category/brand.do">BRAND</a>
					</li>
					<li class="nav-item dropdown">
					    <a class="nav-link dropdown-toggle fw-bolder text-white" data-bs-toggle="dropdown" href="/shoerologue/category/gender/men.do" role="button" aria-expanded="false">MEN</a>
					    <ul class="dropdown-menu bg-white dropDownMenu">
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
					    <ul class="dropdown-menu bg-white dropDownMenu">
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
					    <ul class="dropdown-menu bg-white dropDownMenu">
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
	
		<!-- 메뉴 이동 경로 -->
		<div class="bigBox">
			<div class="channel">
				<ul>
					<li><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
					  <path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z"/>
					</svg>
					<a href="/shoerologue">HOME</a></li>&nbsp;&nbsp;>&nbsp;&nbsp;
					<li><%=pvo.getpGender()%></li>&nbsp;&nbsp;>&nbsp;&nbsp;
					<li><%=pvo.getpType() %></li>
				</ul>
			</div>
		</div>
	
	
		<!-- 제품 상세보기 -->
		<div class="bigBox">
			<div class="productBox">
				<div class="productBox2">
					<!-- 상품 이미지 -->
					<div class="productImgBox">
						<div>
						 	<img src="/shoerologue/resources/image/productdetail/<%=pvo.getpFile1()%>" class="pdImage" alt="...">
						</div>
						<div class="pdSmImgeBox">
							<a href="/shoerologue/resources/image/productdetail/<%=pvo.getpFile1()%>">
								<img src="/shoerologue/resources/image/productdetail/<%=pvo.getpFile1()%>" class="pdSmImge" alt="...">
							</a>
							<%
							     if(pvo.getpFile2() != null){    
					    	 %>
							<a href="/shoerologue/resources/image/productdetail/<%=pvo.getpFile2()%>">
								<img src="/shoerologue/resources/image/productdetail/<%=pvo.getpFile2()%>" class="pdSmImge" alt="...">
							</a>
							<%
							    }else{
							%>
							<a href="#"></a>
							<%
							    }
					    	 %>
							<%
							     if(pvo.getpFile3() != null){    
					    	 %>
							<a href="/shoerologue/resources/image/productdetail/<%=pvo.getpFile3()%>">
								<img src="/shoerologue/resources/image/productdetail/<%=pvo.getpFile3()%>" class="pdSmImge" alt="...">
							</a>
							<%
							    }else{
							%>
							<a href="#"></a>
							<%
							    }
					    	 %>
							<%
							     if(pvo.getpFile4() != null){    
					    	 %>
							<a href="/shoerologue/resources/image/productdetail/<%=pvo.getpFile4()%>">
								<img src="/shoerologue/resources/image/productdetail/<%=pvo.getpFile4()%>" class="pdSmImge" alt="...">
							</a>
							<%
							    }else{
							%>
							<a href="#"></a>
							<%
							    }
					    	 %>
							<%
							     if(pvo.getpFile5() != null){    
					    	 %>
							<a href="/shoerologue/resources/image/productdetail/<%=pvo.getpFile5()%>">
								<img src="/shoerologue/resources/image/productdetail/<%=pvo.getpFile5()%>" class="pdSmImge" alt="...">
							</a>
							<%
							    }else{
							%>
							<a href="#"></a>
							<%
							    }
					    	 %>
						</div>
					</div>
					<!-- 상품 내용  -->
					<div class="productBox3">
						<div class="pdText">
						<form id="frm" name="frm" action="/shoerologue/cart/cart.do" method="POST">
							<input type="hidden" name="ctsize" value="">
							<div class="wishShareBtn">
								<a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
									<path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
								</svg></a>&nbsp;&nbsp;&nbsp;
								<a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-share" viewBox="0 0 16 16">
									<path d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z"/>
								</svg></a>
							</div>
							<div class="pdContents">
									<input type="hidden" id="pidx" name="pidx" value="<%=pvo.getPidx()%>">
									<div class="caBrand" id="pBrandKr" name="pBrandKr"><a href="#"><%=pvo.getpBrandKr() %></a></div><br>
									<div class="pTitle" id="pNameKr" name="pNameKr"><%=pvo.getpNameKr() %></div>
									<div class="pContents" id="pNameEng" name="pNameEng"><%=pvo.getpNameEng() %></div>
									<br>
									<span class="pPrice" id="pPrice" name="pPrice">
										<% if(pvo.getpPrice().length() <6) {%>
											<%=pvo.getpPrice().substring(pvo.getpPrice().length()-5,pvo.getpPrice().length()-3) %>,<%=pvo.getpPrice().substring(pvo.getpPrice().length()-3,pvo.getpPrice().length()) %>
										<%}else{ %>
											<%=pvo.getpPrice().substring(pvo.getpPrice().length()-6,pvo.getpPrice().length()-3) %>,<%=pvo.getpPrice().substring(pvo.getpPrice().length()-3,pvo.getpPrice().length()) %>
										<% } %>
									</span>
									<span>원</span>
							</div>
							<div class="hr2"></div>
							<!-- 상품 컬러 -->
							<!--
							<div class="pdColor">
								<table>
									<tr>
										<th height=45>스타일 컬러</th>
										<td width=83><a href="#">WHITE</a></td>
										<td width=83><a href="#">BEIGE</a></td>
										<td width=83><a href="#">RED</a></td>
										<td width=83><a href="#">YELLOW</a></td>
									</tr>
									<tr>
										<th height=35></th>
										<td><a href="#">GREEN</a></td>
										<td><a href="#">NAVY</a></td>
										<td><a href="#">GRAY</a></td>
										<td><a href="#">BLACK</a></td>
										
									</tr>
								</table>
							</div>
							<hr>
							-->
							<!-- 상품 정보 -->
							<div class="productInfo">
								<table>
									<tr>
										<th height=50>통합멤버십 혜택</th>
										<td><span class="blackBold">멤버십 회원 가입 시 <span class="redBold">5,000</span>P 즉시 적립</span></td>
									</tr>
									<tr>
										<th height=50>카드 혜택</th>
										<td><span class="blackBold">무이자 할부</span>
											<a href="#"><span class="redUnderline">혜택보기 ></span></a>
										</td>
									</tr>
									<tr>
										<th height=50>색상코드</th>
										<td><span class="pColor" id="pColor"><%=pvo.getpColor() %></span></td>
									</tr>
									<tr>
										<th>사이즈</th>
										<td>
											<button type="button" class="productSizeBtn" value ="<%=pvo.getpSize().substring(0,3) %>" onclick="sizeSelect(this)"><%=pvo.getpSize().substring(0,3) %></button>
											<button type="button" class="productSizeBtn" value ="<%=pvo.getpSize().substring(4,7) %>" onclick="sizeSelect(this)"><%=pvo.getpSize().substring(4,7) %></button>
											<button type="button" class="productSizeBtn" value ="<%=pvo.getpSize().substring(8,11) %>" onclick="sizeSelect(this)"><%=pvo.getpSize().substring(8,11) %></button>
											<button type="button" class="productSizeBtn" value ="<%=pvo.getpSize().substring(12,15) %>"onclick="sizeSelect(this)"><%=pvo.getpSize().substring(12,15) %></button>
											<button type="button" class="productSizeBtn" value ="<%=pvo.getpSize().substring(16,19) %>"onclick="sizeSelect(this)"><%=pvo.getpSize().substring(16,19) %></button>
											<button type="button" class="productSizeBtn" value ="<%=pvo.getpSize().substring(20,23) %>"onclick="sizeSelect(this)"><%=pvo.getpSize().substring(20,23) %></button>
											<button type="button" class="productSizeBtn" value ="<%=pvo.getpSize().substring(24,27) %>"onclick="sizeSelect(this)"><%=pvo.getpSize().substring(24,27) %></button>
											<button type="button" class="productSizeBtn" value ="<%=pvo.getpSize().substring(28,31) %>"onclick="sizeSelect(this)"><%=pvo.getpSize().substring(28,31) %></button>
										</td>
									</tr>
								</table>
							</div>
							<hr>
							<table>
								<tr>
									<td><div class="hereSize"></div></td>
								</tr>
							</table>
								<div class="productPaymentBox">
									<div class="productTotalPriceBox">
										<table>
											<th height=100>총 결제금액</th>
											<td>
												<div class="totalPriceRight">
													<span class="productTotalPrice"></span>&nbsp;<span>원</span>
												</div>
											</td>
										</table>
									</div>
									<div class="productPaymentBtn">
										<span class="cartBtn"><button type="submit" onclick="gotoCart(); return false;">장바구니</button></span>
										<span class="paymentBtn"><button onclick="location.href='/shoerologue/order/orderpayment.do'">바로구매</button></span>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 상품 상세 정보 -->
		<div class="bigBox">
			<div class="productInfo" id="productInfo">
				<div class="pdDetailMenuBox">
					<a href="#productInfo"><div class="productMenuBtnSel">상품정보</div></a>
					<a href="#productReview"><div class="productMenuBtn">상품후기</div></a>
					<a href="#productQNA"><div class="productMenuBtn">상품 Q&amp;A</div></a>
					<a href="#productCS"><div class="productMenuBtn">배송/교환/반품/AS안내</div></a>
				</div>
				<div class="gap50"></div>
				<div class="gap50"></div>
				<div class="productDetailImg">
					<div><img src="/shoerologue/resources/image/productdetail/<%=pvo.getpFile1()%>" class="pdSmImge" alt="..."></div>
					<%
					     if(pvo.getpFile2() != null){    
			    	 %>
					<div><img src="/shoerologue/resources/image/productdetail/<%=pvo.getpFile2()%>" class="pdSmImge" alt="..."></div>
					<%
					    }else{
					%>
					<div></div>
					<%
					    }
			    	 %>
			    	 <%
					     if(pvo.getpFile3() != null){    
			    	 %>
					<div><img src="/shoerologue/resources/image/productdetail/<%=pvo.getpFile3()%>" class="pdSmImge" alt="..."></div>
					<%
					    }else{
					%>
					<div></div>
					<%
					    }
			    	 %>
			    	 <%
					     if(pvo.getpFile4() != null){    
			    	 %>
					<div><img src="/shoerologue/resources/image/productdetail/<%=pvo.getpFile4()%>" class="pdSmImge" alt="..."></div>
					<%
					    }else{
					%>
					<div></div>
					<%
					    }
			    	 %>
					<%
					     if(pvo.getpFile5() != null){    
			    	 %>
					<div><img src="/shoerologue/resources/image/productdetail/<%=pvo.getpFile5()%>" class="pdSmImge" alt="..."></div>
					<%
					    }else{
					%>
					<div></div>
					<%
					    }
			    	 %>
				</div>
			</div>
			
			<div class="gap100"></div>
			
			<div id="productReview">
				<div class="pdDetailMenuBox">
					<a href="#productInfo"><div class="productMenuBtn">상품정보</div></a>
					<a href="#productReview"><div class="productMenuBtnSel">상품후기</div></a>
					<a href="#productQNA"><div class="productMenuBtn">상품 Q&amp;A</div></a>
					<a href="#productCS"><div class="productMenuBtn">배송/교환/반품/AS안내</div></a>
				</div>
				<br><br>
				<div class="explText">
					<ul>
						<li> ·&nbsp;일반(텍스트) 후기는 <span class="red">500포인트</span>, 포토 후기는 <span class="red">1,000포인트</span>, 동영상 후기는 <span class="red">1,500포인트</span>를 적립해드립니다.
							<br>&nbsp;&nbsp;(동영상 후기는 mp4 형식의 파일만 해당됩니다.)</li>
						<li> ·&nbsp;후기 등록일 이후 최대 3일 이내에 후기 포인트 적립해드립니다. (주말 및 공휴일 제외)</li>
						<li> ·&nbsp;상품 결제 가격이 2만 원 미만인 경우 후기 포인트가 지급되지 않습니다.</li>
						<li> ·&nbsp;구매 확정일로부터 30일 이후에 후기를 등록한 경우 후기 포인트가 지급되지 않습니다.</li>
						<li> ·&nbsp;직접 촬영한 사진 및 동영상이 아닐 경우 포토/동영상 후기에 대한 포인트 지급이 제외됩니다.</li>
						<li> ·&nbsp;동일한 이미지를 사용하여 여러 번 상품 후기를 등록하시는 경우 포토 후기에 대한 포인트는 한 번만 지급됩니다.</li>
					</ul>
				</div>
				<div class="gap50"></div>
				
				<div class="productReviewOpt">
					<div class="sizeSelBox">
						<span>
							<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-rulers" viewBox="0 0 16 16">
								<path d="M1 0a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h5v-1H2v-1h4v-1H4v-1h2v-1H2v-1h4V9H4V8h2V7H2V6h4V2h1v4h1V4h1v2h1V2h1v4h1V4h1v2h1V2h1v4h1V1a1 1 0 0 0-1-1H1z"/>
							</svg>
						</span>	
						<span class="sizeSelect">
							<a href="#">나의 사이즈 선택하기<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
							</svg></a>
						</span>
						<div class="sizeSelect2">나의 사이즈와 비슷한 상품 후기를 바로 확인해보세요.</div>
						<div class="sizeSelectBtn">
							<button><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
							  <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
							</svg>&nbsp;&nbsp;전체삭제</button>
						</div>
					</div>
					<div class="sizeSelBox">
						<span>
							<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-check2-square" viewBox="0 0 16 16">
								<path d="M3 14.5A1.5 1.5 0 0 1 1.5 13V3A1.5 1.5 0 0 1 3 1.5h8a.5.5 0 0 1 0 1H3a.5.5 0 0 0-.5.5v10a.5.5 0 0 0 .5.5h10a.5.5 0 0 0 .5-.5V8a.5.5 0 0 1 1 0v5a1.5 1.5 0 0 1-1.5 1.5H3z"/>
								<path d="m8.354 10.354 7-7a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0z"/>
							</svg>
						</span>
						<span class="sizeSelect">
							<a href="#">나의 사이즈 선택하기<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
							</svg></a>
						</span>
						<div class="sizeSelect2">나의 사이즈와 비슷한 상품 후기를 바로 확인해보세요.</div>
						<div class="sizeSelectBtn">
							<button><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
							  <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
							</svg>&nbsp;&nbsp;전체삭제</button>
						</div>
					</div>
				
				</div>
				
				<div class="gap50"></div>
				
				<div class="pdReviewBox2">
					<div class="gap100"></div>
						<span>총 <span class="redBold">0</span>개의 리뷰가 있습니다.</span>
					<div class="pdReviewList">
						 
						<!-- 리뷰가 있을때 -->
						<!-- 
						<hr>
							<table>
								<tr>
									<td width=30 height=30></td>
									<td width=120>
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
										  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
										</svg>
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
										  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
										</svg>
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
										  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
										</svg>
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
										  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
										</svg>
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
										  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
										</svg>
									</td>
									<td width=150>상품색깔/사이즈</td>
									<td width=550></td>
									<td width=200>유저 아이디</td>
									<td width=150>리뷰 올린 날짜</td>
								</tr>
								<tr>
									<td height=120></td>
									<td>
										<div class="reviewImg">
											<img src="#">
										</div>
									</td>
									<td colspan="4">
										<div class="reviewContents">내용</div>
									</td>
								</tr>
								<tr>
									<td height=30></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td>
										<div class="reviewHelpBtn"><button><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16">
											<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
											<path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
										</svg>&nbsp;&nbsp;도움돼요 0 </button></div>
									</td>
								</tr>
							</table>
						<hr>
						 -->
						
						<!-- 리뷰가 없을때 -->
						<hr>
							<div class="noReview">
								<div><svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentColor" class="bi bi-exclamation-circle" viewBox="0 0 16 16">
								  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
								  <path d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z"/>
								</svg></div>
								<div>등록된 리뷰가 없습니다.</div>
							</div>
						<hr>
						<!-- 
						<center>페이징 처리</center>
						 -->
						<div class="ReviewBtn">
							<button onclick="location.href='/shoerologue/customerService/writeReview.do'"> 상품 후기 작성</button>
						</div>
					</div>
				</div>
			</div>
			
			<div class="gap100"></div>
			
			<div id="productQNA">
				<div class="pdMenuLocation">
					<div class="pdDetailMenuBox">
					<a href="#productInfo"><div class="productMenuBtn">상품정보</div></a>
					<a href="#productReview"><div class="productMenuBtn">상품후기</div></a>
					<a href="#productQNA"><div class="productMenuBtnSel">상품 Q&amp;A</div></a>
					<a href="#productCS"><div class="productMenuBtn">배송/교환/반품/AS안내</div></a>
				</div>
				</div>
				<br><br>
				<div class="explText">
					<ul>
						<li> ·&nbsp;단순 상품비방, 상업적인 내용, 미풍양속 위반, 게시판의 성격에 맞지 않는 글은 통보 없이 삭제될 수 있습니다.</li>
						<li> ·&nbsp;오프라인 매장 재고현황 문의는 ‘<span class="red">전국오프라인매장</span>’ 정보를 참고하시어 해당 매장으로 문의하시면 좀 더 정확한 확인이 가능합니다.</li>
						<li> ·&nbsp;주문/배송/반품 및 AS 등 기타 문의는 <span class="red"> 1:1 상담문의(마이페이지>1:1문의)</span>에 남겨주시기 바랍니다.<br>
						&nbsp;&nbsp;(상품 자체에 대한 문의가 아닌 주문/배송/반품 및 AS 등의 기타문의를 작성하실 경우 1:1문의 메뉴로 글이 이동될 수 있습니다.)</li>
					</ul>
				</div>
				<div>
					<!-- 상품 Q&A가 있을때 -->
					<!-- 
					<hr>
						<table>
							<tr>
								<td width=750 height=60>&nbsp;&nbsp;&nbsp;&nbsp;Q&amp;A제목</td>
								<td width=200 height=60><center>Q&amp;A작성자</center></td>
								<td width=150 height=60><center>Q&amp;A작성일</center></td>
								<td width=100 height=60><center>Q&amp;A답변 완료여부</center></td>
							</tr>
						</table>
					<hr>
					 -->
					<!--  -->
					
					<!-- 상품 Q&A가 없을때 -->
					<hr>
					<div class="noQNA">
						<div><svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentColor" class="bi bi-exclamation-circle" viewBox="0 0 16 16">
							<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
							<path d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z"/>
						</svg></div>
						<div>등록된 상품 Q&amp;A가 없습니다.</div>
					</div>	
					<hr>
					<!--  -->
					<!--<center>페이징 처리</center>-->
					<div class="QnaBtn">
						<button onclick="location.href='/shoerologue/customerService/cs.do'">자주하는 질문 보기</button>
						<button onclick="location.href='/shoerologue/admin/inquiryAsk.do'">Q&amp;A작성</button>
					</div>
				</div>
			</div>
			
			<div class="gap100"></div>
			
			<!-- 배송/교환/반품 -->
			<div id="productCS">
				<div class="pdDetailMenuBox">
					<a href="#productInfo"><div class="productMenuBtn">상품정보</div></a>
					<a href="#productReview"><div class="productMenuBtn">상품후기</div></a>
					<a href="#productQNA"><div class="productMenuBtn">상품 Q&amp;A</div></a>
					<a href="#productCS"><div class="productMenuBtnSel">배송/교환/반품/AS안내</div></a>
				</div>
				<div class="gapMenu"></div>
				<div class="deliText">
					<table>
						<tr>
							<td><span class="blackBold"><center>배송 안내</center></span></td>
							<td>
								<div class="explText">
									<ul>
										<li class="blackBold">배송비</li>
										<li>·&nbsp;2만 원 미만 구매 시 <span class="red">2,500원</span></li>
										<li>·&nbsp;2만 원 이상 구매 시 <span class="red">전액 무료</span>(제주도 및 기타 도선료 추가 지역 포함)</li>
									</ul>
								</div>
								<div class="explText">
									<ul>
										<li class="blackBold">평균 배송일</li>
										<li>·&nbsp;평일 4시 이전 주문 당일 출고됩니다. <span class="red">(온라인 발송에 한함)</span></li>
										<li>·&nbsp;결제 완료 후 평균 2일 소요됩니다. (주말 및 공휴일 제외)</li>
										<li>·&nbsp;택배사의 사정에 따라 다소 지연될 수 있습니다. (대한통운 1588-1255)</li>
										<li>·&nbsp;오프라인 매장 발송은 <span class="red">2~3일 더 소요</span>될 수 있습니다.</li>
									</ul>
								</div>
							</td>
						</tr>
						<tr>
							<td><span class="blackBold"><center>교환/반품/AS</center></span></td>
							<td>
								<div class="explText">
									<ul>
										<li class="blackBold">온라인/오프라인 매장 구분 없이 교환/반품/AS접수가 가능합니다.</li>
										<li>·&nbsp;교환은 사이즈 교환만 가능합니다.</li>
										<li>·&nbsp;매장에 방문하여 접수하시면 택배비 무료입니다. (단, 구매 시 선결제하신 배송비는 환불되지 않습니다.)</li>
										<li>·&nbsp;매장에 방문하여 접수하실 경우 구매내역서를 지참하여 주시기 바랍니다.</li>
										<li>·&nbsp;매장에서 반품 접수를 하신 경우 환불은 온라인 담당자 확인 후 처리됩니다. (확인 기간 2-3일 소요/결제하신 결제수단으로 환불)</li>
										<li>※&nbsp;매장에 방문하여 반품/교환 접수 시 단품 기준 <span class="red">10개 미만 상품</span>만 접수 가능합니다.</li>
										<li>&nbsp;&nbsp;대량 반품/교환은 온라인 사이트를 통해서 접수해주시기 바랍니다. 단순 변심일 경우 택배비 고객 부담)</li>
									</ul>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div id="Accordion_wrap">
					<div class="que">
						<span class="blackBold">교환/반품 안내</span>
					</div>
					<div class="anw">
						<div class="explText">
							<ul>
								<li>·&nbsp;교환은 사이즈 교환만 가능합니다.</li>
								<li>·&nbsp;(전자상거래 등에서의 소비자보호에 관한 법률 제17조(청약 철회등)9항에 의거 소비자의 사정에 의한 청약 철회 시 택배비는 소비자 부담입니다.)</li>
								<li>·&nbsp;제품을 받으신 날부터 7일 이내(상품불량인 경우 30일)에 접수해주시기 바랍니다.</li>
								<li>·&nbsp;접수 시 왕복 택배비가 부과됩니다. (단, 상품 불량, 오배송의 경우 택배비를 환불해드립니다.)</li>
								<li>·&nbsp;접수 후 14일 이내에 상품이 반품지로 도착하지 않을 경우 접수가 취소됩니다.(배송 지연 제외)</li>
							</ul>
							<ul>
								<li class="blackBold">교환/반품(환불)이 <span class="red">불가능</span>한 경우</li>
								<li>·&nbsp;신발/의류를 외부에서 착용한 경우</li>
								<li>·&nbsp;제품을 사용 또는 훼손한 경우, 사은품 누락, 상품 TAG, 보증서, 상품 부자재가 제거 혹은 분실된 경우</li>
								<li>·&nbsp;밀봉포장을 개봉했거나 내부 포장재를 훼손 또는 분실한 경우(단, 제품확인을 위한 개봉 제외)</li>
								<li>·&nbsp;브랜드 박스 분실/훼손된 경우</li>
								<li>·&nbsp;고객 부주의로 상품이 훼손, 변경된 경우</li>
							</ul>
							<ul>
								<li class="blackBold">교환/반품(환불) 배송비 안내</li>
								<li>·&nbsp;왕복 택배비 : 최초 배송비 (2500원) + 반품 배송비(2500원) = 총 5,000원 이 부과됩니다. (선결제 또는 환불금액에서 차감 선택)</li>
								<li>·&nbsp;단, 보내주신 상품이 불량 또는 오배송으로 확인 될 경우 택배비를 환불해드립니다. (선택하신 결제수단으로 택배비 환불)</li>
								<li>·&nbsp;SHOEROLOGUE 지정택배(대한통운) 외 타택배 이용 시 추가로 발생되는 금액은 고객님께서 부담해주셔야 합니다.</li>
							</ul>
						</div>
					</div>
					<div class="que">
						<span class="blackBold">A/S 안내</span>
					</div>
					<div class="anw">
						<div class="explText">
							<ul>
								<li>·&nbsp;오프라인 매장에서도 A/S 접수 가능합니다. (매장 방문 접수 시 택배비 무료, 입점 업체 상품 제외 SHOEROLOGUE 온라인 물류센터, 매장 상품에 한함)</li>
								<li>·&nbsp;외부 착화 후 발견된 상품 이상에 대한 심의/수선 요청은 ‘마이페이지 > 쇼핑내역 > AS 신청’ 또는 고객센터를 통해 접수해주시기 바랍니다.</li>
								<li>·&nbsp;접수 없이 상품을 SHOEROLOGUE로 보내실 경우 확인이 어려워 반송되거나 처리가 늦어질 수 있습니다.</li>
								<li>·&nbsp;접수 완료 후 15일 이내 상품 도착하지 않을 경우 접수가 취소됩니다.</li>
								<li>·&nbsp;매장에서 구매하신 상품의 처리절차를 ‘마이페이지 > 쇼핑내역 > AS 신청’ 에서 확인 할 수 있습니다. (SHOEROLOGUE 회원에 한함)</li>
							</ul>
							<ul>
								<li class="blackBold">AS 불가 항목</li>
								<li>·&nbsp;개인의 착화 습관으로 발생된 힐컵 변형은 A/S 심의 불가합니다.</li>
								<li>·&nbsp;신발 세탁으로 생긴 이염은 A/S 심의, 수선 불가합니다.</li>
								<li>·&nbsp;양말 소재로 생긴 힐컵 주변 보풀 현상은 A/S 심의 불가합니다.</li>
								<li>·&nbsp;에어 손상의 경우 A/S 심의, 수선 불가합니다.</li>
								<li>·&nbsp;착화 후 생긴 가죽 소재의 스크래치 경우 가죽의 특성상 발생하는 자연현상으로 A/S 심의, 수선 불가합니다.</li>
								<li>·&nbsp;코르크 샌들 아웃솔(밑창) 교체 및 풋베드 크리닝 가능합니다.</li>
								<li>·&nbsp;샌들 부품(밴드, 벨크로, 장식) 일부 수선 가능합니다. 스트랩이 외력에 의해 끊어질 경우 A/S 심의 불가 합니다.</li>
								<li>·&nbsp;상품에 따라 아웃솔 전체 / 보조굽 교체 가능합니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="gap150"></div>
		
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
		<!-- 안내사항 클릭시 펼쳐지기 -->
		<script>
			$(".que").click(function() {
				$(this).next(".anw").stop().slideToggle(300);
				$(this).toggleClass('on').siblings().removeClass('on');
				$(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
			});
		</script>
	</body>
</html>