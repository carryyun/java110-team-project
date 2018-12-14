<%@ page import="bitcamp.java110.cms.domain.ClassQna"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<script>

//  답변 처리상태
/* $(document).ready(function() {
    <c:forEach items="${cqlist2}" var="cc" varStatus="i">
  var answer = $('.answer'+${i.index}).text();
  if(!answer){
        $('.answerState'+${i.index}).text("답변대기");
    } 
  else {
        $('.answerState'+${i.index}).text("답변완료");
    } 
    </c:forEach>    
}); */

function ansbtn(ind) {
    
    if($("#prod"+ind).css("display") == "none"){
        $("#prod"+ind).show();
        $("#allbtn"+ind).hide();
    }else{
        $("#prod"+ind).hide();
        $("#allbtn"+ind).show();
    }
}

/* 상품  답변 등록 */
function ansregi(ind , qno) {
	var newconts = $('#prod'+ind).val();
	
	var myqnalist = $("#myqnalist");
	
	console.log(newconts);
	console.log(qno);
	
	if(newconts == ""){
	    swal({
            text : "내용이 비어있으면 등록이 안됩니다.",
            button : "확인",
        })
	} else {
	$.ajax({
	    type : "POST" ,
	    data : ({
	        no : qno ,
	        "anser" : newconts
	    }),
	       url : "clsansupdate.do" , 
	       success : function(data){
	           console.log("dd");
	           swal({
	               text : "답변이 등록되었습니다.",
	               button : "확인",
	           })
	           var html ="";
	           for(var i in data) {
	               var titl = data[i].titl;
	               var prtitl = data[i].classes.titl;
	               var type = data[i].type;
	               var conts = data[i].conts;
	               var anser = data[i].anser;
	               var rgdt = data[i].rgdt;
	               var nick = data[i].mentee2.nick;
	               var no = data[i].cno;
	               
	               rgdt = new Date();
	               
	                var dd= rgdt.getDate();
	        		var mm= rgdt.getMonth();
	        		var yy= rgdt.getFullYear();
	        		
	        		if( dd < 10){
	        		    dd = '0' + dd;
	        		}
	        		if( mm < 10){
	        		    mm='0' +mm;
	        		}
	        		
	        		rgdt = yy+'-'+mm+'-'+dd;
	        		
	html +='    <tr data-toggle="collapse" data-target="#demo5-'+i+'" class="accordion-toggle">'
	html +='    <td>'+(parseInt(i))+'</td>'
	html +='    <td>'+type+'</td>'
	html +='    <td><a href="../product/detail?no=${p.ptno}">'+prtitl+'</a></td>'
	html +='    <td>'+titl+'</td>'
	html +='    <td>'+nick+'</td>'
	html +='    <td>'+rgdt+'</td>'
    				if(anser == null){
    html +='	        	 <td>답변대기</td>'
    		        }else{
    html +='	        	<td>답변완료</td>'
    		        }
	html +='	   </tr>'
	html +='  <tr>'
	html +='               <td colspan="6" class="hiddenRow" style="padding: 0;">'
	html +='                   <div class="accordian-body collapse" id="demo5-'+i+'">'
	html +='                       <table class="table table-striped">'
	html +='                           <thead><tr><td class="qcontents">문의내용</td><td>'+conts+'</td></tr></thead>'
	html +='                           <tbody>'
	html +='                               <tr>'
	html +='                                   <td class="qcontents">답변내용</td>'
                                       if(anser == null){
	html +='                                   	<td><label onClick="ansbtn('+(parseInt(i)+1)+')" class="allbtn"'
	html +='                                            id="allbtn'+(parseInt(i)+1)+'">답변을 작성하시려면 클릭해주세요!</label>'
	html +='                                            <textarea class="prodans" id="prod'+(parseInt(i)+1)+'" rows="5" name="clsanser"'
	html +='                                                           style ="width : 500px; display: none;"></textarea></td>'
                                       } else{
	html +='                                   		<td class="answer'+(parseInt(i)+1)+'" id="anser'+(parseInt(i)+1)+'">'+anser+'</td>'
                                       }
	html +='                                   <td><textarea class="prodans" id="proup'+(parseInt(i)+1)+'" rows="5" name="clsanser" style ="width : 500px; display: none;"></textarea></td>'
	html +='                               </tr>'
	html +='                           </tbody>'
	html +='                       </table>'
		                                if(anser == null){
	html +='                                   	<div style="width:150px; margin-left:auto; margin-right:0;">'
	html +='											<button type="button" class="btn btn-primary" onClick="ansregi('+(parseInt(i)+1)+','+no+')">등록</button>'
                                       } else{
	html +='                                   		 <div style="width:150px; margin-left:auto; margin-right:0; ">'
	html +='                                   		 <button type="button" id="ansmodibt'+(parseInt(i)+1)+'" class="btn btn-primary" onClick="ansmodibtn('+(parseInt(i)+1)+')">수정</button>'
	html +='											<button type="button" id="ansmod'+(parseInt(i)+1)+'" class="btn btn-primary" style="display:none;" onClick="ansmodi('+(parseInt(i)+1)+','+no+')">완료</button>'
                                       }
	html +='									<button type="button" class="btn btn-secondary" id="anscan'+(parseInt(i)+1)+'" onClick="anscansle('+(parseInt(i)+1)+')">취소</button>' 
	html +='									<button type="button" class="btn btn-secondary" style="display:none;" id="ansmodican${i.index}" onClick="ansmodicansle('+(parseInt(i)+1)+')">취소</button></div>'
	html +='                    </div>'
	html +='                </td>'
	html +='           </tr>'
	           }
	           
	           myqnalist.html(html);
	           
	       },error : function(error,status){
	              swal({
	                  text : "이미 삭제된 Q&A이거나 오류가 발생하였습니다.",
	                  button : "확인",
	                })
	          }
		});
	}
}

