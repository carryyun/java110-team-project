<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>클래스 등록</title>
    <link rel="stylesheet" type="text/css" href="/css/classadd.css">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript" ></script> 
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <link href='/css/fullcalendar.css' rel='stylesheet' />
    <link href='/css/fullcalendar.min.css' rel='stylesheet' type="text/javascript" />
    <link href='/css/fullcalendar.print.min.css' rel='stylesheet' media='print'/>
    <script src='/js/moment.min.js'></script>
    <script src='/js/fullcalendar.min.js'></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="/js/jquery.datetimepicker.full.min.js"></script>
    <link rel="stylesheet" href="/css/jquery.datetimepicker.min.css" >
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"  type="text/javascript"></script>
    
    </head>
<body>
<div class="container">
<div class="row">
<div class="col-lg-12">
 <div id="classadd">
  <div>
      <h1>클래스 등록</h1>
  </div>
  <!--method="post"  enctype="multipart/form-data"-->
  <form action="classadd" method="post" id="uploadForm" enctype="multipart/form-data" onsubmit="return emptychk(this)" >
             <div>
              <input type="text" name="titl" id="ctitl" placeholder="#제목을 입력해주세요#Haru#클래스등록">
             </div>
              
              <div id="classinfo">
               <div style="border: 2px solid red; width: 400px; height: auto; float: right; top:0">
                <div>
                  	<input type="radio" id="contactChoice1" name="typeChk" value="단기" checked="checked">
				    <label for="contactChoice1">oneday</label>
				    <input type="radio" id="contactChoice2" name="typeChk" value="장기">
				    <label for="contactChoice2">allday</label>
                </div>
                <div id="calendar"></div>
                <div id="oneday-btn" style="border:1px solid black; width:400px; height: 200px; float: right;"><input type="text" class="view" readonly value="수업 날짜">
                <input type="button" id="sledel" value="선택삭제" style="float: right;'">
                <select id="daylist" size="5" style="width: 400px;"></select>
                </div>
                </div>
                
                <div style="position:absolute; width: 736px;
                float:right; top: 0; border: 2px solid red;">
                
                
               <div>
                <input type="text" class="view" readonly value="시간당 금액" >
                <input type="number" name="pric" id="cpay" oninput="maxLengthCheck2(this)" maxlength="6" placeholder="필수입력항목">원
               </div> 
               <div id="allday-btn" style="display:none;">
               <input type="text" class="view" readonly value="수업날짜">
               <input type="text" name="date" id="cdate" readonly placeholder="시작날짜">~
               <input type="text" name="edate" id="cdate2" readonly placeholder="종강날짜">
               </div>
               <div id="alldaytime">
                <input type="text" class="view" readonly value="수업시간">
                <input type="text" name="stime" id="ctime" readonly placeholder="시작시간">~
                <input type="text" name="etime" id="ctime2" readonly placeholder="종료시간">
                <input type="button" onclick="add()"  value="확인" ><br>
                <input type="text"  class="view" readonly value="일 수업시간">
                <input type="text" name="time" id="cttime" readonly  >
               </div>
               <div>
                <input type="text" class="view" readonly value="모집인원">
                <input type="number" name="capa" id="rnumber" oninput="maxLengthCheck2(this)" min="1" maxlength="2" placeholder="필수입력항목">
               </div>
                <div id="pst">
                    <input type="text" id="posi" readonly value="수업장소"><br>
                    <input type="text" name="pstno" id="sample6_postcode" readonly placeholder="우편번호">
                    <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                    <input type="text" name="basAddr" id="sample6_address" readonly placeholder="주소">
                    <input type="text" name="detAddr" id="sample6_address2" placeholder="상세주소">
                 </div>
                 <div id="file-box">
                     <input type="text" class="view" readonly value="동영상  URL"><br>
                     <input type="url" name="cfile" id="imgInput"  />
                 </div> 
                 <div id="filetable">
                       <div>
                       <input type="file" id="files" name="files" multiple
						accept="image/*"><br />
	
						<div id="selectedFiles" style="border: 1px solid red;"></div>
                	 </div>
               </div>
             </div>
             </div>
            
             <h2>강사소개</h2>
                 <textarea id="classcowdog" name="tinfo"></textarea>
             <h2>강의설명</h2>
                 <textarea id="classtteok" name="cinfo"></textarea>
                 <input id="days" type="text" name="days">
                 <input id="removefiles" type="text" name="removefiles">
                 <input type="hidden" id="type" name="type" value="단기">  
              	 <input type="submit" id="clsinsert" value="클래스 등록" />
              </form>
            </div>
        </div>
        </div>
    </div>


