<%@page import="bitcamp.java110.cms.domain.Mentee"%>
<%@ page import="bitcamp.java110.cms.domain.BigTag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.modal-header .close{
	margin-top: -20px;
} 

input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
  
/* 프사업데이트 CSS  */

.certiUp {


}

.certiUp .file-upload {
  background-color: #ffffff;
  width: 350px;
  margin: 0 auto;
  padding: 20px;
}

.certiUp .file-upload-btn {
  width: 100%;
  margin: 0;
  color: #fff;
  background: #1FB264;
  border: none;
  padding: 10px;
  border-radius: 4px;
  border-bottom: 4px solid #15824B;
  transition: all .2s ease;
  outline: none;
  text-transform: uppercase;
  font-weight: 700;
}

.certiUp .file-upload-btn:hover {
  background: #1AA059;
  color: #ffffff;
  transition: all .2s ease;
  cursor: pointer;
}

.certiUp .file-upload-btn:active {
  border: 0;
  transition: all .2s ease;
}

.certiUp .file-upload-content {
  display: none;
  text-align: center;
}

.certiUp .file-upload-input {
  position: absolute;
  margin: 0;
  padding: 0;
  width: 100%;
  height: 100%;
  outline: none;
  opacity: 0;
  cursor: pointer;
}

.certiUp .image-upload-wrap {
  margin-top: 20px;
  border: 4px dashed #1FB264;
  position: relative;
}

.certiUp .image-dropping,
.certiUp .image-upload-wrap:hover {
  background-color: #1FB264;
  border: 4px dashed #ffffff;
}

.certiUp .image-title-wrap {
  padding: 0 15px 15px 15px;
  color: #222;
}

.certiUp .drag-text {
  text-align: center;
}

.certiUp .drag-text h3 {
  font-weight: 100;
  text-transform: uppercase;
  color: #15824B;
  padding: 60px 0;
}

.certiUp .file-upload-image {
  max-height: 200px;
  max-width: 200px;
  margin: auto;
  padding: 20px;
}

.certiUp .remove-image {
  width: 200px;
  margin: 0;
  color: #fff;
  background: #cd4535;
  border: none;
  padding: 10px;
  border-radius: 4px;
  border-bottom: 4px solid #b02818;
  transition: all .2s ease;
  outline: none;
  text-transform: uppercase;
  font-weight: 700;
}
 
.certiUp .remove-image:hover {
  background: #c13b2a;
  color: #ffffff;
  transition: all .2s ease;
  cursor: pointer;
}

.certiUp .remove-image:active {
  border: 0;
  transition: all .2s ease;
}
</style>