/* 상품  수정 버튼 */
function ansmodibtn(ind) {
    if($("#ansmod"+ind).css("display") == "none"){
        $("#ansmod"+ind).show();
        $("#ansmodibt"+ind).hide();
        
    }else{
        $("#ansmod"+ind).hide();
        $("#ansmodibt"+ind).show();
        
    }
    
    if($("#ansmodican"+ind).css("display") == "none"){
        $("#ansmodican"+ind).show();
        $("#anscan"+ind).hide();
    }else{
        $("#ansmodican"+ind).hide();
        $("#anscan"+ind).show();
    }
    //if($("#prod"+ind).css("display") == "none"){
	    $("#proup"+ind).val($("#anser"+ind).text()).show();
	    $("#anser"+ind).hide();
    /* }else{
        $("#prod"+ind).val("").hide();
        $("#anser"+ind).show();
    } */
}

/* 답변 수정 동작 버튼 */
function ansmodi(ind,qno) {
    $("#prod"+ind).show();
    var conts = $("#proup"+ind).val();
    var myqnalist = $("#myqnalist");
    
    console.log(qno);
    console.log(conts);
    
    if(conts == ""){
	    swal({
            text : "내용이 비어있으면 등록이 안됩니다.",
            button : "확인",
        })
	} else {
	$.ajax({
	    type : "POST" ,
	    data : ({
	        no : qno ,
	        anser : conts
	    }),
	       url : "clsansupdate.do" , 
	       success : function(data){
	           $("#prod"+ind).hide();
	           $(".answer"+ind).show();
	           $("#proup"+ind).hide();
	           swal({
	               text : "수정이 등록되었습니다.",
	               button : "확인",
	           })
	           
	           var html ="";
	           for(var i in data) {
	               var titl = data[i].titl;
	               var prtitl = data[i].classes.titl;
	               var type = data[i].type;
	               var conts = data[i].conts;
	               var anser = data[i].anser;
	               var rgdt = data[i].rgdt;
	               var nick = data[i].mentee2.nick;
	               var no = data[i].cno;
	               
	               rgdt = new Date();
	               
	                var dd= rgdt.getDate();
	        		var mm= rgdt.getMonth();
	        		var yy= rgdt.getFullYear();
	        		
	        		if( dd < 10){
	        		    dd = '0' + dd;
	        		}
	        		if( mm < 10){
	        		    mm='0' +mm;
	        		}
	        		
	        		rgdt = yy+'-'+mm+'-'+dd;
	        		
	html +='    <tr data-toggle="collapse" data-target="#demo5-'+i+'" class="accordion-toggle">'
	html +='    <td>'+(parseInt(i)+1)+'</td>'
// 	html +='    <td>'+type+'</td>'
	html +='    <td><a href="../product/detail?no=${p.ptno}">'+prtitl+'</a></td>'
	html +='    <td>'+titl+'</td>'
	html +='    <td>'+nick+'</td>'
	html +='    <td>'+rgdt+'</td>'
		        if(anser == null){
	html +='	        	 <td>답변대기</td>'
		        }else{
	html +='	        	<td>답변완료</td>'
		        }
	html +='	   </tr>'
	html +='  <tr>'
	html +='               <td colspan="6" class="hiddenRow" style="padding: 0;">'
	html +='                   <div class="accordian-body collapse" id="demo5-'+i+'">'
	html +='                       <table class="table table-striped">'
	html +='                           <thead><tr><td class="qcontents">문의내용</td><td>'+conts+'</td></tr></thead>'
	html +='                           <tbody>'
	html +='                               <tr>'
	html +='                                   <td class="qcontents">답변내용</td>'
                                       if(anser == null){
	html +='                                   	<td><label onClick="ansbtn('+(parseInt(i)+1)+')" class="allbtn"'
	html +='                                            id="allbtn'+(parseInt(i)+1)+'">답변을 작성하시려면 클릭해주세요!</label>'
	html +='                                            <textarea class="prodans" id="prod'+(parseInt(i)+1)+'" rows="5" name="clsanser"'
	html +='                                                           style ="width : 500px; display: none;"></textarea></td>'
                                       } else{
	html +='                                   		<td class="answer'+(parseInt(i)+1)+'" id="anser'+(parseInt(i)+1)+'">'+anser+'</td>'
                                       }
	html +='                                   <td><textarea class="prodans" id="proup'+(parseInt(i)+1)+'" rows="5" name="clsanser" style ="width : 500px; display: none;"></textarea></td>'
	html +='                               </tr>'
	html +='                           </tbody>'
	html +='                       </table>'
		                                if(anser == null){
	html +='                                   	<div style="width:150px; margin-left:auto; margin-right:0;">'
	html +='											<button type="button" class="btn btn-primary" onClick="ansregi('+(parseInt(i)+1)+','+no+')">등록</button>'
                                       } else{
	html +='                                   		 <div style="width:150px; margin-left:auto; margin-right:0; ">'
	html +='                                   		 <button type="button" id="ansmodibt'+(parseInt(i)+1)+'" class="btn btn-primary" onClick="ansmodibtn('+(parseInt(i)+1)+')">수정</button>'
	html +='											<button type="button" id="ansmod'+(parseInt(i)+1)+'" class="btn btn-primary" style="display:none;" onClick="ansmodi('+(parseInt(i)+1)+','+no+')">완료</button>'
                                       }
	html +='									<button type="button" class="btn btn-secondary" id="anscan'+(parseInt(i)+1)+'" onClick="anscansle('+(parseInt(i)+1)+')">취소</button>' 
	html +='									<button type="button" class="btn btn-secondary" style="display:none;" id="ansmodican${i.index}" onClick="ansmodicansle('+(parseInt(i)+1)+')">취소</button></div>'
	html +='                    </div>'
	html +='                </td>'
	html +='           </tr>'
	           }
	           
	           myqnalist.html(html);
	       },error : function(error,status){
	              swal({
	                  text : "이미 삭제된 Q&A이거나 오류가 발생하였습니다.",
	                  button : "확인",
	                })
	          }
		});
	$("#prod"+ind).val("");
	}
}

