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
                                    src=${product.phot} alt=""></a>
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

--------------------------------------------------------------------------------------------------


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
                <div class="col">
                <form class="form-horizontal" action="send.php" method="post">
                    <fieldset>
                    <table class="fixed-table w-100" >
                            <tr>
                                <td colspan="3">
                                    <!-- <div class=""> -->
                                    
                                            <!-- Message body -->
                                            <div class="form-group">
                                                <label class="col-lg-3 control-label" for="message">상품평</label>
                                                <div class="col-lg-12">
                                                    <textarea class="form-control" id="message" name="message"
                                                        placeholder="상품평을 등록해주세요." rows="5"></textarea>
                                                </div>
                                            </div>
                                                </td>
                                </tr>
                                <tr>
                                            <td>
                                                <label class="control-label my-0" for="message">별점</label>
                                            </td>
                                            <td>
                                                <div id="star1"></div>
                                            <!-- </div> -->
                                            <!-- <div class=""> -->
                                            </td>
                                
                                <td align="right" valign="top">
                                    <!-- Form actions -->
                                        <!--col-lg-12추가했음-->
                                        <div class="col-md-12 col-lg-12 text-right" style="vertical-align: middle;">
                                            <button type="submit" class="btn btn-primary btn-md"
                                                style="background-color: #606066; color: #ffffff">등록</button>
                                            <button type="reset" class="btn btn-default btn-md">취소</button>
                                        </div>
                                </td>
                            </tr>
                        <!-- <div class="col-md-9 col-md-offset-0"> -->
                    </table>
                                                           </fieldset>
                                    </form>
                                    </div>
                                    
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
                <div class="detail_info px-3 py-3">
                    <h3>Q&A</h3>
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
                                        <td class="col-lg-2">
                                        <c:set var="rgdt2" value="${qna.rgdt2}" />
                                    
                                            <%
                                            Date rgdt2 = (Date) pageContext.getAttribute("rgdt2");
                                            if(rgdt2!=null){
                                            %>
                                                                                                완료
                                            <%}else{
                                            %>
                                                                                                미완료
                                                      <%
                                                       }
                                                    %>
                                        
                                        
                                        </td>
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


----------------------------------------------------------------------------------------------------



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