<script> 
function emptychk(){
	if($("#ctitl").val().length < 3){
		swal("제목은 최소 3글자이상 입력해주세요.");
		return false;
	}else if($("#rnumber").val() == ""){
		swal("모집인원을 입력해주세요");
		return false;
	}else if($("#cpay").val() == ""){
		swal("가격을 입력해주세요")
		return false;
	}else if($("#classcowdog").val().length < 100){
		swal("강의 소개는 최소100글자이상 입력해주세요.");
		return false;
	}else if($("#classtteok").val().length < 100){
		swal("강의 설명은 최소100글자이상 입력해주세요.");
		return false;
	}else if($('#files').length < 1){
		swal("사진한장이상 선택해주세요.");
		return false;
	}else if($("#sample6_postcode").val() == ""){
		swal("우편번호를 입력해주세요.");
		return false;
	}else if($("#sample6_address").val() == ""){
		swal("기본주소를 입력해주세요.");
		return false;
	}else if($("#type").val() == '장기'){
		if($("#cdate").val() == ""){
			swal("날짜를 선택해주세요.");
			return false;
		}else if($("#cdate2").val() == ""){
			swal("날짜를 선택해주세요.");
			return false;
		}
	}else if($("#type").val() == '단기'){
		if($('#daylist option').length < 1){
			swal("날짜를 선택해주세요.");
			return false;
		}
	}else if($("#ctime2").val().length == 5){
	    if($("#ctime").val().length == 5){
			var ct2 = $("#ctime2").val().substr(0,2);
			var ct1 = $("#ctime").val().substr(0,2);
	    	var alltime = ct2-ct1
	    	if(ct2 < ct1){
	    		swal("시작시간이 끝나는시간보다 작아야합니다");
	    		return false;
	    	}else if(ct2 = ct1){
	    		swal("시작시간과 끝나는시간이 같으면안됩니다.");
	    		return false;
	    	}
	    }else if($("#ctime").val().length == 4){
	    	var ct2 = $("#ctime2").val().substr(0,2);
			var ct1 = $("#ctime").val().substr(0,1);
	    	var alltime = ct2-ct1
	    	if(Math.abs(ct2)<Math.abs(ct1)){
	    		swal("시작시간이 끝나는시간보다 작아야합니다");
	    		return false;
	    	}else if(Math.abs(ct2)=Math.abs(ct1)){
	    		swal("시작시간과 끝나는시간이 같으면안됩니다.");
	    		return false;
	    	}
	    }
	}else if($("#ctime2").val().length == 4){
		if($("#ctime").val().length == 4){
			var ct2 = $("#ctime2").val().substr(0,1);
			var ct1 = $("#ctime").val().substr(0,1);
	    	var alltime = ct2-ct1
	    	if(ct2 < ct1){
	    		swal("시작시간이 끝나는시간보다 작아야합니다");
	    		return false;
	    	}else if(ct2 = ct1){
	    		swal("시작시간과 끝나는시간이 같으면안됩니다.");
	    		return false;
	    	}
		}else if($("#ctime").val().length == 5){
			var ct2 = $("#ctime2").val().substr(0,1);
			var ct1 = $("#ctime").val().substr(0,2);
	    	var alltime = ct2-ct1
	    	if(Math.abs(ct2)<Math.abs(ct1)){
	    		swal("시작시간이 끝나는시간보다 작아야합니다");
	    		return false;
	    	}else if(Math.abs(ct2)=Math.abs(ct1)){
	    		swal("시작시간과 끝나는시간이 같으면안됩니다.");
	    		return false;
	    	}
		}
	}else if($("#cpay").val() < 1000){
		swal("시간당 최소금액은 1000원이상입니다.")
		return false;
	}else if($("#rnumber").val() < 1){
		swal("모집인원의 최소인원은 1명이상입니다.");
		return false;
	}
}


