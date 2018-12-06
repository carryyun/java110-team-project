<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     

<script type="text/javascript">

  function cbox1(chkbox,meno)
    {
         
       if ( chkbox.checked == true )
            {
            text1.readOnly = false;
            text1.style.border = "solid";
            text1.style.borderColor = "#3097F0";
            }
        
        else
            {   
            text1.readOnly = true;
            text1.style.border = "none"; 
            
            
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
                         button : "확인"
                         })
                     },error : function(error,status){
                         swal({
                             text : "이미 존재하는 닉네임 입니다!",
                             button : "확인"
                             })
                             }
                     }); 
 
            } 
    } 
    
    
  
    
    function cbox2(chkbox,meno)
    {
    if ( chkbox.checked == true )
    {
        text2.readOnly = false;
        text2.style.border = "solid";
        text2.style.borderColor = "#EB5554";
        
        text31.readOnly = false;
        text31.style.border = "solid";
        text31.style.borderColor = "#EB5554";
        text32.readOnly = false;
        text32.style.border = "solid";
        text32.style.borderColor = "#EB5554";
       
    }
    else
    {
        text2.readOnly = true;
        text2.style.border = "none";
        
        text31.readOnly = true;
        text31.style.border = "none";
        text32.readOnly = true;
        text32.style.border = "none";
        
        var newpwd = $('#text2').val();
        var newbkname = $('#text31').val();
        var newbkno = $('#text32').val();
        
        console.log(newpwd+newbkname+newbkno);
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
                 button : "확인"
                 })
             },error : function(error,status){
                 swal({
                     text : "비밀번호는 최소 ?? 글자 이상이어야합니다.",
                     button : "확인"
                     })
                     }
             }); 
    }
    }
    
    
    function cbox3(chkbox,meno)
    {
    if ( chkbox.checked == true )
    {
        text4.readOnly = false;
        text4.style.border = "solid";
        text4.style.borderColor = "#F9BD41";
        
        text5.readOnly = false;
        text5.style.border = "solid";
        text5.style.borderColor = "#F9BD41";
       
    }
    else
    {
        text4.readOnly = true;
        text4.style.border = "none";
        
        text5.readOnly = true;
        text5.style.border = "none";
        
         var newphone = $('#text4').val();
      
        
        $.ajax({
            type: "POST",
            data: {
                "no" : meno,
                "phone" : newphone 
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
                     button : "확인"
                     })
                     }
             }); 
        
        
        
    }
    }
    
    function cbox4(chkbox,meno)
    {
    if ( chkbox.checked == true )
    {
        text6.readOnly = false;
        text6.style.border = "solid";
        text6.style.borderColor = "#A64DB6";
        
        text7.readOnly = false;
        text7.style.border = "solid";
        text7.style.borderColor = "#A64DB6";
        
        text8.readOnly = false;
        text8.style.border = "solid";
        text8.style.borderColor = "#A64DB6";
       
    }
    else
    {
        text6.readOnly = true;
        text6.style.border = "none";
        
        text7.readOnly = true;
        text7.style.border = "none";
        
        text8.readOnly = true;
        text8.style.border = "none";
        
        
        var newpstno = $('#text6').val();
        var newbas= $('#text7').val();
        var newdet= $('#text8').val();
      
        
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
    }
}


