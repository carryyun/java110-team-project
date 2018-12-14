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
                         <th width="15%"></th>
                         <th width="45%">클래스</th>
                         <th width="10%">멘토</th>
                         <th width="25%">결제정보</th>
<!--                          <th width="15%">상태</th> -->

                        
                    </tr>
                </thead>
                <tbody>

   <c:forEach items="${colist}" var="c" varStatus="i">

                    <tr id="tb-pay">
                        <td>${i.count}</td>
                        <td>
                        
                        <c:set var="transFile" value="${c.classes.cfile}"/>
                        <%
                            String transFile = (String)pageContext.getAttribute("transFile");
                            if(transFile.endsWith("jpg") || transFile.endsWith("png")){
                        %>
                            <img src="${c.classes.cfile}" width="150px" height="100px">
                        <%
                            }else{
                        %>
                            <img alt="${i.count}" src="https://i.ytimg.com/vi/${c.classes.cfile}/mqdefault.jpg" style="width: 150px; height: 100px">
                        <%
                            }
                        %>
                        
                            
                        </td>
                        <td><a href="../class/detail?no=${c.classes.no}">${c.classes.titl}</a></td>
                        <td>${c.mentornick}</td>
                        <td><fmt:formatNumber value="${c.tot_pric}" pattern="#,###" /> 원<br>
                        <c:if test="${c.payopt eq 'card'}">(카드결제)</c:if>
                        
                        </td>
<!--                         <td>결제완료</td> -->
                        

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
            