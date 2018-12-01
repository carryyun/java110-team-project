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
<div class="container" style="margin-bottom:20px; padding-bottom: 140px; padding-top:5px; background-color: #fff">
	<div class="row mt-3">

			<h2 class="col-lg-12">상품 상세보기</h2>
			<hr class="FhrBotMargin">

			<div class="col-lg-12 col-md-12 text-center">
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
	                <c:forEach items="${product.productFile}" var="ppf" varStatus="i">
		                <c:choose>
		                    <c:when test="${i.index == 0}">
			                    <li data-target="#carousel-banner-prdtDetail" data-slide-to="${i.index}" class="active"><img style="border:1px solid rgb(217,217,217);" class="w-100 h-100" src="${ppf.pfname}" alt="${ppf.pfname}"></li>
		                    </c:when>
		                    <c:otherwise>
		                        <li data-target="#carousel-banner-prdtDetail" data-slide-to="${i.index}"><img style="border:1px solid rgb(217,217,217);" class="w-100 h-100" src="${ppf.pfname}" alt="${ppf.pfname}"></li>
		                    </c:otherwise>
		                </c:choose>
	                </c:forEach>
                </ol>
                <!--/.Indicators-->
                <!--Slides-->
                <div class="carousel-inner" role="listbox">
                    <c:forEach items="${product.productFile}" var="ppf" varStatus="i">
                        <c:choose>
                            <c:when test="${i.index == 0}">
                                <div class="carousel-item active">
                                    <div class="view">
			                            <img class="prdtDetailImg " src="${ppf.pfname}" alt="${ppf.pfname}">
			                        </div>
			                    </div>
                            </c:when>
                            <c:otherwise>
                                <div class="carousel-item">
                                    <div class="view">
                                        <img class="prdtDetailImg " src="${ppf.pfname}" alt="${ppf.pfname}">
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    
                        

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

</body>
</html>