<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Clean Blog - Start Bootstrap Theme</title>

<!-- Bootstrap core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- 폰트 추가 -->
<link href="https://fonts.googleapis.com/css?family=Jua"
	rel="stylesheet">
<!-- Custom fonts for this template -->
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<!--  <link href="/css/clean-blog2.css" rel="stylesheet"> -->
<link href="/css/common.css" rel="stylesheet">
<link href="/css/prod_detail.css" rel="stylesheet">



</head>
<body style="background-color: #F2F4F7">


	<hr>
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
									<a href="#"><img id="prod_img"
										src="/upload/img/product/700x400/julme.PNG" alt=""></a>
								</div>
							</div>


						</article>
					</aside>
					<aside class="col-lg-7">
						<article class="card-body p-5">
							<div class="text-left">
								<h2 class="title mb-3">${product.titl}</h2>
								<br>
								<dl class="param param-feature">
									<dt>
										<h4>가격</h4>
									</dt>
									<dd>${product.pric}원</dd>
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
										<!-- item-property .// -->
									</div>
									<!-- col.// -->

								</div>
								<!-- row.// -->

								<hr>
								<!---->
								<div class="row">
									<div class="col-lg-3">
										<dl class="param param-inline">
											<dt>
												<h4 class="mt-0">수량</h4>
											</dt>
											<dd>
												<select class="form-control form-control-lg col-8">
													<option>1</option>
													<option>2</option>
													<option>3</option>
												</select>
											</dd>
										</dl>
										<!-- item-property .// -->
									</div>
									<!-- col.// -->
									<div class="col-lg-9 align-middle">
										<p class="price-detail-wrap mt-5">
											<span class="price h3 text-warning"> <span
												class="currency">총 합계 : </span><span class="num">200,000원</span>
											</span>
										</p>
										<!-- price-detail-wrap .// -->
									</div>
								</div>
								<!-- row.// -->



								<!---->
								<hr>
								<a href="#" class="btn btn-lg btn-primary text-uppercase">
									구매하기 </a> <a href="#"
									class="btn btn-lg btn-outline-primary text-uppercase"> <i
									class="fas fa-shopping-cart"></i> 장바구니
								</a>
							</div>
						</article>
						<!-- card-body.// -->
					</aside>
					<!-- col.// -->
				</div>
				<!-- row.// -->
			</div>
			<!-- <div class="col-lg-12 col-md-12 text-center"> -->
		</div>
		<!-- <div class="row"> -->
	</div>
	<!-- <div class="container"> -->


	<!-- 판매자가 수강한 클래스 정보들-->
	<div class="container">
		<div class="detail_info">
			<h3>판매자가 수강한 클래스</h3>
			<div class="row">
				<div class="col-lg-12">


						<div class="media"
							style="border-bottom: 0.3px solid rgba(0, 0, 0, 0.5)">
							<div class="col-lg-1 text-center">

								<img src='${product.mentee.phot}' alt="singup" id="circle">
                                
								${product.mentee.nick}
							</div>
							<div class="col-lg-11 media-body">${product.classes.titl}</div>
                            <div class="col-lg-11 media-body"><img src='${product.classes.cfile}' alt="singup" id="circle"></div>
                            

						</div>


				</div>
				<!-- <div class="col-lg-12"> -->
			</div>
			<!-- <div class="row"> -->

		</div>
		<!-- <div class="detail_info"> -->


	</div>




	<div class="container">


		<div class="col-lg-12" id="testt">
			<!-- Links -->

			<ul class="under-navbar-nav">


				<li class="under-nav-item"><a class="nav-link"
					href="#prod_detail">
						<h4>상세정보</h4>
				</a></li>
				<!-- <li class="under-nav-item"><a class="nav-link"
                    href="#class_info">
                        <h4>
                            수업정보
                            <h4>
                </a></li> -->
				<li class="under-nav-item"><a class="nav-link"
					href="#prod_review">
						<h4>
							상품평
							<h4>
				</a></li>
				<li class="under-nav-item"><a class="nav-link" href="#qna">
						<h4>
							QnA
							<h4>
				</a></li>

			</ul>


		</div>
	</div>


	<!--상세정보, 수업정보, 상품평, QnA-->
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 mx-auto" id="detail">


				<div class="detail_info">
					<hr class="Fhr" id="prod_detail">
					<h3>상세정보</h3>
					${product.conts}
				</div>
				<!-- <div class="detail_info"> -->


				<h3>상품평</h3>

				<hr class="Fhr" id="prod_review">
				<div class="detail_info">
					<div class="row" style="margin: 0 auto">
						<div class="col text-center">
							<h1 class="rating-num">${product.star}</h1>
							<div class="rating col">
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
							<div>
								<span class="glyphicon glyphicon-user"></span>12 total
							</div>
						</div>
					</div>
				</div>



				<div class="container col-lg-12" id="prod_review">
					<div class="row">
						<table width="100%" border="0">
							<div class="col-md-9 col-md-offset-0">
								<tr>
									<td width="77%">
										<!-- <div class=""> -->
										<form class="form-horizontal" action="send.php" method="post">
											<fieldset>
												<!-- Message body -->
												<div class="form-group">
													<label class="col-md-3 control-label" for="message">상품평</label>
													<div class="col-md-9">
														<textarea class="form-control" id="message" name="message"
															placeholder="상품평을 등록해주세요." rows="5"></textarea>
													</div>
												</div>


												<div class="form-group">
													<label class="col-lg-3 control-label" for="message">별점</label>

													<div id="star1" class="col-lg-9"></div>
												</div>
												<!-- </div> -->
												<!-- <div class=""> -->
									</td>
									<td align="center" valign="top" width="23%">
										<!-- Form actions -->
										<div class="form-group">
											<!--col-lg-12추가했음-->
											<div class="col-md-12 col-lg-12 text-center">
												<button type="submit" class="btn btn-primary btn-md"
													style="background-color: #606066; color: #ffffff">등록</button>
												<button type="reset" class="btn btn-default btn-md">취소</button>
											</div>
										</div>


									</td>
									</fieldset>
									</form>
								</tr>
							</div>
							<!-- <div class="col-md-9 col-md-offset-0"> -->
						</table>
					</div>

					<hr>
					<c:forEach items="${replyList}" var="r" varStatus="i">
						<div class="media"
							style="border-bottom: 0.3px solid rgba(0, 0, 0, 0.5)">
							<div class="col-lg-1 text-center">

								<img src='${r.mentee.phot}' alt="singup" id="circle">

								${r.mentee.nick}

							</div>
							<div class="col-lg-11 media-body">${r.conts}</div>


						</div>
					</c:forEach>





					<hr class="Fhr" id="qna">
					<div class="detail_info">
						<h3>Q&A</h3>
						<div class="row">
							<div class="col-lg-12">

								<table class="table row container" id="qna_table"
									style="margin: 0 auto">
									<thead class="col-lg-12">
										<tr class="row">
											<th scope="col" class="col-lg-1" id="qna_th">번호</th>
											<th scope="col" class="col-lg-1" id="qna_th">문의유형</th>
											<th scope="col" class="col-lg-1" id="qna_th">답변상태</th>
											<th scope="col" class="col-lg-6" id="qna_th">문의/답변</th>
											<th scope="col" class="col-lg-1" id="qna_th">작성자</th>
											<th scope="col" class="col-lg-2" id="qna_th">작성일</th>

										</tr>
									</thead>
									<tbody class="col-lg-12">
										<tr class="row">
											<th class="col-lg-1" scope="row" id="qna_th">1</th>
											<td class="col-lg-1">배송</td>
											<td class="col-lg-1">미완료</td>
											<td class="col-lg-6">주문한지 3일이 지났는데 왜 송장번호도 안나오는건가요?</td>
											<td class="col-lg-1">절미맘</td>
											<td class="col-lg-2">2018-11-14 09:35</td>
										</tr>


									</tbody>
								</table>
							</div>
							<!-- <div class="col-lg-12"> -->
						</div>
						<!-- <div class="row"> -->


						<button
							style="width: 120px; height: 40px; margin-left: 960px; background-color: #606066; color: #ffffff">상품
							문의하기</button>

					</div>
					<!-- <div class="detail_info"> -->

				</div>
				<!-- <div class="row"> -->
			</div>
			<!-- <div class="container col-lg-12"> -->


			<!--페이지 넘버-->
			<nav aria-label="Page navigation example" id="product-pn">
				<ul class="pagination justify-content-center">
					<li class="page-item disabled "><a class="page-link" href="#"
						tabindex="-1"> <</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#">></a></li>
				</ul>
			</nav>

		</div>
		<!-- <div class="col-lg-12 col-md-12 mx-auto" id="detail"> -->
	</div>
	<!-- <div class="row"> -->


	</div>
	<!-- <div class="container"> -->


	<hr>


	<!-- Bootstrap core JavaScript -->
	<script src="/vendor/jquery/jquery.min.js"></script>

	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/js/jquery.raty.min.js"></script>
	<script src="/js/clean-blog.js"></script>





	<!-- Custom scripts for this template -->

	<script>
        var testtTop;
        var setId = "#testt";
        $(document).ready(function() {
            $("#headerNav").load("headerNav.html")

            testtTop = $("#detail").offset().top;
            console.log(testtTop);
            $(setId).css("position", "absolute");
            $(setId).css("top", (testtTop) + "px");

            $('#star1').raty({
                path : "/upload/img/raty/",
                start : 1,
                starOff : 'star-off-big.png',
                starOn : 'star-on-big.png',
                width : 200
            });
        });

        function scroll_follow(id) {
            $(window).scroll(function() //스크롤이 움직일때마다 이벤트 발생
            {
                var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
                if (position > 985) {
                    $(id).css("position", "fixed-top");
                    $(id).css("top", position + "px");
                    $(id).css("width", "1110px");

                } else {
                    $(id).css("top", (testtTop) + "px");
                    $(id).css("position", "absolute");
                    $(id).css("width", "1110px");
                }

            });
        }
        scroll_follow(setId);

        function click_button() {

        }

        $('#click').raty(
                {
                    click : function(score, evt) {
                        alert('ID: ' + this.attr('id') + '\nscore: ' + score
                                + '\nevent: ' + evt);
                    }
                });
    </script>
</body>

</html>
