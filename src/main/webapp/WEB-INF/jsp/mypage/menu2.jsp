<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>





                <div id="container">
                    <div align="right">
                        <!-- Login 검증 -->
                        <!-- jstl의 if문은 else가 없어서 따로 검증해야함. -->
                            <!--<%-- <%@include file="loginOk.jsp" %> --%>-->
                            <!--        <%-- <%@include file="login.jsp" %> --%>-->
                    </div>




                    <div>
                        <table class="table table-striped table-bordered table-hover">
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
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                            <a href="#">${m2.classes.titl} </a>
         
                                        </td>
                                        <td>
                                        
                                        </td>
                                        <td>
                                        ${m2.classes.pric}
                                        </td>
                                        <td>
                                        
                                        </td>
                                    <tr>
                            </tbody>
                        </table>

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