function anscansle(indexno) {
    $("#prod"+indexno).val("");
    $("#prod"+indexno).hide();
    $("#allbtn"+indexno).show();
}

function ansmodicansle(indexno) {
    $("#anscan"+indexno).show();
    $("#ansmodican"+indexno).hide();
    $("#ansmod"+indexno).hide();
    $("#ansmodibt"+indexno).show();
    $("#proup"+indexno).hide();
    $("#anser"+indexno).show();
}
</script>    
    
<div class="col-lg-12">
    <div class="panel panel-default">
       
        
            <h2 class="colorlib-heading" style="margin-top:0;">클래스 답변내역</h2>
                        
                        
        <div class="panel-body">
            <table class="table table-condensed" style="border-collapse:collapse;">
                <thead>
                    <tr>
                        <th width="5%">No.</th>
                        <th width="35%">클래스</th>
                        <th width="25%">제목</th>
                        <th width="10%">질문자</th>
                        <th width="15%">문의일자</th>
                        <th width="15%">처리상태</th>
                    </tr>
                </thead>

                <tbody id="myqnalist">
<c:forEach items="${cqlist2}" var="c" varStatus="i">

                    <tr data-toggle="collapse" data-target="#demo3-${i.count}" class="accordion-toggle">
                        <td>${i.count}</td>
                        <td><a href="../class/detail?no=${c.cno}">${c.classes.titl}</a></td>
                        <td>${c.titl}</td>
                        <td>${c.mentee2.nick}</td>
                        <td>${c.rgdt}</td>
                        <c:set var="canse" value="${c.anser}"/>
                        <%
                        String cans = (String)pageContext.getAttribute("canse");
                        if(cans == null) {
                        %>
                        	<td>답변대기</td>
                        <%
                        }else {
                        %>
                        	<td>답변완료</td>
                        <%
                        }
                        %>
                    </tr>
                     
                     <tr>
                        <td colspan="6" class="hiddenRow" style="padding: 0;">
                            <div class="accordian-body collapse" id="demo3-${i.count}">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                           <td class="qcontents">문의내용</td>
                                            <td>${c.conts}
                                            </td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="qcontents">답변내용</td>
                                            <c:set var="pans" value="${c.anser}" />
                                            <%
                                            String anse = (String)pageContext.getAttribute("pans");
                                            
                                            if(anse == null){
                                            %>
                                            	<td><label onClick="ansbtn(${i.index})" class="allbtn"
                                                     id="allbtn${i.index}">답변을 작성하시려면 클릭해주세요!</label>
                                                     <textarea class="prodans" id="prod${i.index}" rows="5" name="clsanser"
                                                                    style ="width : 500px; display: none;"></textarea></td>
                                            <%  
                                            } else{
                                            %>
                                            		<td class="answer${i.index}" id="anser${i.index}">${c.anser}</td>
                                            <%
                                            }
                                            %>
                                            <td><textarea class="prodans" id="proup${i.index}" rows="5" name="clsanser"
                                                                    style ="width : 500px; display: none;"></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
											<%
			                                if(anse == null){
                                            %>
                                            	<div style="width:150px; margin-left:auto; margin-right:0;">
 													<button type="button" class="btn btn-primary" onClick="ansregi(${i.index},${c.cno})">등록</button>
                                            <%  
                                            } else{
                                            %>		
                                            		 <div style="width:150px; margin-left:auto; margin-right:0; ">
                                            		 <button type="button" id="ansmodibt${i.index}" class="btn btn-primary" onClick="ansmodibtn(${i.index})">수정</button>
 													<button type="button" id="ansmod${i.index}" class="btn btn-primary" style="display:none; float:left;" onClick="ansmodi(${i.index},${c.cno})">완료</button>
                                            <%
                                            }
                                            %>

 <!-- 이미 답변한 게시물은 '답변수정' 으로 출력  -->
 <button type="button" class="btn btn-secondary" id="anscan${i.index}" onClick="anscansle(${i.index})">취소</button> 
  <button type="button" class="btn btn-secondary" style="display:none;" id="ansmodican${i.index}" onClick="ansmodicansle(${i.index})">취소</button></div>
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
            