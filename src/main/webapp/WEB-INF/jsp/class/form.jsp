<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html><html lang='en' class=''>
<head>
<script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=HI1wEsrM0W8lMjEjZYfu&submodules=geocoder"></script>
<meta charset='UTF-8'>
<meta name="robots" content="noindex">
<link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
<link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
<link rel="canonical" href="https://codepen.io/nelsonleite/pen/RaGwba?depth=everything&order=popularity&page=4&q=product&show_forks=false" />
<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet' type="text/css" href="/css/ClassCss.css">

</head>
<body>

<%
	
%>

<form action='/findAll' method='post' enctype="multipart/form-data">
<div id="ClassSearchBoard">
      <div id="ClassCategory">
       <h2>카테고리-대분류</h2>
        <ul>
            <li>카테고리-중분류</li>
            <li>카테고리-중분류</li>
        </ul>
      </div>
      <div id="day">
        <h2>날짜</h2>
         <div id="butcheck1">
          <button><strong>원데이</strong></button>
          <button><strong>전체</strong></button>
         </div>
         <div id="weekcheck">
          <div>
           <button class="week">월</button> <button class="week">화</button> <button class="week">수</button> <button class="week">목</button> 
          </div>
          <div>
           <button class="week">금</button> <button class="week">토</button> <button class="week">일</button>
          </div>
         </div>
      </div>
      <div id="checkmap">
          <h2>지역</h2>
          <div id="navermap" style="width:100%;height:200px;"></div>
          <!-- <img id="map" src="/img/map1.png" alt="지도1">
          <img id="detailmap" src="/img/detailmap.png" alt="지도2"> -->
      </div>
          <button id="classSearchbut1"><h2>검색</h2></button>
    </div>
    <div id="Result">
       <div id="ClassSearchResult"> 검색결과 > 999개 </div>
       <button id="ClassRigist"><h4>클래스 개강</h4></button>
    </div>
    <!--<div id="ClassList">
       <span id="MentorClass">
           <img id="Class1" src="../img/Class.jpg" alt="클래스소개사진1"><br>
           <span>비트캠프와 아이들</span> <br>
           <span><small>30000</small></span><br>
           <span><small>별점</small></span><span><small>기본 주소</small></span>
           <img class="mentor" src="../img/mentor1.jpg" alt="멘토소개사진1">
       </span>
       <span id="MentorClass">
           <img id="Class1" src="../img/Class.jpg" alt="클래스소개사진1"><br>
           <span>비트캠프와 아이들</span> <br>
           <span><small>30000</small></span><br>
           <span><small>별점</small></span><span><small>기본 주소</small></span>
           <img class="mentor" src="../img/mentor1.jpg" alt="멘토소개사진1">
       </span>
    </div>-->
    <!-- 여기 아래부터 bootstrap -->
    <div class="container">
	<div class="row">

		<div class="col-xs-12 col-sm-6 col-md-4">
			<article class="card-wrapper">
				<div class="image-holder">
					<a href="#" class="image-holder__link"></a>
					<div class="image-liquid image-holder--original" style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/2/24/Blue_Tshirt.jpg')">
					</div>
				</div>
				<div class="product-description">
					<!-- 제목 -->
					<h1 class="product-description__title">
						<a href="#">자바를 배우자</a>
					</h1>
					<!-- 분류명 , 가격 -->
					<div class="row">
						<div class="col-xs-12 col-sm-8 product-description__category secondary-text">
							컴퓨터 - 자바
						</div>
						<div class="col-xs-12 col-sm-4 product-description__price">30000원</div>
					</div>
					<hr />
					<!-- 멘토 이름 -->
					<div class="sizes-wrapper"><b>멘토 - 고정은</b></div>
					<!-- 주소 -->
					<div class="color-wrapper"><b>기본 주소</b></div>
				</div>
			</article>
		</div>
		
		<div class="col-xs-12 col-sm-6 col-md-4">
			<article class="card-wrapper">
				<div class="image-holder">
					<a href="#" class="image-holder__link"></a>
					<div class="image-liquid image-holder--original" style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Jeans_BW_2_(3213391837).jpg/543px-Jeans_BW_2_(3213391837).jpg')">
					</div>
				</div>

				<div class="product-description">
					<!-- 제목 -->
					<h1 class="product-description__title">
						<a href="#">자바를 배우자</a>
					</h1>
					<!-- 분류명 , 가격 -->
					<div class="row">
						<div class="col-xs-12 col-sm-8 product-description__category secondary-text">
							컴퓨터 - 자바
						</div>
						<div class="col-xs-12 col-sm-4 product-description__price">30000원</div>
					</div>
					<hr />
					<!-- 멘토 이름 -->
					<div class="sizes-wrapper"><b>멘토 - 고정은</b></div>
					<!-- 주소 -->
					<div class="color-wrapper"><b>기본 주소</b></div>
				</div>
			</article>
		</div>
		
		<div class="col-xs-12 col-sm-6 col-md-4">
			<article class="card-wrapper">
				<div class="image-holder">
					<a href="#" class="image-holder__link"></a>
					<div class="image-liquid image-holder--original" style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/b/b8/Columbia_Sportswear_Jacket.jpg')">
					</div>
				</div>

				<div class="product-description">
					<!-- 제목 -->
					<h1 class="product-description__title">
						<a href="#">자바를 배우자</a>
					</h1>

					<!-- 분류명 , 가격 -->
					<div class="row">
						<div class="col-xs-12 col-sm-8 product-description__category secondary-text">
							컴퓨터 - 자바
						</div>
						<div class="col-xs-12 col-sm-4 product-description__price">30000원</div>
					</div>
					<hr />
					<!-- 멘토 이름 -->
					<div class="sizes-wrapper"><b>멘토 - 고정은</b></div>
					<!-- 주소 -->
					<div class="color-wrapper"><b>기본 주소</b></div>
				</div>
			</article>
		</div>
		
		<div class="col-xs-12 col-sm-6 col-md-4">
			<article class="card-wrapper">
				<div class="image-holder">
					<a href="#" class="image-holder__link"></a>
					<div class="image-liquid image-holder--original" style="background-image: url('http://www.publicdomainpictures.net/pictures/20000/nahled/red-shoes-isolated.jpg')">
					</div>
				</div>
				<div class="product-description">
					<!-- 제목 -->
					<h1 class="product-description__title">
						<a href="#">자바를 배우자</a>
					</h1>

					<!-- 분류명 , 가격 -->
					<div class="row">
						<div class="col-xs-12 col-sm-8 product-description__category secondary-text">
							컴퓨터 - 자바
						</div>
						<div class="col-xs-12 col-sm-4 product-description__price">30000원</div>
					</div>
					<hr />
					<!-- 멘토 이름 -->
					<div class="sizes-wrapper"><b>멘토 - 고정은</b></div>
					<!-- 주소 -->
					<div class="color-wrapper"><b>기본 주소</b></div>
				</div>
			</article>
		</div>
	</div>
</div>
</form>
<script>
      var map = new naver.maps.Map('navermap');
      var myaddress = '불정로 6';// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
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


    