$(document).ready(function() 
	{ 
	    $("input:radio[name=typeChk]").click(function() 
	    { 
	    	$("#type").val($("input[name=typeChk]:checked").val());
	    }) 
	});
	
$("#contactChoice1").click(function() {
    $("#oneday-btn").show(); 
    $("#allday-btn").hide();
});
$("#contactChoice2").click(function(){
	 $("#oneday-btn").hide(); 
	 $("#allday-btn").show();
});


var selDiv = "";
document.addEventListener("DOMContentLoaded", init, false);

function init() {
    document.querySelector('#files').addEventListener('change',
            handleFileSelect, false);
    selDiv = document.querySelector("#selectedFiles");
}

function handleFileSelect(e) {
    if (!e.target.files || !window.FileReader)
        return;
    selDiv.innerHTML = "";
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);
    var html = "";
    html += "<div class='col-lg-12' id='imgBind'>";
    for (var i = 0; i < filesArr.length; i++) {
        var f = files[i];
        if (!f.type.match("image.*")) {
            return;
        }
        var j = 0;
        var reader = new FileReader();
        reader.onload = function(e) {
            f = filesArr[j];
            html += "<div class='row imgDiv' id='imgDiv"+j + "'>";
            html += "<div class='col-lg-5'>";
            html += "<img class='fileImg' src=\"" + e.target.result + "\">";
            html += "</div>";
            html += "<div class='col-lg-3'>";
            html += f.name + "<br clear=\"left\"/>";
            html += "</div>";
            html += "<div class='col-lg-2'>";
            var kb = (f.size / 1024);
            html += kb.toFixed(2) + "kb <br clear=\"left\"/>";
            html += "</div>";
            html += "<div class='col-lg-2'>";
            html += "<button data-fileno='" + j + "' data-filename='" + f.name + "' class='remove-file-btn'>" + "삭제"
                    + "</button>";
            html += "</div>";
            if (j < filesArr.length-1) {
                html += "<div class='col-lg-12'>";
                html += "<hr>";
                html += "</div>";
            }
            html += "</div>";
            selDiv.innerHTML = html;
            j++;
        }
        reader.readAsDataURL(f);
    }
    selDiv.innerHTML += "</div>";
}

var removefiles = $('#removefiles');
$(document.body).on('click', '.remove-file-btn', function (event) {
    //event.preventDefault(); 
    var no = $(event.target).attr('data-fileno');
    var filename = $(event.target).attr('data-filename');
    $("div#imgDiv" + no).remove();
    
    var files = removefiles.val();
    if (files.length > 0) {
    	files += ","
    }
    files += filename;
    removefiles.val(files)
});

   $( "#ctime" ).timepicker({
	   interval: 60,
	   timeFormat :'H:mm',
	   change: function(time) { 
       $("#ctime2").timepicker("option","minTime", time);
	   }
   });
       
      // $("#ctime2").timepicker("option","minTime", time);
  // }
	   
	 //  change: function(time) { 
		   // the input field
     //      var element = $(this), text;
           // get access to this Timepicker instance
     //      var timepicker = element.timepicker();
           //console.log(timepicker.format(time));
     //      $("#ctime2").timepicker("option","minTime", time);
     //  }
   
   
   $( "#ctime2" ).timepicker({
	   interval: 60,
	   timeFormat :'H:mm'
   });
	 //  change: function(time) {
     //      var element = $(this), text;
     //      var timepicker = element.timepicker();
     //      $("#ctime").timepicker("option","maxTime", time);
     //  }
