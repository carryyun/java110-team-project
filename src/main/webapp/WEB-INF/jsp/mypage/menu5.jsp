<%@ page import="bitcamp.java110.cms.domain.Classes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  
   
<div class="col-lg-12" >
	<div class="panel panel-default">
		<div class="panel-body" > 
			<table class="table table-condensed"
				style="border-collapse: collapse;">
				<thead>
					<tr id="th-pay">
						<th width="5%">No.</th>
						<th width="40%">클래스</th>
						<th width="20%">수업시간</th>
						<th width="20%">카테고리</th>
						<th width="15%">멘티</th>
					</tr>
				</thead>
				<tbody>
					 <c:forEach items="${cmanage}" var="c" varStatus="i">
					<tr id="tb-pay">
						<td>${i.count}</td>
						<td><a href="../class/detail?no=${c.no}">${c.titl}</a></td>
						<td>${c.timetable.date}<br>
						<fmt:formatDate value="${c.timetable.stime}" pattern="a hh:mm" /> ( ${c.time} 시간 )</td>
						<td>${c.bigTag.name}-${c.middleTag.name}</td>
						<td><button onclick="getMenteeList(${c.timetable.no})"  class="btn-primary"  style="width:100px;"> ${c.counting} / ${c.timetable.capa} 명</button></td>
					</tr>
					        </c:forEach>     
 
				</tbody>
				
				
			 </table>
			 <nav aria-label="Page navigation example" style="margin-left:200px;">
                                <ul class="pagination" id="page-list" style="display: inline-block;">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">«</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">»</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
		</div>
		<div class="panel-body">
		<table class="table table-condensed" id="table_target"
                style="border-collapse: collapse;">
                <thead>
                    <tr id="th-pay">
                        <th width="5%">No.</th>
                        <th width="40%">멘티</th>
                        <th width="20%">연락처</th>
                        <th width="20%">수료여부</th>
                        <th width="15%">신고</th>
                    </tr>
                </thead>
                
                <tbody id="insert_target">
               
                                       
                </tbody>  
                
                 
            </table>
            
		</div>
		
		
	</div>
</div> 


  <script>
  


function getMenteeList(ctno){
    var contents="";
    var cnt = 1;
    
$.ajax({
    type : "POST",
    data : {
        "no" : ctno
    },
    url : "getMenteeList.do",
    success : function(data) {
        
        $('#insert_target').empty();
        
        contents = "";
        for(var i in data) {
            
       contents+='<tr id="tb-pay">';
       contents+='<td>'+cnt+++'</td>';
       contents+='<td><a href=\'#\'>'+data[i].mentee2.name+'('+data[i].mentee2.nick+')'+'</a></td>';
       contents+='<td>'+data[i].mentee2.phone+'</td>';
       contents+='<td>';
       
     
        if (data[i].cert == null)  {
            contents+= '<button class="btn-danger" name="btn-certi" value="'+i+'" onclick="certi(this.value,'+data[i].no+','+data[i].mentee2.no+');"   style="width:70px;" ">미수료</button>';
        }else  if (data[i].cert != null) {
           if(data[i].cert.type == "수료증")
            contents+= '<button class="btn-primary"  style="width:70px;">수료</button>';    
        } 
       
       
            
       contents+='</td>';
       contents+='<td><img src="/upload/img/rpt-before.png" style=" width:50%; height:auto;" onclick="report(\''+ data[i].mentee2.nick +'\')"></td>';
       contents+='</tr>';
       
       
       
       
        }
       var setdiv=document.querySelector("#insert_target");
       setdiv.innerHTML+= contents;
         console.log(data); 
         
      
    }
    
    ,error : function(error,status){
        console.log("fail");
    }
});
}
function report(Nick){
    var openWin;
    var url    = "../masterpage/report?url="+Nick+"&nick="+Nick;
    var title  = "하루 - 신고하기";
    var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width=635, height=465, top=-1000,left=100"; 
    openWin = window.open(url, title,status); 
}


 function certi(v,cno,meno){
    
     console.log(v+cno+meno);
     var  textareaVal= $("button[name='btn-certi']:button[value='"+v+"']").text();
     console.log(textareaVal);
    if(textareaVal=="미수료"){
             
            swal({
                 title: "수료증을 발급하시겠어요?",
                 text: "멘티에게 수료증을 발급합니다.\n수료처리후에는 취소가 불가능합니다.",
                 icon: "warning",
                 buttons: true,
                 dangerMode: true,
                 })
                 
            .then((willCerti) => {
                     if (willCerti) {
                         swal("수료처리 하였습니다!", {icon: "success", });
                         
                         $.ajax({
                             type: "POST",
                             data: {
                                 "cno": cno,
                                 "meno" : meno
                                 
                                 
                             },
                             url: "insertCert.do",
                             success : function() {
                                 
                                $("button[name='btn-certi']:button[value='"+v+"']").attr('class','btn-primary');
                                $("button[name='btn-certi']:button[value='"+v+"']").text('수료'); 
                                
                                 }
                         })
                         
                         
                     }
                 });
         
         }
} 


</script>