<script type="text/javascript">



  
 function submitbtn(){
	 $.ajax({
		 	type:"POST",
			data : {
				withdrawalpwd : $("#withdrawalpwd").val()
			},
			url : "deleteuser.do",
			success : function(data){
				if(data>0){
					swal({
				        text: "회원탈퇴되었습니다.",
				        timer:3000,
				        button:"확인"
				        }).then((value) => {
				       		location.href="../mainpage/mainpage";
				        });
				}else{
					swal({
						 text:"비밀번호가 맞지않습니다.",
						 timer:3000,
						 button:"확인"
					  });
				}
			}
		});
  }


  function cbox1(chkbox,meno)
    {
         
       if ( chkbox.checked == true ){
            text1.readOnly = false;
            text1.style.border = "solid";
            text1.style.borderColor = "#3097F0";
        }
        
       else {   
             var newnick = $('#text1').val();
                 
                 $.ajax({
                     type: "POST",
                     data: {
                         "no" : meno,
                         "nick" : newnick
                         },
                  url: "updateProfile.do", 
                  success : function() {
                     
                      swal({
                            text : "변경 완료",
                            icon   : "success",
                          button : "확인"
                          }),
                          
                      text1.readOnly = true;
                      text1.style.border = "none"; 
                      
                      
                      },error : function(error,status){
                          swal({
                              text : "이미 존재하는 닉네임 입니다!",
                              button : "확인",
                              icon : "error"
                              }),
                              
                              chkbox.checked = true;
                             
                              }
                      })
                      
                 
                      
            } 
    } 
    
    
  
    
    function cbox2(chkbox,meno){
	    if ( chkbox.checked == true ){
	        text2.readOnly = false;
	        text2.style.border = "solid";
	        text2.style.borderColor = "#EB5554";
        	
	        $('#sectext31').css('display','none');
	        $('#text31').css('display','inline-block');
	        text31.style.border = "solid";
	        text31.style.borderColor = "#EB5554";
	        text32.readOnly = false;
	        text32.style.border = "solid";
	        text32.style.borderColor = "#EB5554";
       
	    }else{
	    	$('#sectext31').css('display','inline-block');
	    	$('#text31').css('display','none');
	        text2.readOnly = true;
	        text2.style.border = "none";
	        
	        text31.style.border = "none";
	        text32.readOnly = true;
	        text32.style.border = "none";
	        
	        var newpwd = $('#text2').val();
	        var newbkname = $('#text31 option:selected').val();
	        var newbkno = $('#text32').val();
        	$('#sectext31').val($('#text31 option:selected').val());
	        
	        if(newpwd.length < 8){
	        	swal({
	                text : "비밀번호는 최소 8자 이상입니다.",
	              button : "확인",
	              icon : "error"
	              }).then(function(){
	            	  $('#sectext31').val('');
	            		 $('#text2').val('');
	            		 $('#text32').val('');
	              });
	        }else if($('#text31 option:selected').val() == ''){
	        	swal({
	                text : "은행을 선택해주세요.",
	              button : "확인",
	              icon : "error"
	              }).then(function(){
	            	  $('#sectext31').val('');
	            		 $('#text2').val('');
	            		 $('#text32').val('');
	              });
	        }else if($('#text32').val() == ''){
	        	swal({
	                text : "출금계좌를적어주세요.",
	              button : "확인"
	              }).then(function(){
	            	  $('#sectext31').val('');
	            		 $('#text2').val('');
	            		 $('#text32').val('');
	              });
	        }else{
	        	$.ajax({
	            type: "POST",
	            data: {
	                "no" : meno,
	                "pwd" : newpwd,
	                "bkname" : newbkname,
	                "bkno" : newbkno
	                },
		         url: "updatePwd.do", 
		         success : function() {
		             swal({
		                   text : "변경 완료",
		                 button : "확인",
		                 icon   : "success"
		                 }).then(function(){
		            		 $('#text2').val('');
                         })
	            	 }, error:function(request,status,error){
	            		 swal({
			                   text : "변경 실패",
			                   icon : "error",
			                 button : "확인"
			                 }).then(function(){
			                	 $('#sectext31').val('');
			            		 $('#text2').val('');
			            		 $('#text32').val('');
			                 });
	            	 }

		        });
	    	}
    	}
    }
    
    
    function cbox3(chkbox,meno)
    {
    if ( chkbox.checked == true )
    {
        text4.readOnly = false;
        text4.style.border = "solid";
        text4.style.borderColor = "#F9BD41";
      
        function autoHypenPhone(str){
    	    str = str.replace(/[^0-9]/g, '');
    	    var tmp = '';
    	    if( str.length < 4){
    	      return str;
    	    }else if(str.length < 7){
    	      tmp += str.substr(0, 3);
    	      tmp += '-';
    	      tmp += str.substr(3);
    	      return tmp;
    	    }else if(str.length < 11){
    	      tmp += str.substr(0, 3);
    	      tmp += '-';
    	      tmp += str.substr(3, 3);
    	      tmp += '-';
    	      tmp += str.substr(6);
    	      return tmp;
    	    }else{        
    	      tmp += str.substr(0, 3);
    	      tmp += '-';
    	      tmp += str.substr(3, 4);
    	      tmp += '-';
    	      tmp += str.substr(7);
    	      return tmp;
    	    }
    	    return str;
    	  }
    		var cellPhone = document.getElementById('text4');
	    	text4.onkeyup = function(event){
	    	event = event || window.event;
	    	var _val = this.value.trim();
	    	this.value = autoHypenPhone(_val) ;
	    	}
        
    }
    else
    {
        text4.readOnly = true;
        text4.style.border = "none";
        
        $.ajax({
            type: "POST",
            data: {
                "no" : meno,
                "phone" : $("#text4").val()
                },
         url: "updatePhone.do", 
         success : function() {
            
             swal({
                   text : "변경 완료",
                 button : "확인"
                 })
             },error : function(error,status){
                 swal({
                     text : "핸드폰 번호 형식에 맞춰서 작성해주세요",
                     button : "확인",
                     icon : "error"
                     })
                     }
             }); 
        
        
        
    }
    }
    
    function cbox4(chkbox,meno)
    {
    if ( chkbox.checked == true )
    {
        $('#findpstno').css('display','inline-block');
        
        sample6_postcode.style.border = "solid";
        sample6_postcode.style.borderColor = "#A64DB6";
        
        sample6_address.style.border = "solid";
        sample6_address.style.borderColor = "#A64DB6";
        
        sample6_address2.readOnly = false;
        sample6_address2.style.border = "solid";
        sample6_address2.style.borderColor = "#A64DB6";
       
    }else
    {
    	sample6_address2.readOnly = true;
    	sample6_postcode.style.border = "none";
        
        sample6_address.style.border = "none";
        
        sample6_address2.style.border = "none";

        var newpstno = $('#sample6_postcode').val();
        var newbas= $('#sample6_address').val();
        var newdet= $('#sample6_address2').val();
        
        if(newpstno == ""){
            
            swal({
                text : "우편번호를 입력 해주세요",
              button : "확인",
              icon : "error"
              });
            
            $('#findpstno').css('display','none');
          }
            
            
        else{
        
        $.ajax({
            type: "POST",
            data: {
                "no" : meno,
                "pstno" : newpstno,
                "bas_addr" : newbas,
                "det_addr" : newdet
                },
         url: "updateAddr.do", 
         success : function() {
             swal({
                   text : "변경 완료",
                 button : "확인"
                 })
             },error : function(error,status){
                 swal({
                     text : "없는 주소명 입니다.",
                     button : "확인"
                     })
                     }
             }); 
        $('#findpstno').css('display','none');
    }
    
        
    }
}
 
    
    
    
function ppcheck() {
        
  if(!ppSubmit.photoUpdate.value) {

      swal({
          text : "프로필 사진을 선택해 주세요",
        button : "확인",
        icon : "warning"
        });

    ppSubmit.photoUpdate.focus();

    return false;

  }
  
  else return true;

}
    
    
    // 멘토신청 체크
