<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="/css/owl.carousel.css" rel="stylesheet">
<script src="/vendor/jquery/jquery.min.js"></script>
<style>
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>
</head>
<body>
<div class="container" style="margin-bottom:160px">
	<div class="row">

<!-- 	<div class="container">
		<div class="row"> -->


			<h2>상품 상세보기</h2>
			<hr class="FhrBotMargin">

			<div class="col-lg-12 col-md-12 text-center">

<<<<<<< HEAD
			<div class="row">
				<aside class="col-lg-7">
					<article class="gallery-wrap">
						<div class="img-big-wrap">
							<div>
	<div class="text-center" id="main-carousel">
            <!--Carousel Wrapper-->
            <div id="carousel-banner-prdtDetail" class="carousel slide carousel-fade" data-ride="carousel">
                <!--Indicators--> 
                <ol class="carousel-indicators" id="carousel-ol-prdtPhot">
                    <li data-target="#carousel-banner-prdtDetail" data-slide-to="0"><img class="w-100 h-100" src="/upload/img/banner_1.png" alt="First"></li>
                    <li data-target="#carousel-banner-prdtDetail" data-slide-to="1" class="active"><img style="border:1px solid rgb(217,217,217);" class="w-100 h-100" src="/upload/img/banner_2.png" alt="Second"></li>
                    <li data-target="#carousel-banner-prdtDetail" data-slide-to="2"><img class="w-100 h-100" src="/upload/img/banner_3.png" alt="Third"></li>
                </ol>
                <!--/.Indicators-->
                <!--Slides-->
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item">
                        <div class="view">
                            <img class="prdtDetailImg" src="/upload/img/banner_1.png" alt="First slide">
                        </div>
                    </div>
                    <div class="carousel-item active">
                        <!--Mask color-->
                        <div class="view">
                            <img class="prdtDetailImg " src="/upload/img/banner_2.png" alt="Second slide">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <!--Mask color-->
                        <div class="view">
                            <img class="prdtDetailImg" src="/upload/img/banner_3.png" alt="Third slide">
                        </div>
                    </div>
                </div> 
                <!--/.Slides-->
            </div>

        <!-- main carousel main-->
    </div>
							</div>
						</div>
					</article>
				</aside>
				
				<div class="col-lg-5 px-0">
						<div class="text-left">
							<div style="font-size: 1.5rem; font-weight:700;">
							    ${product.titl}
							</div>
							<div class="mb-1" style="font-size: 0.75rem;font-weight: 300">
							    ${product.mentee.nick} 회원
							</div>
							<div class="mb-3">
							<%
                              Product p = (Product) request.getAttribute("product");
                              for (int i = 0; i < 5; i++) {
                                if (i < p.getStar()) {
                            %>
                            <img alt="star-on-big" src="/upload/img/raty/star-on-big.png">
                            <%
                              } else {
                            %>
                            <img alt="star-off-big" src="/upload/img/raty/star-off-big.png">
                            <%
                              }
                              }
                            %>
							</div>
							<div id="transPric" class="mb-3" style="font-size: 1.75rem; font-weight: 700;">
								${product.pric} 원
							</div>

							<div class="mb-3">
								<div>배송비 ${product.deli}원</div>
							</div>

							<hr class="FhrMargin">
							<!---->
							<div class="row">
								<div class="col-lg-12">
								    <div class="row">
								        <div class="col-lg-12">
								            <div style="float: left;">수량</div>
								            <div style="float: left; font-size: 12px; margin-top: 4px; color: #999">(남은수량: ${product.stock}개)</div>
								        </div>
								        <div class="col-lg-4">
								            <button onclick="cntM()" style="width: 20px; height: 26px; margin-top: 10px">-</button>
	                                        <input type="number" id="inputCnt" value="1" maxlength="2" style="text-align:center ;width:35px; height:26px; margin-left: -5px; margin-right: -5px" oninput="checkLeng(this)" onchange="changePric(value)">
	                                        <button onclick="cntP()" style="width: 20px; height: 26px">+</button>
								        </div>
								        <div class="col-lg-8 px-0">
		                                        <div class="col-lg-5 text-right pl-0" style="float: left;margin-top: 10px">총 결제금액</div>
	                                            <div class="col-lg-7 text-left px-0" style="float: left;font-weight: 600; font-size: 1.5rem" id="num">${product.pric + product.deli}원</div>
                                        </div>
								    </div>
								</div>
							</div>

							<hr class="FhrMargin">
							<a href="#" class="btn btn-lg btn-primary">
								구매하기 </a> 
							<a href="#" class="btn btn-lg btn-outline-primary">
							<i class="fas fa-shopping-cart"></i> 장바구니</a>
						</div> <!-- <div class="text-left"> -->
				</div>
			</div> <!-- <div class="row"> -->
		</div> <!-- <div class="col-lg-12 col-md-12 text-center"> -->
	</div><!-- <div class="row"> -->
