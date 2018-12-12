<%@ page import="bitcamp.java110.cms.domain.ProductQnA"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script>

//  답변 처리상태
$(document).ready(function() {
    <c:forEach items="${pqlist}" var="cc" varStatus="i">
  var answer = $('.answer'+${i.index}).text();
  if(!answer){
        $('.answerState'+${i.index}).text("답변대기");
    } 
  else {
        $('.answerState'+${i.index}).text("답변완료");
    } 
    </c:forEach>    
});

</script>



<div class="col-lg-12">
    <div class="panel panel-default">
                <h2 class="colorlib-heading" style="margin-top:0;">상품 질문내역</h2>
                
        <div class="panel-body">
            <table class="table table-condensed" style="border-collapse:collapse;">

                <thead>
                    <tr>
                        <th width="5%">No.</th>
                        <th width="15%">질문유형</th>
                        <th width="30%">상품이름</th>
                        <th width="25%">제목</th>
                        <th width="15%">문의일자</th>
                        <th width="15%">처리상태</th>
                    </tr>
                </thead>

                <tbody>
                
<c:forEach items="${pqlist}" var="p" varStatus="i">  
                  
                    <tr data-toggle="collapse" data-target="#demo4-${i.count}" class="accordion-toggle">
                        <td>${i.count}</td>
                        <td>${p.type}</td>
                        <td><a href="../product/detail?no=${p.ptno}">${p.product.titl}</a></td>
                        <td>${p.titl}</td>
                        <td>${p.rgdt}</td>
                        <td class="answerState${i.index}"></td>
                        

                    </tr>
                    <tr>
                        <td colspan="6" class="hiddenRow" style="padding: 0;">
                            <div class="accordian-body collapse" id="demo4-${i.count}">
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
                                            <td class="answer${i.index}">${p.anser}</td>
                                            
                                        </tr>



                                    </tbody>
                                </table>

                            </div>
                        </td>
                    </tr>
                    
 </c:forEach>                    
                </tbody>
            </table>
        </div>

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
            