function mentorcheck() {

  if(mentorSubmit.btno.value == 0) {

      swal({
          text : "분야를 선택 해주세요",
        button : "확인",
        icon : "warning"
        });

    mentorSubmit.btno.focus();

    return false;

  }

  else if(mentorSubmit.carrin.value == 0) {

      swal({
          text : "경력을 선택 해주세요 ",
        button : "확인",
        icon : "warning"
        });

    mentorSubmit.carrin.focus();
    console.log(mentorSubmit.fileUpload1.value);
    return false;

  }
  
 else if(!mentorSubmit.fileUpload1.value) {

      swal({
          text : "작품 이미지를 선택 해주세요",
        button : "확인",
        icon : "warning"
        });

    mentorSubmit.fileUpload1.focus();
    
    return false;

  }
  
  
  else if(!mentorSubmit.fileUpload2.value) {

      swal({
          text : "자격증 이미지를 선택 해주세요",
        button : "확인",
        icon : "warning"
        });

    mentorSubmit.fileUpload2.focus();
    
    return false;

  } 

  
  
  else return true;

}
    

</script>
            <div class="row" >

                <div class="col-md-6 animate-box"  >
                    <div class="services  color-1" >
                        
                            <div class=profile-title>
                                <h3>나의 프로필</h3>
                            </div>
                            <div class="profile-contents" style=" height: 150px;">
                                <div class="author-img2" data-toggle="modal" data-target="#photoupdate" style="background-image: url(${mentee.phot}); position: absolute;">
                                </div>
                                <div class="cont1" >
                                <B>닉네임</B>&nbsp;
                                <input id="text1" type="text"  maxlength="10" value="${mentee.nick}" readonly style="width:140px; border:none; ">
                                </div>
                                <div id="wrapper" name="${mentee.mtstat}" class="pop" style=" position: relative; right: -50px; bottom: -60px">
                                <button class="fancy" >멘토신청</button>
                                </div> 
                                  
                            </div>
                          
                         <div class="toggle toggle--knob" style="position:absolute; right:30px; top:0; ">
                                <input type="checkbox" id="toggle--knob1" class="toggle--checkbox" onClick="cbox1(this,${mentee.no})" >
                                <label class="toggle--btn" for="toggle--knob1"><span class="toggle--feature" data-label-on=""  data-label-off="" ></span></label>
                         </div>
                        
                         <!--    <section class="model-13" style="position:absolute; right:0; top:0;">
                                <div class="checkbox">
                                <input  type="checkbox" value="1" onClick="cbox1(this);"/>
                                <label></label>
                                </div>
                            </section> -->
                            
                    </div>
                </div>
                
                <div class="col-md-6 animate-box" >
                    <div class="services  color-2" >
                        
                            <div class=profile-title>
                                <h3>회원정보 변경</h3>
                            </div>
                            <div class="profile-contents" style="height: 50px;" >
                                <div class="title1" style="text-align:left;" >
                             비밀번호
                                </div>
                                <div class="cont1" >
                                   <input id="text2" type="password" maxlength="20" name="pwd" readonly style="width:140px; border:none; ">
                                    
                                </div>
                                
                                
                            </div>
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1"  style="text-align:left;" >
                                은행
                                </div>
                             <div class="cont1" >
                             		<input type="text" id="sectext31" value="${mentee.bkname}" readonly style="width:140px; border:none; display:inline-block;"/>
                                	 <select id="text31" style="width:140px; border:none; display:none;">
						                <option hidden selected></option>
						                <option value="NH농협은행">NH농협은행</option>
						                <option value="신한은행">신한은행</option>
						                <option value="우리은행">우리은행</option>
						                <option value="제일은행">SC제일은행</option>
						                <option value="하나은행">하나은행</option>
						                <option value="IBK기업은행">IBK기업은행</option>
						                <option value="KB국민은행">KB국민은행</option>
						                <option value="KEB외한은행">KEB외한은행</option>
						                <option value="부산은행">부산은행</option>
						                <option value="제주은행">제주은행</option>
						                <option value="씨티뱅크">씨티뱅크</option>
						                <option value="수협중앙회">수협중앙회</option>
						                <option value="KJB광주은행">KJB광주은행</option>
						                </select>
                                </div>
                            </div>
                            
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1"  style="text-align:left;" >
                                출금계좌
                                </div>
                             <div class="cont1" >
                                    <input id="text32" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                                    type="number" name="bk" value="${mentee.bkno}" maxlength="20" readonly style="width:140px; border:none; margin: 0;">
                                </div>
                                
                                
                            </div>
                            
                             <div class="toggle toggle--knob" style="position:absolute; right:30px; top:0; ">
                                <input type="checkbox" id="toggle--knob2" class="toggle--checkbox" onClick="cbox2(this,${mentee.no});">
                                <label class="toggle--btn" for="toggle--knob2" style="background:#EB5554;"><span class="toggle--feature" data-label-on=""  data-label-off="" ></span></label>
                         </div>
                           <!-- 
                             <section class="model-13" style="position:absolute; right:0; top:0;">
                                <div class="checkbox">
                                <input  type="checkbox" value="1" onClick="cbox3(this);"/>
                                <label></label>
                                </div>
                            </section> -->
                    </div>
                </div>
                
                
              
                
                 <div class="col-md-6 animate-box" >
                    <div class="services  color-3" >
                        
                            <div class=profile-title>
                                <h3>연락처 변경</h3>
                            </div>
                            <div class="profile-contents" style="height: 50px;" >
                                <div class="title1" style="text-align:left;" >
                                                    핸드폰 번호                          
                                </div>
                                <div class="cont1" >
                                   <input id="text4" type="text" name="phone" maxlength="13" value="${mentee.phone}" readonly style="width:140px; border:none; ">
                                    
                                </div>
                                
                                
                            </div>
                            <!-- <div class="profile-contents" style="height: 50px;">
                                <div class="title1"  style="text-align:left;" >
                                몰랑
                                </div>
                             <div class="cont1" >
                                    <input id="text5" type="text" name="bk" value="뭘써야할지모름" readonly style="width:140px; border:none; ">
                                   
                                </div>
                                
                                
                            </div> -->
                           
                             <div class="toggle toggle--knob" style="position:absolute; right:30px; top:0; ">
                                <input type="checkbox" id="toggle--knob3" class="toggle--checkbox" onClick="cbox3(this,${mentee.no});">
                                <label class="toggle--btn" for="toggle--knob3" style="background:#F9BD41;"><span class="toggle--feature" data-label-on=""  data-label-off="" ></span></label>
                         </div>
                    </div>
                </div>
                
                
                
                
                <div class="col-md-6 animate-box" >
                    <div class="services  color-4" >
                        
                            <div class=profile-title>
                                <h3>주소지 변경</h3>
                            </div>
                            <div class="profile-contents" style="height: 50px;" >
                                   <input id="sample6_postcode" style="width:30%; border:none;" type="text" name="pwd" value="${mentee.pstno}" readonly style="width:140px; border:none; ">
                                   <input type="button" id="findpstno" style="display:none;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                            </div>
                            <div class="profile-contents" style="height: 50px;">
                                    <input id="sample6_address" type="text" style="width:100%; border:none;" name="bk" value="${mentee.bas_addr}" readonly style="width:140px; border:none; ">
                                </div>
                            <div class="profile-contents" style="height: 50px;">
                                    <input id="sample6_address2" type="text" style="width:100%; border:none;" name="bk" value="${mentee.det_addr}" readonly style="width:140px; border:none; ">
                            </div>
                            </div>
                           
                             <div class="toggle toggle--knob" style="position:absolute; right:45px; top:0; ">
                                <input type="checkbox" id="toggle--knob4" class="toggle--checkbox" onClick="cbox4(this,${mentee.no});">
                                <label class="toggle--btn" for="toggle--knob4" style="background:#A64DB6"><span class="toggle--feature" data-label-on=""  data-label-off="" ></span></label>
                         </div>
                    </div>
                </div>
                
                
                 <!-- popup start  -->
                 
                  <div class="popup" style="top:120px;">
 
  <div class="header">
    <div class="title"><h3>멘토 신청</h3> </div>
    <div class="icon"><i class="fa fa-send" title="Send"></i></div>
  </div>
  
   <div class="content"> 
  <form method="post"  name="mentorSubmit" action="imgupload" enctype="multipart/form-data"  onsubmit="return mentorcheck()">
    <input type="hidden" name="no" value="${mentee.no}">
    
    <input type="hidden" name="mtstat" value="${mentee.mtstat}">
    
    <img src="${mentee.phot}">
       
    <div class="infobox">
        이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ${mentee.name}<br>
        닉네임&nbsp;&nbsp;&nbsp;&nbsp;: ${mentee.nick}<br>
        휴대전화 : ${mentee.phone}<br>
        출금은행 : ${mentee.bkname}<br>
        계좌번호 : ${mentee.bkno}<br>
        
    <hr>
    
    <div class="nope" >
    