//    $("#cdate").datepicker({
//    	minDate: 0,
//    	dateFormat:'yy-mm-dd'
//    });
    
 //  	var newdd = $("#cdate").datepicker('getDate').getDate();
 //  	var newmm = $("#cdate").datepicker('getDate').getMonth();
 //  	var newyy = $("#cdate").datepicker('getDate').getFullYear();
    //$("#cdate").datepicker({
   // 	minDate: fullDate,
   // 	dateFormat:'yy-mm-dd',
   //		onClose: function() {
   	//	    $("#cdate2").datepicker({
   	//	      dateFormat: 'yy-mm-dd',
   		//      minDate : 0
   		    //  minDate: new Date(selector의 시작날),
   		    //  maxDate: new Date('2017-12-31')
   		//    });
  // 		}
//    });
    
	$("#cdate").datepicker({
		dateFormat: 'yy-mm-dd',
		onSelect: function(selected) {
			$("#cdate2").datepicker("option","minDate", selected)
		}
	});
	$("#cdate2").datepicker({
		dateFormat: 'yy-mm-dd',
		onSelect: function(selected) {
			$("#cdate").datepicker("option","maxDate", selected)
		}
	});
     
    /* $('#calendar').fullCalendar({
   	  dayClick: function(date, jsEvent, view, resourceObj) {
   		  swal("ASD");
   	      var seldate = date.format();
   	      var option = $("<option value='"+seldate+"'>"+seldate+"</option>");
   	      if($('#daylist option').filter(function(){return this.value==seldate}).length == 0)
   	            $("#daylist").append(option);
   	  }
   	}); */
     
$("#sledel").click(function(){
    $("#daylist option:selected").remove();
    var days = new Array();
   	$('#daylist > option').each(function(i, e) {
   		days.push($(e).val())
   	});
   	$('#days').val(days);
   	console.log($('#files').val());
   	console.log($('#files').length);
});
   	
   	
  
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
 
        reader.onload = function (e) {
            $('#image_section').attr('src', e.target.result);
        }
 
        reader.readAsDataURL(input.files[0]);
    }
}
 

 function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
       
            var fullAddr = ''; 
            var extraAddr = ''; 

            if (data.userSelectedType === 'R') {
                fullAddr = data.roadAddress;
            } else { 
                fullAddr = data.jibunAddress;
            }

            if(data.userSelectedType === 'R'){
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }
            document.getElementById('sample6_postcode').value = data.zonecode; 
            document.getElementById('sample6_address').value = fullAddr;

            document.getElementById('sample6_address2').focus();
        }
    }).open();
}    
 
 /* function wow(){                     
         var form = $('#uploadForm')[0];
         var formData = new FormData(form);
         
         
         for (var index = 0; index < Object.keys(filelist).length; index++) {
             formData.append('filelist',filelist[index]);
         }
         
          $.ajax({
             type : 'POST',
             enctype : 'multipart/form-data',
             processData : false,
             contentType : false,
             cache : false,
             timeout : 5000,
             url : 'classinsert',
             dataType : 'JSON',
             data : formData,
             success : function(result) {
                 //이 부분을 수정해서 다양한 행동을 할 수 있으며,
                 //여기서는 데이터를 전송받았다면 순수하게 OK 만을 보내기로 하였다.
                 //-1 = 잘못된 확장자 업로드, -2 = 용량초과, 그외 = 성공(1)
                 if (result === -1) {
                     alert('jpg, gif, png, bmp 확장자만 업로드 가능합니다.');
                     return falsae;
                 } else if (result === -2) {
                     alert('파일이 10MB를 초과하였습니다.');
                     return false;
                 } else {
                     alert('이미지 업로드 성공');
                     return true;
                 }
             },
             error:function(){
            	 console.log("실패");
             }
         });
 }  */ 
