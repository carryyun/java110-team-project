<%@ page import="bitcamp.java110.cms.domain.Classes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="/js/jquery.datetimepicker.full.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"  type="text/javascript"></script>
   
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
				<tbody id ="cmanagelist">
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
									<li class="page-item"><a class="page-link" onclick="cmanagelist(this)">1</a></li>
	                                <li class="page-item"><a class="page-link" onclick="cmanagelist(this)">2</a></li>
<!-- 	                                <li class="page-item"><a class="page-link" onclick="cmanagelist(this)">3</a></li> -->
<!-- 	                                <li class="page-item"><a class="page-link" onclick="cmanagelist(this)">4</a></li> -->
<!-- 	                                <li class="page-item"><a class="page-link" onclick="cmanagelist(this)">5</a></li> -->
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
       contents+='<td>'+ cnt++ +'</td>';
       contents+='<td><a href=\'#\'>'+data[i].mentee2.name+'('+data[i].mentee2.nick+')'+'</a></td>';
       contents+='<td>'+data[i].mentee2.phone+'</td>';
       contents+='<td>';
       
     
        if (data[i].star == 5)  {
            contents+= '<button class="btn-danger" name="btn-certi" value="'+i+'" onclick="certi(this.value,'+data[i].no+','+data[i].mentee2.no+','+ctno+');"   style="width:70px;" ">미수료</button>';
        }else if(data[i].star == 1){
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


 function certi(v,cno,meno,ctno){
    
     var  textareaVal= $("button[name='btn-certi']:button[value='"+v+"']").text();
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
                                 "meno" : meno,
                                 "type" : "수료증"
                             },
                             url: "insertCert.do",
                             success : function() {
                                 
                                $("button[name='btn-certi']:button[value='"+v+"']").attr('class','btn-primary');
                                $("button[name='btn-certi']:button[value='"+v+"']").text('수료'); 
                                
                                $.ajax({
                                    type: "POST",
                                    data: {
                                        "type": "수료증",
                                        "conts" : "클래스의 수료증이 발급되었습니다.",
                                        "urlno" : ctno,
                                        "url" : "../mypage/mypage#menu2",
                                        "meno" : meno,
                                        "stat" : "N"
                                    },
                                    url: "../masterpage/addNotice.do",
                                    success : function() {
                                       
                                        }
                                });
                                
                                
                                 }
                         });
                         
                         
                     }
                 });
         
         }
} 

function cmanagelist(obj){
    Date.prototype.format = function(f) {
        if (!this.valueOf()) return " ";
     
        var weekName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
        var d = this;
         
        return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
            switch ($1) {
                case "yyyy": return d.getFullYear();
                case "yy": return (d.getFullYear() % 1000).zf(2);
                case "MM": return (d.getMonth() + 1).zf(2);
                case "dd": return d.getDate().zf(2);
                case "E": return weekName[d.getDay()];
                case "HH": return d.getHours().zf(2);
                case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2);
                case "mm": return d.getMinutes().zf(2);
                case "ss": return d.getSeconds().zf(2);
                case "a/p": return d.getHours() < 12 ? "오전" : "오후";
                default: return $1;
            }
        });
    };
    String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;};
    String.prototype.zf = function(len){return "0".string(len - this.length) + this;};
    Number.prototype.zf = function(len){return this.toString().zf(len);};

    
    var pageNo = $(obj).html();
    $.ajax({
        type : "POST",
        data : {
            "no" : ${sessionScope.loginUser.no},
            "pageNo" : pageNo
        },
        url : "menu5page.do",
        success : function(data) {
            
            $('#cmanagelist').empty();
            
            contents = "";
            for(var i in data) {
                
           contents+='<tr id="tb-pay">';
           contents+='<td>'+i +'</td>';
           contents+='<td><a href="../class/detail?no='+data[i].no+'">'+ data[i].titl +'</a></td>';
           
           var transDate = new Date(data[i].timetable.date).format("yyyy-MM-dd");
           contents+='<td>'+ transDate +'<br>';
           
           var transTime = data[i].timetable.stime;
           var h = ""+ transTime.substring(0,2);
           var m = ""+ transTime.substring(3,5);
           
           if(parseInt(h)>12){
               var ap="오후";
               h= parseInt(h) %12;
               h= "0"+h;
           }else{
               var ap="오전";
           }
           contents+= ap+ " "+ h +":"+ m + ' ( ' + data[i].time + ' 시간 )</td>';
//            contents+= transTime + ' (' + data[i].time + ' 시간 )</td>';
           
           contents+='<td>'+ data[i].bigTag.name + '-' + data[i].middleTag.name+'</td>';
           contents+= '<td><button onclick="getMenteeList( '+ data[i].timetable.no +')"  class="btn-primary"  style="width:100px;">'+data[i].counting +' / '+ data[i].capa+' 명</button></td>';
           
           contents+='</tr>';
           
            }
           var setdiv=document.querySelector("#cmanagelist");
           setdiv.innerHTML= contents;
          
        }
        ,error : function(error,status){
            console.log("fail");
        }
    });
}



</script>


    
    
    
    
    
    