<select name="btno" id="soflow" >
  <option value="0">분야 선택</option>
   <c:forEach items="${btag}" var="b" varStatus="i">
   <option value="${b.no}">${b.name}</option>
  
   </c:forEach>


</select>

<select name="carrin"  id="soflow2">
  <option value="0">경력 선택</option>
     <%
                  String Result = "";
                  
                  for (int i = 1; i <= 20; i++){
                           if (i < 20){
                                   Result += "<option>"+i+"년"+"</option>";
                           }
                           else{
                                   Result += "<option>"+i+"년이상"+"</option>" ;
                           }
                  }
%>
                     
 <%= Result  %>   
        

</select>
</div>
    
    </div>
 
  
  
 
  <!-- upload file1 code-->
<div id="headbox" >
<h3>작품</h3>
 </div>
 
  <div class="drop">
    <div class="cont">
      <i class="fa fa-cloud-upload"></i>
      <div class="tit">
        Drag & Drop
      </div>
      <div class="desc">
        당신의 작품을 보여주세요!
        <br> (이미지파일을 업로드해주세요)
      </div>
      <div class="browse">
        Haru
      </div>
    </div>
    <output id="list"></output><input id="files" name="fileUpload1" type="file" accept="image/*" multiple/>
  </div>
  
  <!-- upload file1 code-->
  
    <!-- upload file2 code-->
