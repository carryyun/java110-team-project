<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- 부트스트랩 --%>
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<%-- css --%>
<link href="/css/basketproduct.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<%-- js --%>
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


<script src="/js/basketproduct.js"></script>

</head>


<body>
	<div id="wrap" style="background-color: #fff">
		<div class="col" style="position: absolute; height: 105px; background-color: white">
			<!-- 헤더 배경색 적용 -->
		</div>

		<div class="container">
			<div class="row">
				<div class="col" style="position: absolute; height: 105px; background-color: white">
					<!-- 헤더 배경색 적용 -->
				</div>

				<div class="col-lg-12" style="z-index: 100">
					<jsp:include page="../headerMain.jsp"></jsp:include>
				</div>

				<!-- 카테고리 nav (스크립트로 임시 inclue) -->
				<div class="col-lg-12">
					<jsp:include page="../headerNav.jsp"></jsp:include>
				</div>

				<!-- 버튼 -->

				<div class="col-lg-12 mt-5">
					<div class="row">
						<div class="col-lg-6 text-left">
							<button type="button" class="btn btn-default btn-lg" id="btn-cl" onclick="location.href='/app/class/basket'">장바구니(클래스)</button>
							<button type="button" class="btn btn-default btn-lg"
								onclick="location.href='/app/product/basket'">장바구니(공예품)</button>
						</div>
						<div class="col-lg-6 text-right">
							<span style="font-size: 22px; float: right;"> <span><strong>></strong>완료</span></span> <span
								style="font-size: 22px; float: right;"> <span><strong>></strong>결제</span></span> <span
								style="font-size: 22px; color: Dodgerblue; float: right;">장바구니</span>
						</div>
					</div>

					<div class="col-lg-12 mt-5">
						<table class="table table-overed">

							<thead>
								<tr class="d-flex">
									<th class="col-5 text-center">상품</th>
									<th class="col-2 text-center">가격</th>
									<th class="col-1 text-center">수량</th>
									<th class="col-1 text-center">배송료</th>
									<th class="col-2 text-center">결제금액</th>
									<th class="col-1"> </th>
								</tr>

							</thead>

							<tbody>
								<c:forEach items="${basketList}" var="r">
									<tr class="product d-flex">
										<td class="col-5">
											<div class="media">
												<a class="thumbnail pull-left" href="#"> <img class="media-object"
													src="${r.product.phot }" style="width: 100px; height: 100px;">
												</a>
												<div class="media-body">
													<h4 class="media-heading">
														<a href="#">${r.product.titl }</a>
													</h4>
													<h5 class="media-heading">
														판매자 <a href="#">${r.mentee.nick }</a>
													</h5>
													<span></span><span class="text-warning"><strong>인당 최대 수량: 1개</strong></span>
												</div>
											</div>
										</td>
										<td class="product-price col-2 text-center">${r.product.pric }</td>
										<td class="product-quantity col-1 text-center"><input type="number" name="produc1"
											min="1" max="10" value="${r.cnt }"></td>
										<td class="del col-1 text-center">${r.product.deli }</td>
										<td class="product-line-price col-2 text-center">${(r.product.pric * r.cnt)+r.product.deli }</td>
										<td class="product-removal col-1" id="del-button">
											<button type="button" class="btn btn-danger" value="${r.no}">삭제</button>
										</td>
									</tr>

								</c:forEach>
							</tbody>
						</table>

						<!-- 계산 -->
						<div class="container">
							<div class="row">
								<div class="total col-lg-12">
									<div class="totals">
										<div class="totals-item totals-item-total">
											<label> 최종 결제 금액</label>
											<div class="totals-value" id="cart-total">0</div>
										</div>
									</div>

									<div class="btn-all">
										<button class="checkout btn btn-light">장바구니 결제</button>
									</div>

								</div>
								<!-- 계산 12-->
							</div>
							<!-- 계산 row-->
						</div>
						<!-- 계산 container-->

					</div>



				</div>
				<!-- main row-->
			</div>
			<!-- main container-->
			
		</div>
	     <footer>
            <div class="col px-0">
                <jsp:include page="../footer.jsp"></jsp:include>
            </div>
        </footer>
	</div>
</body>

</body>
</html>