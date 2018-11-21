<%@ page import="bitcamp.java110.cms.domain.Cs"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-lg-12">
    <div class="panel panel-default">
       
                          
        <div class="panel-body">
            <table class="table table-condensed" style="border-collapse:collapse;">

                <thead>
                    <tr>
                       
                         <th width="10%">No.</th>
                         <th width="50%">강의명</th>
                         <th width="10%">강사명</th>
                         <th width="20%">가격</th>
                         <th width="10%">수강상태</th>
                        
                    </tr>
                </thead>

                <tbody>

      <%--   <c:forEach items="${}" var="c" varStatus="i"> --%>

                    <tr data-toggle="collapse" data-target="#demo1-<%-- ${i.count} --%>" class="accordion-toggle">
                        <td><%-- ${i.count} --%></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>처리상태</td>
                        

                    </tr>
                    <tr>
                        <td colspan="6" class="hiddenRow">
                            <div class="accordian-body collapse" id="demo1-<%-- ${i.count} --%>">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                           <td class="qcontents">질문내용</td>
                                            <td></td>
                                        </tr>
                                        
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="qcontents">답변내용</td>
                                            <td></td>
                                            
                                        </tr>


   
                                    </tbody>
                                </table>

                            </div>
                        </td>
                    </tr>
                    
                    
                   
         
        <%-- </c:forEach>  --%>     
                    
                    
                </tbody>
            </table>
        </div>

    </div>

<!-- Paging 처리 -->
                        <div id="paging">
                            <!--        ${pageCode}-->
                        </div>
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
            