<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang='en' class=''>
<head>
<script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=HI1wEsrM0W8lMjEjZYfu&submodules=geocoder"></script>
<meta charset='UTF-8'>
<meta name="robots" content="noindex">
<link rel="shortcut icon" type="image/x-icon"
	href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
<link rel="canonical"
	href="https://codepen.io/nelsonleite/pen/RaGwba?depth=everything&order=popularity&page=4&q=product&show_forks=false" />
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet' type="text/css" href="/css/ClassCss.css">

</head>
<body>

	<%
	  
	%>

	<form action='/findAll' method='post' enctype="multipart/form-data">

		<div class="container">
			<div class="row">
				<div id="ClassSerach">
					<div class="ClassSearchForm">
						<div class="col-lg-3 mx-auto">
							<div class="category-select">
								<h3>카테고리-대분류</h3>
								<ul>
									<li>중분류</li>
									<li>중분류</li>
									<li>중분류</li>
									<li>중분류</li>
								</ul>
							</div>
						</div>
						<div class="col-lg-10-12 mx-auto">
							<div class="when-select">
								<div id="day">
									<span><h3>날짜</h3></span> <span>원데이</span> <input type="radio"
										name="day"> <span>전체</span> <input type="radio"
										name="day" checked>
								</div>
								<br>
								<div id="day-select">
									<label class="btn btn-success active"> <input
										type="checkbox" autocomplete="off"> <span
										class="glyphicon glyphicon-ok"></span>
									</label> <label class="btn btn-primary"> <input type="checkbox"
										autocomplete="off"> <span
										class="glyphicon glyphicon-ok"></span>
									</label> <label class="btn btn-info"> <input type="checkbox"
										autocomplete="off"> <span
										class="glyphicon glyphicon-ok"></span>
									</label> <label class="btn btn-default"> <input type="checkbox"
										autocomplete="off"> <span
										class="glyphicon glyphicon-ok"></span>
									</label> <label class="btn btn-warning"> <input type="checkbox"
										autocomplete="off"> <span
										class="glyphicon glyphicon-ok"></span>
									</label> <label class="btn btn-danger"> <input type="checkbox"
										autocomplete="off"> <span
										class="glyphicon glyphicon-ok"></span>
									</label>
								</div>
							</div>
						</div>
						<div class="check-map">
							<h3>지역</h3>
							<!--<div id="navermap" style="width:300px;height:200px;"></div>-->
							<img id="map1" src="img/map1.png">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4">
					<article class="card-wrapper">
						<div class="image-holder">
							<a href="#" class="image-holder__link"></a>
							<div class="image-liquid image-holder--original"
								style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/2/24/Blue_Tshirt.jpg')">
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
									class="col-xs-12 col-sm-8 product-description__category secondary-text">
									컴퓨터 - 자바</div>
								<div class="col-xs-12 col-sm-4 product-description__price">30000원</div>
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

				<div class="col-xs-12 col-sm-6 col-md-4">
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
									class="col-xs-12 col-sm-8 product-description__category secondary-text">
									컴퓨터 - 자바</div>
								<div class="col-xs-12 col-sm-4 product-description__price">30000원</div>
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

				<div class="col-xs-12 col-sm-6 col-md-4">
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
									class="col-xs-12 col-sm-8 product-description__category secondary-text">
									컴퓨터 - 자바</div>
								<div class="col-xs-12 col-sm-4 product-description__price">30000원</div>
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

				<div class="col-xs-12 col-sm-6 col-md-4">
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
									class="col-xs-12 col-sm-8 product-description__category secondary-text">
									컴퓨터 - 자바</div>
								<div class="col-xs-12 col-sm-4 product-description__price">30000원</div>
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
	</form>
	<script>
        var map = new naver.maps.Map('navermap');
        var myaddress = '불정로 6';// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
        naver.maps.Service
                .geocode(
                        {
                            address : myaddress
                        },
                        function(status, response) {
                            if (status !== naver.maps.Service.Status.OK) {
                                return alert(myaddress
                                        + '의 검색 결과가 없거나 기타 네트워크 에러');
                            }
                            var result = response.result;
                            // 검색 결과 갯수: result.total
                            // 첫번째 결과 결과 주소: result.items[0].address
                            // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
                            var myaddr = new naver.maps.Point(
                                    result.items[0].point.x,
                                    result.items[0].point.y);
                            map.setCenter(myaddr); // 검색된 좌표로 지도 이동
                            // 마커 표시
                            var marker = new naver.maps.Marker({
                                position : myaddr,
                                map : map
                            });
                            // 마커 클릭 이벤트 처리
                            naver.maps.Event.addListener(marker, "click",
                                    function(e) {
                                        if (infowindow.getMap()) {
                                            infowindow.close();
                                        } else {
                                            infowindow.open(map, marker);
                                        }
                                    });
                            // 마크 클릭시 인포윈도우 오픈
                            var infowindow = new naver.maps.InfoWindow(
                                    {
                                        content : '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
                                    });
                        });
    </script>

</body>
</html>