</div><!-- <div class="container"> -->
<script>
$(document).ready(function(){
    var check = parseInt($('input#inputCnt').val());
    
    var getPric = parseInt(${product.pric});
    var getDeli = parseInt(${product.deli});
    var total =  String(getPric+getDeli);
    total = total.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
    document.getElementById('num').innerHTML=(total+"원");
});

function cntP(){
    var cnt = parseInt($('input#inputCnt').val()) +1;
    if(cnt>${product.stock}) cnt = ${product.stock};
    if(cnt>99) cnt=99;
    
    $('input#inputCnt').val(cnt);
    changePric(cnt);
}
function cntM(){
    var cnt = parseInt($('input#inputCnt').val()) -1;
    if(cnt<1) cnt=1;
    $('input#inputCnt').val(cnt);
    changePric(cnt);
}

function changePric(cnt){
    var check = parseInt($('input#inputCnt').val());
    if(check<1) check=1;
    
    check = parseInt($('input#inputCnt').val());
    if(check>${product.stock}) check = ${product.stock};
    if(check>99) check=99;
    
    var getPric = parseInt(${product.pric}) * cnt;
    var getDeli = parseInt(${product.deli});
    var total =  String(getPric+getDeli);
    total = total.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
    document.getElementById('num').innerHTML=(total+"원");
}
function checkLeng(obj){
    if (obj.value.length > obj.maxLength){
        obj.value = obj.value.slice(0, obj.maxLength);
      }  
    if( obj.value > ${product.stock}){
        obj.value = ${product.stock};
    }
    if( obj.value < 1){
        obj.value = 1;
    }
}
</script>
<%-- =======
				<div class="row">
					<aside class="col-lg-5">
						<article class="gallery-wrap">
							<div class="img-big-wrap">
								<div>
									<img id="prod_img" class="lazy" data-original="${product.phot}"
										alt="${product.phot}">
									<!-- <a href="#" style="width: 100%"></a> -->
								</div>
							</div>
						</article>
					</aside>

					<aside class="col-lg-7">
						<article class="card-body">
							<div class="text-left">
								<h2 class="title mb-3">${product.titl}</h2>
								<br>

								<dl class="param param-feature">
									<dt>
										<h4>가격</h4>
									</dt>
									<dd>${product.pric}원</dd>
									<input type="hidden" id="pric" value="${product.pric}">
								</dl>

								<dl class="param param-feature">
									<dt>
										<h4>택배비</h4>
									</dt>
									<dd>${product.deli}원</dd>
								</dl>

								<div class="row">
									<div class="col-lg-7">
										<dl class="param param-inline">
											<dt>
												<h4>남은수량</h4>
											</dt>
											<dd>${product.stock}개</dd>
										</dl>
									</div>
								</div>
								<!-- <div class="row"> -->

								<hr>
								<!---->
								<div class="row">
									<div class="col-lg-3">
										<dl class="param param-inline">
											<dt>
												<h4 class="mt-0">수량</h4>
											</dt>
											<dd>

												<button onclick="cntP()" style="width: 20px; height: 26px">+</button>
												<input type="text" id="inputCnt"
													style="text-align: center; width: 35px; height: 26px; margin-left: -5px; margin-right: -5px"
													maxlength="3" onchange="changePric(value)">
												<button onclick="cntM()" style="width: 20px; height: 26px">-</button>

											</dd>
										</dl>
									</div>

									<div class="col-lg-9 align-middle">
										<div class="price h4 text-warning">
											<div class="currency mb-3">총 상품금액</div>
											<div id="num">${product.pric + product.deli}원</div>
											<!-- price-detail-wrap .// -->
										</div>

									</div>
									<!-- row.// -->


									<hr>
									<a href="#" class="btn btn-lg btn-primary"> 구매하기 </a> <a
										href="#" class="btn btn-lg btn-outline-primary"> <i
										class="fas fa-shopping-cart"></i> 장바구니
									</a>
								</div>
								<!-- <div class="text-left"> -->
						</article>
					</aside>
				</div>
				<!-- <div class="row"> -->
			</div>
			<!-- <div class="col-lg-12 col-md-12 text-center"> -->
		</div>
		<!-- <div class="row"> -->
	</div>
	<!-- <div class="container"> -->
	<script>
        function cntP() {
            console.log($('input#inputCnt').val());
        }
        function cntM() {

        }

        function changePric(value) {
            console.log($('input#pric').val());
            document.getElementById('num').innerHTML;
        }
    </script>
>>>>>>> a58a8856ce56b4d0056f453eff9f239ffd6fc71e --%>
</body>
</html>