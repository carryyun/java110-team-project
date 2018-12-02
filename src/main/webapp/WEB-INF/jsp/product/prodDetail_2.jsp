<%@page import="java.sql.Date"%>
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
				href="#target_detail"><h5>상세정보</h5></a></li>

			<li class="under-nav-item"><a class="nav-link"
				href="#target_review"><h5>상품평</h5></a></li>

			<li class="under-nav-item"><a class="nav-link"
			     href="#target_qna"><h5>Q&A</h5></a></li>
		</ul>
	</div>

	<!-- 상세정보, 수업정보, 상품평, QnA -->
	<div class="row">
		<div class="col-lg-12 mx-auto mb-4 px-5 pt-3" style="background-color: #fff;" id="detail">
            
			<h3 id="target_detail">상세정보</h3>
			<hr class="Fhr" id="prod_detail" style="margin-bottom: 25px">
			<div class="detail_info px-4">
				${product.conts}
			</div>
        </div> 
        <div class="col-lg-12 mx-auto mb-4 px-5 pt-3" style="background-color: #fff;">
			<h3 id="target_review">상품평</h3>
			<hr class="Fhr" id="prod_review">
			
			<div class="detail_review">
				<div class="row" style="margin: 0 auto">
					<div class="col text-center">
						<h1 class="rating-num">${product.star}</h1>
						<div class="rating col">
							<%
							  Product p2 = (Product) request.getAttribute("product");
							  for (int i = 0; i < 5; i++) {
							    if (i < p2.getStar()) {
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
							<i class="fas fa-user"></i>total 12
						</div>
					</div>
				</div>
				
                    <div class="col mt-3">
                                <table class="fixed-table w-100">
                                    <tr>
                                        <td colspan="3">
                                            <div class="col-lg-12">
                                                <textarea class="form-control" id="repconts" name="conts"
                                                    placeholder="상품평을 등록해주세요." rows="4"></textarea>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label class="control-label my-0" for="message">별점</label>
                                        </td>
                                        <td>
                                            <div id="star1"></div> <!-- </div> --> <!-- <div class=""> -->
                                        </td>

                                        <td align="right" valign="top">
                                            <!-- Form actions --> <!--col-lg-12추가했음-->
                                            <div class="col-md-12 col-lg-12 text-right"
                                                style="vertical-align: middle;">
                                                <button type="button" id="repbtn" class="btn btn-primary btn-md"
                                                    style="background-color: #606066; color: #ffffff">등록</button>
                                                <!-- <button type="reset" class="btn btn-default btn-md">취소</button> -->
                                            </div>
                                        </td>
                                    </tr>
                                    <!-- <div class="col-md-9 col-md-offset-0"> -->
                                </table>
                    </div>
                    <div class="row" id="addrep_target">
                    <div class="col-lg-12">
	                    <hr class="Fhr">
                    </div>
		                <c:forEach items="${replyList}" var="r" varStatus="i">
	                    <div class="col-lg-12 my-3">
		                    <div class="container pb-3" style="border-bottom: 0.5px solid rgba(0, 0, 0, 0.5)">
		                    <div class="row">
		                        <div class="col-lg-2 text-center">
		                            <img src='${r.mentee.phot}' alt="singup" id="circle"><br>
		                            ${r.mentee.nick}
		                        </div>
		                        <div class="col-lg-10 media-body">${r.conts}</div>
		                        </div>
		                    </div>
	                    </div>
		                </c:forEach>
                    </div>
                    <!-- <table width="100%" border="0"> -->
			</div>
            </div>

            <div class="col-lg-12 mx-auto mb-4 px-5 pt-3" style="background-color: #fff;">
			<div id="prod_review">
				<div class="detail_info px-0 py-3">
					<h3 id="target_qna">Q&A</h3>
					<div class="row">
						<div class="col-lg-12">

							<table class="table row" id="qna_table" style="margin: 0 auto">
								<!-- container생략  -->
								<thead class="col-lg-12">
									<tr class="row">
										<th scope="col" class="col-lg-1" id="qna_th">번호</th>
										<th scope="col" class="col-lg-2" id="qna_th">문의유형</th>
										<th scope="col" class="col-lg-2" id="qna_th">답변상태</th>
										<th scope="col" class="col-lg-3" id="qna_th">문의/답변</th>
										<th scope="col" class="col-lg-2" id="qna_th">작성자</th>
										<th scope="col" class="col-lg-2" id="qna_th">작성일</th>

									</tr>
								</thead>
								<c:forEach items="${prodQnaList}" var="qna">
									<tbody class="col-lg-12">
										<tr class="row">
											<th class="col-lg-1" scope="row" id="qna_th">${qna.no}</th>
											<td class="col-lg-2">${qna.type}</td>
											<td class="col-lg-2"><c:set var="rgdt2"
													value="${qna.rgdt2}" /> <%
											   Date rgdt2 = (Date) pageContext.getAttribute("rgdt2");
											     if (rgdt2 != null) {
											 %> 완료 <%
											   } else {
											 %> 미완료 <%
											   }
											 %></td>
											<td class="col-lg-3">${qna.conts}</td>
											<td class="col-lg-2">${qna.mentee.nick}</td>
											<td class="col-lg-2">${qna.rgdt}</td>
										</tr>
									</tbody>
								</c:forEach>
							</table>
						</div>
						<div class="col-lg-12 text-right">
							<button onclick="location.href='prdtQna'"
								style="width: 120px; height: 40px; background-color: #606066; color: #ffffff">
								상품 문의</button>
						</div>
						<!-- <div class="col-lg-12"> -->
					</div>
					<!-- <div class="row"> -->

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