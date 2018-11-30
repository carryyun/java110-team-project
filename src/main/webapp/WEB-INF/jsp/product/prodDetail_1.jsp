<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script src="/vendor/jquery/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">

			<h2>상품 상세보기</h2>
			<hr class="FhrBotMargin">

			<div class="col-lg-12 col-md-12 text-center">

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
</body>
</html>