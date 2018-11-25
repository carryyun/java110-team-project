<%@ page import="bitcamp.java110.cms.domain.ProductOrder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="col-lg-12">
    <div class="panel panel-default">
       
                          
        <div class="panel-body">
            <table class="table table-condensed" style="border-collapse:collapse;">

                <thead>
                    <tr id="th-pay">
                       
                         <th width="5%">No.</th>
                         <th width="15%">결제일자<br>(주문번호)</th>
                         <th width="30%">상품명</th>
                         <th width="10%">판매자</th>
                         <th width="25%">결제금액(수량)<br>(결제방법)</th>
                         <th width="15%">상태</th>

                        
                    </tr>
                </thead>

                <tbody>

        <c:forEach items="${polist}" var="p" varStatus="i">

                    <tr id="tb-pay" >
                        <td>${i.count}</td>
                        <td>${p.paydt}<br>
                        (<fmt:formatDate value="${p.paydt}" pattern="yyyyMMdd"/>${p.no})</td>
                        <td>${p.product.titl}<a href='#'><img src="${p.product.phot}" width="200px" height="150px"></a></td>
                        <td>${p.sellernick}</td>
                        <td>${p.tot_pric}(${p.cnt})개<br>${p.payopt}</td>
                        <td>${p.parc_name }<br>${p.parc_no}</td>
                        

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
                    </div>
        

 <!-- page navigation -->
<nav aria-label="Page navigation"  class="pn-center" >
  <ul class="pagination" >
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
            