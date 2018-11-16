<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
								<dt><h4>가격</h4></dt>
								<dd>${product.pric}원</dd>
							</dl>

							<dl class="param param-feature">
								<dt><h4>택배비</h4>
								</dt><dd>${product.deli}원</dd>
							</dl>

							<div class="row">
                                <div class="col-lg-7">
								    <dl class="param param-inline">
										<dt><h4>남은수량</h4></dt>
										<dd>${product.stock}개</dd>
									</dl>
								</div>
							</div><!-- <div class="row"> -->

							<hr>
							<!---->
							<div class="row">
								<div class="col-lg-3">
									<dl class="param param-inline">
										<dt><h4 class="mt-0">수량</h4></dt>
										<dd>
											<select class="form-control form-control-lg col-8">
												<option>1</option>
												<option>2</option>
												<option>3</option>
											</select>
										</dd>
									</dl>
								</div>
								
								<div class="col-lg-9 align-middle">
									<p class="price-detail-wrap mt-5">
										<span class="price h3 text-warning"> <span
											class="currency">총 합계 : </span><span class="num">200,000원</span>
										</span>
									</p>
									<!-- price-detail-wrap .// -->
								</div>
								
							</div> <!-- row.// -->


							<hr>
							<a href="#" class="btn btn-lg btn-primary text-uppercase">
								구매하기 </a> 
							<a href="#" class="btn btn-lg btn-outline-primary text-uppercase">
							<i class="fas fa-shopping-cart"></i> 장바구니</a>
						</div> <!-- <div class="text-left"> -->
					</article>
				</aside>
			</div> <!-- <div class="row"> -->
		</div> <!-- <div class="col-lg-12 col-md-12 text-center"> -->
	</div><!-- <div class="row"> -->
</div><!-- <div class="container"> -->