<div id="headbox2" >
<h3>자격증</h3>
 </div>
 
  <div class="drop2">
    <div class="cont">
      <i class="fa fa-cloud-upload"></i>
      <div class="tit">
        Drag & Drop
      </div>
      <div class="desc">
        멘토로써의 자격을 보여주세요!
        <br> (이미지파일을 업로드해주세요)
      </div>
      <div class="browse">
        Haru
      </div>
    </div>
    <output id="list2"></output><input id="files2"  name="fileUpload2" type="file" accept="image/*" multiple/>
  </div>
  
  <!-- upload file2 code-->
 
 
 <button id="btn-sub" class="btn btn-warning" type="submit" >신청</button>
 <button id="btn-cancle" class="btn btn-danger" type="button">취소</button>

  
 
 
  
  
 </form>
</div>
  
</div>

<!-- popup end  -->


 <!-- photoupdate start  -->
          
            <form method="post" name="ppSubmit" action="photoupload" enctype="multipart/form-data" onsubmit="return ppcheck()" >
                   <input type="hidden" name="meno" value="${mentee.no}">
      <div class="modal fade" id="photoupdate" tabindex="1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true" >
                                          <div class="modal-dialog">
                                            <div class="modal-content" style="height:500px; width:500px; margin:0 auto;">
                                                <div class="modal-header">
                                                    <h4 class="modal-title ">프로필 사진 변경</h4>
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                                </div>
                                                <div class="modal-body">
                                                    <!-- content goes here -->
                                                 
