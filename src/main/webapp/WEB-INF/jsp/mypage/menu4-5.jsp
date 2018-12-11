<%@ page import="bitcamp.java110.cms.domain.ProductQnA"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-lg-12">
    <div class="panel panel-default">
                <h2 class="colorlib-heading" style="margin-top:0;">상품 답변내역</h2>

         <div class="panel-body">
            <table class="table table-condensed" style="border-collapse:collapse;">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>질문유형</th>
                        <th>상품이름</th>
                        <th>제목</th>
                        <th>질문자</th>
                        <th>문의일자</th>
                        <th>처리상태</th>
                    </tr>
                </thead>

                <tbody>
<c:forEach items="${pqlist2}" var="p" varStatus="i">

                    <tr data-toggle="collapse" data-target="#demo5-${i.count}" class="accordion-toggle">
                        <td>${i.count}</td>
                        <td>${p.type}</td>
                        <td>${p.product.titl}</td>
                        <td>${p.titl}</td>
                        <td>${p.mentee2.nick}</td>
                        <td>${p.rgdt}</td>
                        <td>처리상태</td>
                    </tr>
                     
                     <tr>
                        <td colspan="6" class="hiddenRow" style="padding: 0;">
                            <div class="accordian-body collapse" id="demo5-${i.count}">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                           <td class="qcontents">문의내용</td>
                                            <td>${p.conts}
                                            </td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="qcontents">답변내용</td>
                                            <td>${p.anser}</td>
                                        </tr>
                                    </tbody>
                                </table>
 <div style="width:150px; margin-left:auto; margin-right:0;">
 <button type="button" class="btn btn-primary" >수정</button>
 <!-- 이미 답변한 게시물은 '답변수정' 으로 출력  -->
 <button type="button" class="btn btn-secondary">취소</button> </div>
                            </div>
                        </td>
                    </tr>
 </c:forEach>    
                </tbody>
            </table>
        </div>

    </div>


<!-- Paging 처리 -->
                        <div id="paging">
                            <!--        ${pageCode}-->
                        </div>
               

 <!-- page navigation -->
<nav aria-label="Page navigation"  class="pn-center" >
  <ul class="pagination" style="margin-top:0;" >
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>
            