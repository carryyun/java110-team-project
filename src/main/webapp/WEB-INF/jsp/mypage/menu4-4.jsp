<%@ page import="bitcamp.java110.cms.domain.ProductQnA"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-lg-12">
    <div class="panel panel-default">
                <h2 class="colorlib-heading">상품 질문내역</h2>
                
        <div class="panel-body">
            <table class="table table-condensed" style="border-collapse:collapse;">

                <thead>
                    <tr>
                       
                        <th>No.</th>
                        <th>질문유형</th>
                        <th>상품이름</th>
                        <th>제목</th>
                        <th>문의일자</th>
                        <th>처리상태</th>
                    </tr>
                </thead>

                <tbody>
                
<c:forEach items="${pqlist}" var="p" varStatus="i">  
                  
                    <tr data-toggle="collapse" data-target="#demo4-${i.count}" class="accordion-toggle">
                        <td>${i.count}</td>
                        <td>${p.type}</td>
                        <td>aa</td>
                        <td>${p.titl}</td>
                        <td>${p.rgdt}</td>
                        <td>처리상태</td>
                        

                    </tr>
                    <tr>
                        <td colspan="6" class="hiddenRow">
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
                                            <td>${p.anser}</td>
                                            
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
            