<!--업데이트  -->
  <div class="certiUp"> 
<div class="file-upload">
  <button class="file-upload-btn" type="button" onclick="$('.file-upload-input').trigger( 'click' )">프로필 사진</button>

  <div class="image-upload-wrap">
    <input  class="file-upload-input" type='file' name="photoUpdate" onchange="readURL(this);" accept="image/*" />
    <div class="drag-text">
      <h3>프로필 사진은<br>한장만 등록 가능합니다 </h3>
    </div>
  </div>
  <div class="file-upload-content">
    <img class="file-upload-image" src="#" alt="your image" />
    <div class="image-title-wrap">
      <button type="button" onclick="removeUpload()" class="remove-image">  <span class="image-title">Uploaded Image</span> - 삭제 </button>
    </div>
  </div>
</div>
  </div>
  
<!--업데이트  -->
  
  
                                                    <div>
                                                      <button type="submit" class="btn btn-primary" id="2">변경하기</button>
                                                      <button type="button" class="btn btn-danger" id="1" style="float:right" data-dismiss="modal"  role="button" >취소</button>
                                                    </div>

                                                </div>
                                            </div>
                                          </div>
                                        </div>
                                        
</form>

<!-- photo update end  -->
                
                
                <div class="leave" >

                   		 회원탈퇴를 하시려면<a href="#withdrawal" class="btn-leave" data-toggle="modal" data-target="#withdrawal">여기</a>를 누르세요
                </div>
                
                <div class="modal fade" id="withdrawal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                                          <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title" id="repdelet">회원탈퇴</h4>
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                                </div>
                                                <div class="modal-body">
                                                	  <input type="text" value="비밀번호 확인" readonly style="width:20%; border:1px solid #FFB53C;
                                                	   background-color: #FFB53C; color: aliceblue; border-radius:3px; text-align:center; font-weight:bold; margin-bottom:3px; "/><br>
                                                      <input type="password" id="withdrawalpwd" placeholder="비밀번호를 입력해주세요." style="width:70%; margin-top:3px;"/>
                                                </div>
                                                <div>
                                                      <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-left:15px; margin-bottom:10px;" onClick="submitbtn()">탈퇴하기</button>
                                                      <button type="button" class="btn btn-default" style="float:right; margin-right:15px; margin-bottom:10px;" data-dismiss="modal"  role="button">취소</button>
                                            	</div>
                                            </div>
                                          </div>
                                        </div>


            
            
            
            <script>
       /*  function fileCheck2(file)
            {
            	console.log("asd");
                    // 사이즈체크
                    var maxSize  = 10000000;    //10MB
                    var fileSize = 0;
                   // console.log(file[0].size);
                   // console.log(file[1].size);
                    console.log(file);
                   // console.log(file[0].value.size);
                   // console.log(file[1].value.size);
                   console.log($("#files2")[0].files.length);
                    
                    

            	// 브라우저 확인
            	var browser=navigator.appName;
            	
            	// 익스플로러일 경우
            	if (browser=="Microsoft Internet Explorer")
            	{
            		var oas = new ActiveXObject("Scripting.FileSystemObject");
            		fileSize = oas.getFile( file.value ).size;
            		
            	}
            	// 익스플로러가 아닐경우
            	else
            	{
            		console.log($("#files2")[0].files.length);
            		console.log("익스플로러x 실행");
            		for(var x=0; x<$("#files2")[0].files.length; x++){
            			if($("#files2")[0].files[x].size > 2000000 ){
            				swal({
            					text:"첨부파일 한장당 사이즈는 2MB 이내로 등록 가능합니다. ",
            					button:"확인"
            					});
            				console.log("2MB 넘는 파일 이름 : " + file.files[x].name);
            				console.log("2MB 넘는 파일 사이즈 : " +file.files[x].size);
            				console.log(x);
//            				removeImg(x);
            				console.log(file.files[x]);
            				file2.files[x].remove;
            				console.log(file.files[x]);
            				//$('#files').html();
            				$("#files2").val("");
            				//$("div#imgDiv" + x).remove();
            			}else{
            				fileSize += file.files[x].size;
            				console.log(file.files[x].size);
            			}
            		//console.log($("#files").size); 
            		//console.log("asdzxc"); 
            		} 
            			console.log("전체 파일 사이즈 : " + fileSize);
            		
            		console.log("???");
            	}
            	
            	console.log("asdasdasd");
            	//console.log(fileSize);


                    if(fileSize > maxSize)
                    {
                    	swal({
            				text:"첨부파일 전체 사이즈는 10MB 이내로 등록 가능합니다. ",
            				button:"확인"
            				});
                        //alert("첨부파일 사이즈는 10MB 이내로 등록 가능합니다.    ");
                    	$('#files2').val('');
                    }

            }
        
        
        function fileCheck(file)
        {
        	console.log("asd");
                // 사이즈체크
                var maxSize  = 10000000;    //10MB
                var fileSize = 0;
               // console.log(file[0].size);
               // console.log(file[1].size);
                console.log(file);
               // console.log(file[0].value.size);
               // console.log(file[1].value.size);
               console.log($("#files")[0].files.length);
                
                

        	// 브라우저 확인
        	var browser=navigator.appName;
        	
        	// 익스플로러일 경우
        	if (browser=="Microsoft Internet Explorer")
        	{
        		var oas = new ActiveXObject("Scripting.FileSystemObject");
        		fileSize = oas.getFile( file.value ).size;
        		
        	}
        	// 익스플로러가 아닐경우
        	else
        	{
        		console.log("익스플로러x 실행");
        		for(var x=0; x<$("#files")[0].files.length; x++){
        			if(file.files[x].size > 2000000 ){
        				swal({
        					text:"첨부파일 한장당 사이즈는 2MB 이내로 등록 가능합니다. ",
        					button:"확인"
        					});
        				console.log("2MB 넘는 파일 이름 : " + file.files[x].name);
        				console.log("2MB 넘는 파일 사이즈 : " +file.files[x].size);
        				console.log(x);
//        				removeImg(x);
        				console.log(file.files[x]);
        				file.files[x].remove;
        				console.log(file.files[x]);
        				//$('#files').html();
        				$("#files").val("");
        				//$("div#imgDiv" + x).remove();
        			}else{
        				fileSize += file.files[x].size;
        				console.log(file.files[x].size);
        			}
        		//console.log($("#files").size); 
        		//console.log("asdzxc"); 
        		} 
        			console.log("전체 파일 사이즈 : " + fileSize);
        		
        		console.log("???");
        	}
        	
        	console.log("asdasdasd");
        	//console.log(fileSize);


                if(fileSize > maxSize)
                {
                	swal({
        				text:"첨부파일 전체 사이즈는 10MB 이내로 등록 가능합니다. ",
        				button:"확인"
        				});
                    //alert("첨부파일 사이즈는 10MB 이내로 등록 가능합니다.    ");
                	$('#files').val('');
                }

        } */
        
            
            
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
            
            
            
            // 멘토신청 
            
            $("#btn-cancle").click(function(){
                $(".pop").removeClass("hide");
                return $(".popup").removeClass("show");
              });
            
            
            (function() {
                $(".pop").click(function(){
                    
                    var judge = $('#wrapper').attr('name')
                    
                    if( judge == 'Y' ||  judge == 'I'){
                        
                        swal({
                            title: "멘토신청은 한번만 가능합니다!",
                            text: "한분야의 전문가, 프로페셔널~ ",
                            icon: "warning",
                            })
                     } 
                    
                    else{
                        if($('input#text1').val() ==""){
                            swal({
                                text: "개인정보를 모두 입력 후 신청 가능합니다",
                                icon: "warning",
                                button: "확인"
                                });
                            return false;
                        }
                        if($('input#sectext31').val() ==""){
                            swal({
                                text: "개인정보를 모두 입력 후 신청 가능합니다",
                                icon: "warning",
                                button: "확인"
                                });
                            return false;
                        }
                        if($('input#text32').val() ==""){
                            swal({
                                text: "개인정보를 모두 입력 후 신청 가능합니다",
                                icon: "warning",
                                button: "확인"
                                });
                            return false;
                        }
                        if($('input#text4').val() ==""){
                            swal({
                                text: "개인정보를 모두 입력 후 신청 가능합니다",
                                icon: "warning",
                                button: "확인"
                                });
                            return false;
                        }
                        if($('input#sample6_postcode').val() ==""){
                            swal({
                                text: "개인정보를 모두 입력 후 신청 가능합니다",
                                icon: "warning",
                                button: "확인"
                                });
                            return false;
                        }
                        if($('input#sample6_address').val() ==""){
                            swal({
                                text: "개인정보를 모두 입력 후 신청 가능합니다",
                                icon: "warning",
                                button: "확인"
                                });
                            return false;
                        }
                        if($('input#sample6_address2').val() ==""){
                            swal({
                                text: "개인정보를 모두 입력 후 신청 가능합니다",
                                icon: "warning",
                                button: "확인"
                                });
                            return false;
                        }
                        
                        
                        
                        $(".pop").addClass("hide");
                        
                        
                        return $(".popup").addClass("show");
                        
                    }
                 
                  
                  
                });

                $(".icon i").click(function(){
                  $(".pop").removeClass("hide");
                  return $(".popup").removeClass("show");
                });

              }).call(this);

             


              /* upalod js*/

              // File Upload
              var drop = $("input");