</script>
            <div class="row" >

                <div class="col-md-6 animate-box"  >
                    <div class="services  color-1" >
                        
                            <div class=profile-title>
                                <h3>나의 프로필</h3>
                            </div>
                            <div class="profile-contents" style=" height: 150px;">
                                <div class="author-img" style="background-image: url(${mentee.phot}); position: absolute;">
                                </div>
                                <div class="cont1" >
                                <B>닉네임</B>&nbsp;
                                <input id="text1" type="text" name="닉네임" value="&nbsp;${mentee.nick}" readonly style="width:140px; border:none; ">
                                </div>
                                <div id="wrapper" class="pop" style=" position: relative; right: -50px; bottom: -60px">
                                <button class="fancy">멘토신청</button>
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
                                <h3>비밀번호 변경</h3>
                            </div>
                            <div class="profile-contents" style="height: 50px;" >
                                <div class="title1" style="text-align:left;" >
                             비밀번호
                                </div>
                                <div class="cont1" >
                                   <input id="text2" type="text" name="pwd" value="${mentee.pwd}" readonly style="width:140px; border:none; ">
                                    
                                </div>
                                
                                
                            </div>
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1"  style="text-align:left;" >
                                은행
                                </div>
                             <div class="cont1" >
                                    <input id="text31" type="text" name="bk" value="${mentee.bkname}" readonly style="width:140px; border:none; ">
                                   
                                </div>
                                
                                
                            </div>
                            
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1"  style="text-align:left;" >
                                출금계좌
                                </div>
                             <div class="cont1" >
                                    <input id="text32" type="text" name="bk" value="${mentee.bkno}" readonly style="width:140px; border:none; ">
                                   
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
                                   <input id="text4" type="text" name="pwd" value="${mentee.phone}" readonly style="width:140px; border:none; ">
                                    
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
                                <div class="title1" style="text-align:left;" >
                                                            우편번호
                                </div>
                                <div class="cont1" >
                                   <input id="text6" type="text" name="pwd" value="${mentee.pstno}" readonly style="width:140px; border:none; ">
                                    
                                </div>
                                
                                
                            </div>
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1"  style="text-align:left;" >
                                기본주소
                                </div>
                             <div class="cont1" >
                                    <input id="text7" type="text" name="bk" value="${mentee.bas_addr}" readonly style="width:140px; border:none; ">
                                   
                                </div>
                                
                                
                            </div>
                            
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1"  style="text-align:left;" >
                                상세주소
                                </div>
                             <div class="cont1" >
                                    <input id="text8" type="text" name="bk" value="${mentee.det_addr}" readonly style="width:140px; border:none; ">
                                   
                                </div>
                                
                                
                            </div>
                           
                             <div class="toggle toggle--knob" style="position:absolute; right:30px; top:0; ">
                                <input type="checkbox" id="toggle--knob4" class="toggle--checkbox" onClick="cbox4(this,${mentee.no});">
                                <label class="toggle--btn" for="toggle--knob4" style="background:#A64DB6"><span class="toggle--feature" data-label-on=""  data-label-off="" ></span></label>
                         </div>
                    </div>
                </div>
                
                
                 <!-- popup start  -->
                  <div class="popup">
 
  <div class="header">
    <div class="title">멘토 신청 </div>
    <div class="icon"><i class="fa fa-send" title="Send"></i></div>
  </div>
  
  <div class="content">

    <img src="${mentee.phot}" >
   
    <div class="infobox">
        이름:${mentee.name}<br>
        닉네임:${mentee.nick}<br>
        휴대전화:${mentee.phone}<br>
        출금은행:${mentee.bkname}<br>
        계좌번호:${mentee.bkno}<br>
    <hr>
        분야:<br>
        경력: ${mentor.carr}년
    </div>
 
  </div>
  
  
  <!-- upload img code-->
  <div id="upWorkout">
  <h2>작품</h2>
<p class="lead"> <b> 당신의 실력을 증명할<br>작품을 업로드 해주세요!</b></p>

<!-- Upload  -->
<form id="file-upload-form" class="uploader">
  <input id="file-upload" type="file" name="fileUpload" accept="image/*" />

  <label for="file-upload" id="file-drag">
    <img id="file-image" src="#" alt="Preview" class="hidden">
    <div id="start">
      <i class="fa fa-download" aria-hidden="true"></i>
      <div>Drag and Drop!! </div>
      <div id="notimage" class="hidden">Please select an image</div>
      <span id="file-upload-btn" class="btn btn-primary" style="height:50px;">이미지 선택</span>
    </div>
    <div id="response" class="hidden">
      <div id="messages"></div>
      <progress class="progress" id="file-progress" value="0">
        <span>0</span>%
      </progress>
    </div>
  </label>
  
</form>
 
 </div>
 
  <!-- upload img code-->
  
 
 <!-- certi upload code -->
 
 <div class="certiUp"> 
<div class="file-upload">
 <h2>자격증</h2>
<p class="lead"> <b> 당신의 실력을 증명할<br>자격증을 업로드 해주세요!</b></p>
  <button class="file-upload-btn" type="button" onclick="$('.file-upload-input').trigger( 'click' )">자격증</button>

  <div class="image-upload-wrap">
    <input class="file-upload-input" type='file' onchange="readURL(this);" accept="file/*" />
    <div class="drag-text">
      <h3>Drag and drop a file! </h3>
    </div>
  </div>
  <div class="file-upload-content">
    
    <div class="image-title-wrap">
      <button type="button" onclick="removeUpload()" class="remove-image">  <span class="image-title">Uploaded Image</span> - 삭제 </button>
    </div>
  </div>
</div>
     
  </div>
  
 <button id="btn-sub" class="btn btn-warning">신청</button>
     <button id="btn-cancle"class="btn btn-danger">취소</button>
  <!-- certi upload code -->
 
 <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
  
  

  
</div>

