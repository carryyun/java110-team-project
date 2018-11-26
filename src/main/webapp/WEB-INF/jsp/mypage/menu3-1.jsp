<%@ page import="bitcamp.java110.cms.domain.ClassOrder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="col-lg-12">
    <div class="panel panel-default">
       
                          
        <div class="panel-body" >
            <table class="table table-condensed" style="border-collapse:collapse;">

                <thead>
                    <tr id="th-pay" >
                       
                         <th width="5%">No.</th>
                         <th width="15%">결제일자<br>(주문번호)</th>
                         <th width="30%">클래스</th>
                         <th width="10%">멘토</th>
                         <th width="25%">결제금액<br>(결제방법)</th>
                         <th width="15%">상태</th>

                        
                    </tr>
                </thead>
                <tbody>

   <c:forEach items="${colist}" var="c" varStatus="i">

                    <tr id="tb-pay">
                        <td>${i.count}</td>
                        <td>${c.paydt}<br>
                        (<fmt:formatDate value="${c.paydt}" pattern="yyyyMMdd"/>${c.no})</td>
                        <td>${c.classes.titl}<a href='#'><img src="${c.classFile.fname}" width="200px" height="150px"></a></td>
                        <td>${c.mentornick}</td>
                        <td>${c.tot_pric}<br>${c.payopt}</td>
                        <td>결제완료</td>
                        

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
            