drop.on('dragenter', function (e) {
  $(".drop").css({
    "border": "4px dashed #09f",
    "background": "rgba(0, 153, 255, .05)"
  });
  $(".cont").css({
    "color": "#09f"
  });
}).on('dragleave dragend mouseout drop', function (e) {
  $(".drop").css({
    "border": "3px dashed #DADFE3",
    "background": "transparent"
  });
  $(".cont").css({
    "color": "#8E99A5"
  });
});



function handleFileSelect(evt) {
  var files = evt.target.files; // FileList object
  
  // Loop through the FileList and render image files as thumbnails.
  for (var i = 0, f; f = files[i]; i++) {

    // Only process image files.
    if (!f.type.match('image.*')) {
      continue;
    }

    var reader = new FileReader();

    // Closure to capture the file information.
    reader.onload = (function(theFile) {
      return function(e) {
        // Render thumbnail.
        var span = document.createElement('span');
        span.innerHTML = ['<img class="thumb" src="', e.target.result,
                          '" title="', escape(theFile.name), '"/>'].join('');
        document.getElementById('list').insertBefore(span, null);
   
      };
    })(f);

    // Read in the image file as a data URL.
    reader.readAsDataURL(f);
  }
 
  
  
}

$('#files').change(handleFileSelect);


function handleFileSelect2(evt2) {
    var files = evt2.target.files; // FileList object
    
    // Loop through the FileList and render image files as thumbnails.
    for (var i = 0, f; f = files[i]; i++) {

      // Only process image files.
      if (!f.type.match('image.*')) {
        continue;
      }

      var reader = new FileReader();

      // Closure to capture the file information.
      reader.onload = (function(theFile) {
        return function(e) {
          // Render thumbnail.
          var span = document.createElement('span');
          span.innerHTML = ['<img class="thumb2" src="', e.target.result,
                            '" title="', escape(theFile.name), '"/>'].join('');
          document.getElementById('list2').insertBefore(span, null);
     
        };
      })(f);

      // Read in the image file as a data URL.
      reader.readAsDataURL(f);
    }
   
    
  }

  $('#files2').change(handleFileSelect2);



  // 프사 업데이트 js
  
  function readURL(input) {
  if (input.files && input.files[0]) {

    var reader = new FileReader();

    reader.onload = function(e) {
      $('.image-upload-wrap').hide();

      $('.file-upload-image').attr('src', e.target.result);
      $('.file-upload-content').show();

      $('.image-title').html(input.files[0].name);
    };

    reader.readAsDataURL(input.files[0]);

  } else {
    removeUpload();
  }
}

function removeUpload() {
  $('.file-upload-input').replaceWith($('.file-upload-input').clone());
  $('.file-upload-content').hide();
  $('.image-upload-wrap').show();
}
$('.image-upload-wrap').bind('dragover', function () {
        $('.image-upload-wrap').addClass('image-dropping');
    });
    $('.image-upload-wrap').bind('dragleave', function () {
        $('.image-upload-wrap').removeClass('image-dropping');
});
 


            </script>


             

  
 


  