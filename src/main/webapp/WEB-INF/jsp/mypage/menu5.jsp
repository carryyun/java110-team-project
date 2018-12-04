<%@ page import="bitcamp.java110.cms.domain.Classes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
						<th width="30%">카테고리</th>
						<th width="25%">멘티</th>
					</tr>
				</thead>
				<tbody>
					 <c:forEach items="${cmanage}" var="c" varStatus="i">
					<tr id="tb-pay">
						<td>${i.count}</td>
						<td><a href="../class/detail?no=${c.no}">${c.titl} ${c.no}</a></td>
						<td>${c.bigTag.name}-${c.bigTag.name}</td>
						<td><button onclick="getMenteeList(${c.no})"  class="btn-primary"  style="width:100px;"> ${c.capa-c.timetable.capa}/ ${c.capa} 명</button></td>
					</tr>
					        </c:forEach>     
 
				</tbody>
				
				
			 </table>
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
  


function getMenteeList(cno){
    var contents="";
    var cnt = 1;
    
$.ajax({
    type : "POST",
    data : {
        "cno" : cno
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
            contents+= '<button class="btn-danger" name="btn-certi" value="'+i+'" onclick="certi(this.value,'+cno+','+data[i].mentee2.no+');"   style="width:70px;" ">미수료</button>';
        }else  if (data[i].cert != null) {
           if(data[i].cert.type == "수료증")
            contents+= '<button class="btn-primary"  style="width:70px;">수료</button>';    
        } 
       
       
            
       contents+='</td>';
       contents+='<td><img src="/upload/img/rpt-before.png" style=" width:50%; height:auto;"></td>';
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

/* function certi(v){
    
    var textareaVal = $("button[name='btn-certi']:button[value='"+v+"']").text();

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
                         

                         $("button[name='btn-certi']:button[value='"+v+"']").attr('class','btn-primary');
                         $("button[name='btn-certi']:button[value='"+v+"']").text('수료');
                         
                         
                     }
                 });
         
         }
} */

</script>




