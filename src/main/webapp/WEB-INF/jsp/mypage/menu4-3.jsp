<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-lg-12">
    <div class="panel panel-default">
       
        
            <h2 class="colorlib-heading">클래스 답변내역</h2>
       
            
       
       
                        
                        
        <div class="panel-body">
            <table class="table table-condensed" style="border-collapse:collapse;">

                <thead>
                    <tr>
                       
                        <th>No.</th>
                        <th>클래스</th>
                        <th>제목</th>
                        <th>문의일자</th>
                        <th>처리상태</th>
                    </tr>
                </thead>

                <tbody>
                    
                    <tr data-toggle="collapse" data-target="#demo3-1" class="accordion-toggle">
                        <td>1</td>
                        <td>클래스이름1</td>
                        <td>제목1</td>
                        <td>2018-11-11</td>
                        <td>답변대기</td>
                        

                    </tr>
                    <tr>
                        <td colspan="6" class="hiddenRow">
                            <div class="accordian-body collapse" id="demo3-1">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                           <td class="qcontents">문의내용</td>
                                            <td>진심 X빡쳐요. 경찰에 신고해야하나요? 하루수업하더니 연락두절이네요
                                            </td>
                                        </tr>
                                        
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="qcontents">답변내용</td>
                                            <td>아... OO님 저희도 반달곰 멘토님을 애타게 찾고있습니다.아마 겨울이라서 남은수업도 잊은채 겨울잠에 들어가신거같은데요.... 깜빡하신분들은 저희가 우선 환불처리를 해드리고있습니다.</td>
                                        </tr>



                                    </tbody>
                                   
                                </table>
                                <div style="width:150px; margin-left:auto; margin-right:0;">
 <button type="button" class="btn btn-primary" >확인</button>
 <!-- 이미 답변한 게시물은 '답변수정' 으로 출력  -->
 <button type="button" class="btn btn-secondary">취소</button>
 </div>
                            </div>
                        </td>
                    </tr>
                    
                    
                    
                    
                    
                    
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
            