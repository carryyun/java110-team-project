<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


          


                <div id="container">

                    <div>
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th width="5%">No.</th>
                                    <th width="20%">결제일자</th>
                                    <th width="30%">상품명</th>
                                    <th width="10%">판매자</th>
                                    <th width="10%">수량</th>
                                    <th width="10%">가격</th>
                                    <th width="15%">상태</th>
                                </tr>
                            </thead>
                            <tbody>
                                    <tr>
                                        <td>
                                        </td>
                                        <td id="title">
                                                &nbsp;&nbsp;
                                            <a >
                  <span class="hit"> </span>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
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