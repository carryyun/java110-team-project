<%@ page import="bitcamp.java110.cms.domain.Cs"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-lg-12">
    <div class="panel panel-default">
        
            <h2 class="colorlib-heading">1:1 문의내역 
                            <button type="button" class="btn btn-primary" 
                            data-toggle="modal" data-target="#questioninfo" style="float:right;" >1:1문의하기</button>
        </h2>
        <div class="panel-body">
            <table class="table table-condensed" style="border-collapse:collapse;">

                <thead>
                    <tr>
                       
                        <th>No.</th>
                        <th>질문유형</th>
                        <th>제목</th>
                        <th>문의일자</th>
                        <th>처리상태</th>
                    </tr>
                </thead>

                <tbody>

        <c:forEach items="${cslist}" var="c" varStatus="i">

                    <tr data-toggle="collapse" data-target="#demo1-${i.count}" class="accordion-toggle">
                        <td>${i.count}</td>
                        <td>${c.cstype}</td>
                        <td>${c.titl}</td>
                        <td>${c.rgdt}</td>
                        <td>처리상태</td>
                        

                    </tr>
                    <tr>
                        <td colspan="6" class="hiddenRow" style="padding: 0;">
                            <div class="accordian-body collapse" id="demo1-${i.count}">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                           <td class="qcontents">질문내용</td>
                                            <td>${c.conts}</td>
                                        </tr>
                                        
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="qcontents">답변내용</td>
                                            <td>${c.anser}</td>
                                            
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

<!-- Paging 처리 -->
                        <div id="paging">
                            <!--        ${pageCode}-->
                        </div>
                    </div>
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

 <div class="modal fade" id="questioninfo" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                                          <div class="modal-dialog">
                                            <div class="modal-content" style="height:700px;">
                                                <div class="modal-header">
                                                    <h4 class="modal-title" id="repdelet">1:1문의하기</h4>
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                                </div>
                                                <div class="modal-body">
                                                    <!-- content goes here -->
                                                    <div>
                                                      <input type="text" class="selectview" readonly value="문의 종류선택" style="text-align: center;
                                                      background-color:#2c98f0;margin-bottom:1px;color:#fff;border:1px solid #2c98f0; width:25%;"><br>
                                                      <select id="kindofquestion" style="width:25%; height:30px;">
                                                      <option hidden selected></option>
                                                      <option value="클래스문의">클래스문의</option>
                                                      <option value="멘토신청문의">멘토신청문의</option>
                                                      <option value="상품문의">상품문의</option>
                                                      <option value="배송문의">배송문의</option>
                                                      <option value="기타" >기타</option>
                                                      </select>
                                                    </div>
                                                    <div>
                                                    	<input type="text" class="questiontitl" readonly value="문의 제목" style="text-align: center;
                                                      background-color:#2c98f0;margin-bottom:1px;color:#fff;border:1px solid #2c98f0; width:25%;">
                                                      <input type="text" id="questiontitl" style="width:100%; height:30px;">
                                                    </div>
                                                    <div>
                                                      <input type="text" class="questionconts" readonly value="문의 내용" style="text-align: center;
                                                      background-color:#2c98f0;margin-bottom:1px;color:#fff;border:1px solid #2c98f0; width:25%;">
                                                      <textarea id="qcontents" style="width:100%; height: 40rem;"></textarea>
                                                    </div>	
                                                    <div>
                                                      <button type="button" class="btn btn-primary" id="questioncanbtn" style="float:right" data-dismiss="modal"  role="button" >취소</button>
                                                      <button type="button" class="btn btn-primary" id="submitqbtn"  onClick="submitQuestion()">문의 하기</button>
                                                    </div>
                                                </div>
                                            </div>
                                          </div>
                                        </div>
                                        
<script>

$("#questioncanbtn").click(function(){
		$("#questioninfo")
					    .find("#questiontitl,#qcontents,select")
					       .val('')
					       .end();
});

function submitQuestion(){
		if($("#questionconts").val() == ""){
			swal({
		        text: "문의내용을 적어주세요.",
		        timer:3000,
		        button:"확인"
			});
			return false;
		}else if($("#kindofquestion option:selected").val() == ""){
			swal({
		        text: "문의종류를 선택해주세요.",
		        timer:3000,
		        button:"확인"
			});
			return false;
		}else if($("#questiontitl").val() == ""){
			swal({
		        text: "질문제목을 적어주세요.",
		        timer:3000,
		        button:"확인"
			});
			return false;
		}else{
			$.ajax({
		 	type:"POST",
			data : {
				cstype: $("#kindofquestion option:selected").val(),
				titl : $("#questiontitl").val(), 
				conts : $("#qcontents").val()
			},
			url : "questionInsert.do",
			success : function(data){
				if(data>0){
					swal({
				        text: "1:1문의내용이 등록되었습니다.",
				        timer:3000,
				        button:"확인"
					}).then(function() {
						$("#questioninfo").hide();
						$(".modal-backdrop.fade.in").hide();
						$("#questioninfo")
					    .find("#questiontitl,#qcontents,select")
					       .val('')
					       .end();
			        });
				}else{
					swal({
						 text:"1:1문의등록에  실패하였습니다.",
						 timer:3000,
						 button:"확인"
					  });
				}
			}
		});
	}
}
</script>
            