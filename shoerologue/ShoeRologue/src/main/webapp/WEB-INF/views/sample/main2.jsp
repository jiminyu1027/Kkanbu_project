<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
	<head>
		<title>신발의 시작, ShoeRologue</title>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
		
		<style>
		.topNav{
			height:30px;
			font-size:13px;
		}
		
		
		</style>
	</head>
	<body>
	
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light topNav">
		  <div class="container-fluid">
		    <a class="navbar-brand topNav" href="#">신발의 시작, ShoeRologue</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		      </ul>
		      <ul class="nav justify-content-end"> 
				  <li class="nav-item">
				    <a class="nav-link text-black-50 fw-bolder" href="#">로그인</a>
				  </li>
				  
				  <li class="nav-item">
				    <a class="nav-link text-black-50 fw-bolder" href="#">회원가입</a>
				  </li>
				</ul>
		    </div>
		  </div>
		</nav>
	</div>
	
	
	
	
	<div class="container">
	  <div class="row mt-4">
	    
	      <div class="col-5 col-sm-5 col-md-4 col-lg-4 text-center px-1 logo-scroll mt-2">
	        <a href="/burning/main/index.do"><img class="banner-D mt-2" src="resources/image/logo1.png" width="70%"></a>
	      </div>
	    <div class="col-4 col-sm-5 col-md-6 col-lg-5 mt-5">
	      <form class="d-flex">
	        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	        <button class="btn btn-outline-success" type="submit">Search</button>
	      </form>
	    </div>
	     <div class="col-0 col-sm-0 col-md-2 col-lg-3 d-flex justify-content-center align-items-center mt-3">
	      <div class="btn-group" role="group" aria-label="Basic outlined example">
			  
			  <button type="button" class="btn btn-outline"><svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
				  <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
				</svg></button>
			  <button type="button" class="btn btn-outline"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
				  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
				</svg></button>
			  <button type="button" class="btn btn-outline"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
				  <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
				</svg></button>
			</div>
	    </div>
	  </div>
	</div>
	<br>
	
	
	<div class="row">
		
		<nav class="navbar navbar-expand-lg navbar-light">
		<div class="col col-md-2"></div>
		 <div class="col-0 col-sm-0 col-md-2 col-lg-0">
		 <ul class="nav">
		  <li class="nav-item">
		    <a class="nav-link fw-bolder text-dark" href="#">MEN</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link fw-bolder text-dark" href="#">WOMEN</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link fw-bolder text-dark" href="#">KIDS</a>
		  </li>
		</ul>
		 </div>
		 <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		      </ul>
		    
		 
			 <div class="col-0 col-sm-0 col-md-4 col-lg-0">
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			      </ul>
			      <ul class="nav justify-content-end"> 
					  <li class="nav-item">
					    <a class="nav-link text-black fw-bolder" href="#">#핫딜</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link text-black fw-bolder" href="#">#브랜드</a>
					  </li>
					   <li class="nav-item">
					    <a class="nav-link text-black fw-bolder" href="#">#코디</a>
					  </li>
					</ul>
			    </div>
			  </div>
		  <div class="col col-md-2"></div>
		</nav>
	</div>
	
	
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="resources/image/001.png" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="resources/image/002.png" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="resources/image/003.png" class="d-block w-100" alt="...">
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
	
	
	
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	</body>
</html>




<!--
<h1>
	Hello world!  
</h1>

  <P>  The time on the server is </P>
<a href="Board/list.do">Board/list.do</a><br>
<a href="Free/list.do">/Free/list.do</a><br>
<a href="Member/list.do">회원목록으로 이동</a><br>
<a href="Mybatis/board/list.do">MyBatis/board/list.do</a><br>
<a href="Sample/list.do">/Sample/list.do</a><br>
<a href="ajax/list.do">ajax/list.do</a>
-->