function maxLengthCheck2(object){
if (object.value.length > object.maxLength){
  object.value = object.value.slice(0, object.maxLength);
}else if(object.value < 1){
	swal("최소인원은 1명이상입니다.");
}
}


function add(){
	if($("#ctime2").val().length == 5){
	    if($("#ctime").val().length == 5){
			var ct2 = $("#ctime2").val().substr(0,2);
			var ct1 = $("#ctime").val().substr(0,2);
	    	var alltime = ct2-ct1
	    	if(ct2 > ct1){
	  	  		$("#cttime").val(Math.abs(alltime));	    		
	    	}else if(ct2 < ct1){
	    		swal("시작시간이 끝나는시간보다 작아야합니다");
	    	}else if(ct2 = ct1){
	    		swal("시작시간과 끝나는시간이 같으면안됩니다.");
	    	}
	    }else if($("#ctime").val().length == 4){
	    	var ct2 = $("#ctime2").val().substr(0,2);
			var ct1 = $("#ctime").val().substr(0,1);
	    	var alltime = ct2-ct1
	    	if(Math.abs(ct2)>Math.abs(ct1)){
	  	  		$("#cttime").val(Math.abs(alltime));	    		
	    	}else if(Math.abs(ct2)<Math.abs(ct1)){
	    		swal("시작시간이 끝나는시간보다 작아야합니다");
	    	}else if(Math.abs(ct2)=Math.abs(ct1)){
	    		swal("시작시간과 끝나는시간이 같으면안됩니다.");
	    	}
	    }
	}else if($("#ctime2").val().length == 4){
		if($("#ctime").val().length == 4){
			var ct2 = $("#ctime2").val().substr(0,1);
			var ct1 = $("#ctime").val().substr(0,1);
	    	var alltime = ct2-ct1
	    	if(ct2 > ct1){
	  	  		$("#cttime").val(Math.abs(alltime));	    		
	    	}else if(ct2 < ct1){
	    		swal("시작시간이 끝나는시간보다 작아야합니다");
	    	}else if(ct2 = ct1){
	    		swal("시작시간과 끝나는시간이 같으면안됩니다.");
	    	}
		}else if($("#ctime").val().length == 5){
			var ct2 = $("#ctime2").val().substr(0,1);
			var ct1 = $("#ctime").val().substr(0,2);
	    	var alltime = ct2-ct1
	    	if(Math.abs(ct2)>Math.abs(ct1)){
	  	  		$("#cttime").val(Math.abs(alltime));	    		
	    	}else if(Math.abs(ct2)<Math.abs(ct1)){
	    		swal("시작시간이 끝나는시간보다 작아야합니다");
	    	}else if(Math.abs(ct2)=Math.abs(ct1)){
	    		swal("시작시간과 끝나는시간이 같으면안됩니다.");
	    	}
		}
	}
}
  $(document).ready(function() {
     $('#classcowdog').summernote();
 });

 $(document).ready(function() {
     $('#classtteok').summernote();
 }); 
 
 
$(document).ready(function(){
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth()+1; 
        var yyyy = today.getFullYear();

        if(dd<10) {
        dd='0'+dd
        } 

        if(mm<10) {
        mm='0'+mm
        } 

        today = yyyy+'-'+mm+'-'+dd;
        
    $('#calendar').fullCalendar({
       header: {
        left: '',
        center: 'title',
        right: 'today prev,next'
      },
      defaultDate: today,
      editable: false, 
      eventLimit: true, 
      
	      dayClick: function(date, jsEvent, view, resourceObj) {
	   	      var seldate = date.format();
	   	      var option = $("<option  value='"+seldate+"'>"+seldate+"</option>");
	   	      if($('#daylist option').filter(function(){return this.value==seldate}).length == 0)
	   	            $("#daylist").append(option);
	   	      
		   	   var days = new Array();
			   	$('#daylist > option').each(function(i, e) {
			   		days.push($(e).val())
			   	});
			   	$('#days').val(days);
		   	  }
      
    }); 
  });
</script>
</body>
</html>