<!-- popup end  -->
                
                
                <div class="leave" >
                    
                    회원탈퇴를 하시려면<a href="" class="btn-leave">여기</a>를 누르세요

                </div>
                
                

            </div>
            
            
            
            <script>
            (function() {
                $(".pop").click(function(){
                  $(".pop").addClass("hide");
                  return $(".popup").addClass("show");
                });

                $(".icon i").click(function(){
                  $(".pop").removeClass("hide");
                  return $(".popup").removeClass("show");
                });

              }).call(this);

             


              /* upalod js*/

              // File Upload
              // 
              function ekUpload(){
                function Init() {

                  console.log("Upload Initialised");

                  var fileSelect    = document.getElementById('file-upload'),
                      fileDrag      = document.getElementById('file-drag'),
                      submitButton  = document.getElementById('submit-button');

                  fileSelect.addEventListener('change', fileSelectHandler, false);

                  // Is XHR2 available?
                  var xhr = new XMLHttpRequest();
                  if (xhr.upload) {
                    // File Drop
                    fileDrag.addEventListener('dragover', fileDragHover, false);
                    fileDrag.addEventListener('dragleave', fileDragHover, false);
                    fileDrag.addEventListener('drop', fileSelectHandler, false);
                  }
                }

                function fileDragHover(e) {
                  var fileDrag = document.getElementById('file-drag');

                  e.stopPropagation();
                  e.preventDefault();

                  fileDrag.className = (e.type === 'dragover' ? 'hover' : 'modal-body file-upload');
                }

                function fileSelectHandler(e) {
                  // Fetch FileList object
                  var files = e.target.files || e.dataTransfer.files;

                  // Cancel event and hover styling
                  fileDragHover(e);

                  // Process all File objects
                  for (var i = 0, f; f = files[i]; i++) {
                    parseFile(f);
                    uploadFile(f);
                  }
                }

                // Output
                function output(msg) {
                  // Response
                  var m = document.getElementById('messages');
                  m.innerHTML = msg;
                }

                function parseFile(file) {

                  console.log(file.name);
                  output(
                    '<strong>' + encodeURI(file.name) + '</strong>'
                  );
                  
                  // var fileType = file.type;
                  // console.log(fileType);
                  var imageName = file.name;

                  var isGood = (/\.(?=gif|jpg|png|jpeg)/gi).test(imageName);
                  if (isGood) {
                    document.getElementById('start').classList.add("hidden");
                    document.getElementById('response').classList.remove("hidden");
                    document.getElementById('notimage').classList.add("hidden");
                    // Thumbnail Preview
                    document.getElementById('file-image').classList.remove("hidden");
                    document.getElementById('file-image').src = URL.createObjectURL(file);
                  }
                  else {
                    document.getElementById('file-image').classList.add("hidden");
                    document.getElementById('notimage').classList.remove("hidden");
                    document.getElementById('start').classList.remove("hidden");
                    document.getElementById('response').classList.add("hidden");
                    document.getElementById("file-upload-form").reset();
                  }
                }

                function setProgressMaxValue(e) {
                  var pBar = document.getElementById('file-progress');

                  if (e.lengthComputable) {
                    pBar.max = e.total;
                  }
                }

                function updateFileProgress(e) {
                  var pBar = document.getElementById('file-progress');

                  if (e.lengthComputable) {
                    pBar.value = e.loaded;
                  }
                }

                function uploadFile(file) {

                  var xhr = new XMLHttpRequest(),
                    fileInput = document.getElementById('class-roster-file'),
                    pBar = document.getElementById('file-progress'),
                    fileSizeLimit = 1024; // In MB
                  if (xhr.upload) {
                    // Check if file is less than x MB
                    if (file.size <= fileSizeLimit * 1024 * 1024) {
                      // Progress bar
                      pBar.style.display = 'inline';
                      xhr.upload.addEventListener('loadstart', setProgressMaxValue, false);
                      xhr.upload.addEventListener('progress', updateFileProgress, false);

                      // File received / failed
                      xhr.onreadystatechange = function(e) {
                        if (xhr.readyState == 4) {
                          // Everything is good!

                          // progress.className = (xhr.status == 200 ? "success" : "failure");
                          // document.location.reload(true);
                        }
                      };

                      // Start upload
                      xhr.open('POST', document.getElementById('file-upload-form').action, true);
                      xhr.setRequestHeader('X-File-Name', file.name);
                      xhr.setRequestHeader('X-File-Size', file.size);
                      xhr.setRequestHeader('Content-Type', 'multipart/form-data');
                      xhr.send(file);
                    } else {
                      output('Please upload a smaller file (< ' + fileSizeLimit + ' MB).');
                    }
                  }
                }

                // Check for the various File API support.
                if (window.File && window.FileList && window.FileReader) {
                  Init();
                } else {
                  document.getElementById('file-drag').style.display = 'none';
                }
              }
              ekUpload();



              /* certi upload*/


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
  