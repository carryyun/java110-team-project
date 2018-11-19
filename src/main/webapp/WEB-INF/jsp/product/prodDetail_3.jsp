<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-lg-12 mx-auto">
	<div class="post-preview">
		<a href="post.html"></a>

		<div  style="position : fixed; background-color:aquamarine; margin: 80px 60px 0 0; padding : 10px" >
			<div class="">
				<div class="">
					<article class="card-wrapper">

						<div class="image-holder">
							<a href="#" class="image-holder__link"></a>
							<div class="image-liquid image-holder--original">
								<a href="#">
								<img class="classimg" alt="1" src="${prdtcls.cfile}"
									style="width: 100%; height: 100%">
							    </a>
							</div>
						</div>

						<div class="product-description">
							<!-- 제목 -->
							<h1 class="product-description__title">
								<a href="#">${prdtcls.titl}</a>
							</h1>

							<!-- 분류명 , 가격 -->
							<div class="row">
								<div
									class="col-lg-12 product-description__category secondary-text">
									${prdtcls.middleTag.name }</div>
								<div class="col-lg-12 product-description__price">${prdtcls.pric}원</div>
							</div>
							<hr />

							<!-- 멘토 이름 -->
							<div class="sizes-wrapper">
								<b>멘토-${prdtcls.mentee.name}</b>
							</div>

							<!-- 주소 -->
							<div class="color-wrapper">
								<b>${prdtcls.basAddr}</b>
							</div>

							<div class="color-wrapper">
								<b> <c:set var="starint" value="${prdtcls.star}" /> <strong>별점:</strong>
									<%
                                                int star = (int) pageContext.getAttribute("starint");
                                                for(int i=0; i<5;i++){
                                                  if(i<star){%> <img
									class="starimg" alt="star-on-big"
									src="/upload/img/raty/star-on-big.png"
									style="width: 20px; height: 20px;"> <%}else{%> <img
									class="starimg" alt="star-off-big"
									src="/upload/img/raty/star-off-big.png"
									style="width: 20px; height: 20px;"> <%
                                                        }
                                                    }
                                                %>
								</b>
							</div>
							
						</div> <!-- <div class="product-description"> -->
					</article>
				</div> <!-- <div class="col-lg-4"> -->
			</div> <!-- <div class="row"> -->
		</div> <!-- <div class="container"> -->
	</div> <!-- <div class="post-preview"> -->
</div> <!-- <div class="col-lg-12 mx-auto"> -->