<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">

    <!-- 상세정보, 상품평, QnA navi바 -->
	<div id="testt">
		<ul class="under-navbar-nav">
			<li class="under-nav-item"><a class="nav-link"
				href="#prod_detail"><h4>상세정보</h4></a></li>

			<li class="under-nav-item"><a class="nav-link"
				href="#prod_review"><h4>상품평</h4></a></li>
				
			<li class="under-nav-item"><a class="nav-link"
			     href="#prod_qna"><h4>Q&A</h4></a></li>
		</ul>
	</div>
	

	<!-- 상세정보, 수업정보, 상품평, QnA -->
	<div class="row">
		<div class="col-lg-12 col-md-12 mx-auto" id="detail">

            <h3>상세정보</h3>
			<div class="detail_info">
				<hr class="Fhr" id="prod_detail">
				${product.conts}
			</div>
			
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



			<div id="prod_review">
				<!--  class="container col-lg-12" 생략 -->
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
										</fieldset>
									</form>
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


							</tr>
						</div>
						<!-- <div class="col-md-9 col-md-offset-0"> -->
					</table>
					<!-- <table width="100%" border="0"> -->
				</div>
				<!-- <div class="row"> ???? -->

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



				<hr class="Fhr" id="prod_qna">
				<div class="detail_info">
					<h3>Q&A</h3>
					<div class="row">
						<div class="col-lg-12">

							<table class="table row" id="qna_table" style="margin: 0 auto">
								<!-- container생략  -->
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
			<!--  <div id="prod_review"> -->
		</div>
		<!-- <div class="container col-lg-12"> -->


	</div>
	<!-- <div class="row"> -->



	<!--페이지 넘버-->
	<nav aria-label="Page navigation example" id="product-pn">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled "><a class="page-link" href="#"
				tabindex="-1"><</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">></a></li>
		</ul>
	</nav>

</div>