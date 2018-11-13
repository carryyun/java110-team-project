<%@page import="bitcamp.java110.cms.domain.BigTag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Clean Blog - Start Bootstrap Theme</title>

<!-- ===============필수포함=============== -->
<!-- Bootstrap core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- 폰트 추가 -->
<link href="https://fonts.googleapis.com/css?family=Jua"
	rel="stylesheet">
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<link href="/css/ClassCss.css" rel="stylesheet">
<link href="/css/clean-blog.css" rel="stylesheet">
<!-- <link href="/css/category.css" rel="stylesheet"> -->

<link rel="shortcut icon" type="image/x-icon"
	href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
<link rel="mask-icon" type=""
	href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg"
	color="#111" />
<link rel="canonical"
	href="https://codepen.io/nelsonleite/pen/RaGwba?depth=everything&order=popularity&page=4&q=product&show_forks=false" />

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=HI1wEsrM0W8lMjEjZYfu&submodules=geocoder"></script>
<!-- ===============필수포함=============== -->
<!-- ===============필수포함=============== -->
	<!-- Bootstrap core JavaScript -->
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- js 추가 -->
	<script src="/js/clean-blog.js"></script>
	
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script> -->

</head>


<body style="background-color: #F2F4F7">
	<div id="wrap">
		<div class="container mx-auto px-0">
			<!-- Header (스크립트로 임시 inclue) -->
			<div id="row">
    <div class="container col-lg-12 mx-auto">
    <!-- <div id="headerMain"></div> -->
    <jsp:include page="../header.jsp"></jsp:include>
    </div>
    </div>


			<!-- 카테고리 nav (스크립트로 임시 inclue) -->
			<div class="container col-lg-12 mx-auto">
    <jsp:include page="../product/headerNav.jsp"></jsp:include>
    <!-- <div id="headerNav"></div> -->
    </div>

			<!-- Main Content -->
			<div class="container col-lg-12">
				<div class="row">
					<div class="col-lg-3">
						<div class="col">
							<h2>카테고리</h2>
							<ul>
								<c:forEach items="${list}" var="m">
									<li><a href="#">${m.name}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<!-- 오늘의 핫 아이템(카르셀) -->
					<div class="col-lg-9">

						<div id="day-select">
							<span><h2>기간</h2></span> 
					    <div class="box">
					        <label>
						        <input type="radio" name="like" checked="">
						        <span class="yes">원데이</span>
						    </label>
						    <label>
						        <input type="radio" name="like">
						        <span class="no">전체</span>
						    </label>
						</div>
						</div><br><br>
						<div> <h2>요일 선택</h2> <br>
						<div>
							<label for="default1" class="btn btn-default1">
							<strong style="font-size: 16px">월</strong> 
							<input type="checkbox" id="default1" class="badgebox"><span
								class="badge">&check;</span>
							</label> 
								
							<label for="default2" class="btn btn-default2">
							<strong style="font-size: 16px">화</strong> 
							<input type="checkbox" id="default2" class="badgebox"><span 
								class="badge">&check;</span>
							</label>
							
							<label for="default3" class="btn btn-default3">
							<strong style="font-size: 16px">수 </strong>
							<input type="checkbox" id="default3" class="badgebox"><span
								class="badge">&check;</span>
							</label> 
							
							<label for="default4" class="btn btn-default4">
							<strong style="font-size: 16px">목</strong> 
							<input type="checkbox" id="default4" class="badgebox"><span 
								class="badge">&check;</span>
							</label>
							
							<br> 
							
							<label for="default5" class="btn btn-default5">
							<strong style="font-size: 16px">금</strong>
							<input type="checkbox" id="default5" class="badgebox"><span
								class="badge">&check;</span>
							</label> 
							
							<label for="default6" class="btn btn-default6">
							<strong style="font-size: 16px">토</strong> 
							<input type="checkbox" id="default6" class="badgebox"><span
								class="badge">&check;</span>
							</label> 
							
							<label for="default7" class="btn btn-default7">
							<strong style="font-size: 16px">일 </strong>
							<input type="checkbox" id="default7" class="badgebox"><span 
								class="badge">&check;</span>
							</label>
						</div>
						</div>
						<div>
						<div class="Search-Map">
							<div class="col-lg-auto col-md-6 px-12 mx-auto">
								<h2>지역</h2>
								<div>
								<div id="navermap" style="width: 400px; height: 200px;"></div>
								</div>
							</div>
							<button id="ClassSearchBut1">검색</button>
						</div>
						</div>
					</div>



					<!--   </div> -->
					<hr class="FhrBotMargin">
				</div>


				<!--   <div class="row"> -->
				<span id="Result">
				 <span
					class="col-lg-auto col-md-3 px-5 mx-auto"> 
					<span id="ClassSearchResult">검색결과 > 999개
					</span> </span> </span>
			</div>
			<span class="container col-lg-12">
				<button id="ClassRigist">클래스 개강</button>
			</span> 
			<div class="col-lg-12 mx-auto">
				<div class="post-preview">
					<a href="post.html"> <!-- <div class="row"> -->

						<div class="container">
							<div class="row">

								<div class="col-lg-4">
									<article class="card-wrapper">
										<div class="image-holder">
											<a href="#" class="image-holder__link"></a>
											<div class="image-liquid image-holder--original">
												<a href="#"><img alt="1" src="/upload/img/julme.PNG"
													style="width: 100%; height: 100%"></a>
											</div>
										</div>
										<div class="product-description">
											<!-- 제목 -->
											<h1 class="product-description__title">
												<a href="#">자바를 배우자</a>
											</h1>
											<!-- 분류명 , 가격 -->
											<div class="row">
												<div
													class="col-lg-12 product-description__category secondary-text">
													컴퓨터 - 자바</div>
												<div class="col-lg-12 product-description__price">30000원</div>
											</div>
											<hr />
											<!-- 멘토 이름 -->
											<div class="sizes-wrapper">
												<b>멘토 - 고정은</b>
											</div>
											<!-- 주소 -->
											<div class="color-wrapper">
												<b>기본 주소</b>
											</div>
										</div>
									</article>
								</div>

								<div class="col-lg-4">
									<article class="card-wrapper">
										<div class="image-holder">
											<a href="#" class="image-holder__link"></a>
											<div class="image-liquid image-holder--original"
												style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Jeans_BW_2_(3213391837).jpg/543px-Jeans_BW_2_(3213391837).jpg')">
											</div>
										</div>

										<div class="product-description">
											<!-- 제목 -->
											<h1 class="product-description__title">
												<a href="#">자바를 배우자</a>
											</h1>
											<!-- 분류명 , 가격 -->
											<div class="row">
												<div
													class="col-lg-12 product-description__category secondary-text">
													컴퓨터 - 자바</div>
												<div class="col-lg-12 product-description__price">30000원</div>
											</div>
											<hr />
											<!-- 멘토 이름 -->
											<div class="sizes-wrapper">
												<b>멘토 - 고정은</b>
											</div>
											<!-- 주소 -->
											<div class="color-wrapper">
												<b>기본 주소</b>
											</div>
										</div>
									</article>
								</div>

								<div class="col-lg-4">
									<article class="card-wrapper">
										<div class="image-holder">
											<a href="#" class="image-holder__link"></a>
											<div class="image-liquid image-holder--original"
												style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/b/b8/Columbia_Sportswear_Jacket.jpg')">
											</div>
										</div>

										<div class="product-description">
											<!-- 제목 -->
											<h1 class="product-description__title">
												<a href="#">자바를 배우자</a>
											</h1>

											<!-- 분류명 , 가격 -->
											<div class="row">
												<div
													class="col-lg-12 product-description__category secondary-text">
													컴퓨터 - 자바</div>
												<div class="col-lg-12 product-description__price">30000원</div>
											</div>
											<hr />
											<!-- 멘토 이름 -->
											<div class="sizes-wrapper">
												<b>멘토 - 고정은</b>
											</div>
											<!-- 주소 -->
											<div class="color-wrapper">
												<b>기본 주소</b>
											</div>
										</div>
									</article>
								</div>

								<div class="col-lg-4">
									<article class="card-wrapper">
										<div class="image-holder">
											<a href="#" class="image-holder__link"></a>
											<div class="image-liquid image-holder--original"
												style="background-image: url('http://www.publicdomainpictures.net/pictures/20000/nahled/red-shoes-isolated.jpg')">
											</div>
										</div>
										<div class="product-description">
											<!-- 제목 -->
											<h1 class="product-description__title">
												<a href="#">자바를 배우자</a>
											</h1>

											<!-- 분류명 , 가격 -->
											<div class="row">
												<div
													class="col-lg-12 product-description__category secondary-text">
													컴퓨터 - 자바</div>
												<div class="col-lg-12 product-description__price">30000원</div>
											</div>
											<hr />
											<!-- 멘토 이름 -->
											<div class="sizes-wrapper">
												<b>멘토 - 고정은</b>
											</div>
											<!-- 주소 -->
											<div class="color-wrapper">
												<b>기본 주소</b>
											</div>
										</div>
									</article>
								</div>
							</div>
						</div>
				</div>

			</div>
			<hr>

			<!-- Pager -->
			<div class="clearfix">
				<a class="btn btn-primary float-right" href="#">Older Posts
					&rarr;</a>
			</div>
		</div>
	</div>

	<hr>

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<ul class="list-inline text-center">
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<p class="copyright text-muted">Copyright &copy; Your Website
						2018</p>
				</div>
			</div>
		</div>
	</footer>
	</div>
	</div>
	
	<script>
      var map = new naver.maps.Map('navermap');
      var myaddress = '야탑동';// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
      naver.maps.Service.geocode({address: myaddress}, function(status, response) {
          if (status !== naver.maps.Service.Status.OK) {
              return alert(myaddress + '의 검색 결과가 없거나 기타 네트워크 에러');
          }
          var result = response.result;
          // 검색 결과 갯수: result.total
          // 첫번째 결과 결과 주소: result.items[0].address
          // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
          var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
          map.setCenter(myaddr); // 검색된 좌표로 지도 이동
          // 마커 표시
          var marker = new naver.maps.Marker({
            position: myaddr,
            map: map
          });
          // 마커 클릭 이벤트 처리
          naver.maps.Event.addListener(marker, "click", function(e) {
            if (infowindow.getMap()) {
                infowindow.close();
            } else {
                infowindow.open(map, marker);
            }
          });
          // 마크 클릭시 인포윈도우 오픈
          var infowindow = new naver.maps.InfoWindow({
              content: '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
          });
      });
      </script>
</body>

</html>