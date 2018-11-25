<%@page import="bitcamp.java110.cms.domain.Mentee"%>
<%@page import="bitcamp.java110.cms.domain.Mentor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     

<script type="text/javascript">




    function cbox1(chkbox)
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
    }
    }
    
    function cbox2(chkbox)
    {
    if ( chkbox.checked == true )
    {
        text2.readOnly = false;
        text2.style.border = "solid";
        text2.style.borderColor = "#EB5554";
        
        text3.readOnly = false;
        text3.style.border = "solid";
        text3.style.borderColor = "#EB5554";
       
    }
    else
    {
        text2.readOnly = true;
        text2.style.border = "none";
        
        text3.readOnly = true;
        text3.style.border = "none";
    }
    }
    
    
    function cbox3(chkbox)
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
    }
    }
    
    function cbox4(chkbox)
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
                                <div id="wrapper" style=" position: relative; right: -50px; bottom: -60px">
                                <button class="fancy">멘토신청</button>
                                </div>
                            </div>
                          
                         <div class="toggle toggle--knob" style="position:absolute; right:30px; top:0; ">
                                <input type="checkbox" id="toggle--knob1" class="toggle--checkbox" onClick="cbox1(this);" >
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
                                   <input id="text2" type="text" name="pwd" value="&nbsp;**********" readonly style="width:140px; border:none; ">
                                    
                                </div>
                                
                                
                            </div>
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1"  style="text-align:left;" >
                                출금계좌
                                </div>
                             <div class="cont1" >
                                    <input id="text3" type="text" name="bk" value="&nbsp; ${mentee.bkname}&nbsp;&nbsp;&nbsp;${mentee.bkno}" readonly style="width:140px; border:none; ">
                                   
                                </div>
                                
                                
                            </div>
                            
                             <div class="toggle toggle--knob" style="position:absolute; right:30px; top:0; ">
                                <input type="checkbox" id="toggle--knob2" class="toggle--checkbox" onClick="cbox2(this);">
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
                                <h3>비밀번호 변경</h3>
                            </div>
                            <div class="profile-contents" style="height: 50px;" >
                                <div class="title1" style="text-align:left;" >
                                                    핸드폰 번호                          
                                </div>
                                <div class="cont1" >
                                   <input id="text4" type="text" name="pwd" value="&nbsp;  ${mentee.phone}" readonly style="width:140px; border:none; ">
                                    
                                </div>
                                
                                
                            </div>
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1"  style="text-align:left;" >
                                몰랑
                                </div>
                             <div class="cont1" >
                                    <input id="text5" type="text" name="bk" value="&nbsp; 뭘써야함;;" readonly style="width:140px; border:none; ">
                                   
                                </div>
                                
                                
                            </div>
                           
                             <div class="toggle toggle--knob" style="position:absolute; right:30px; top:0; ">
                                <input type="checkbox" id="toggle--knob3" class="toggle--checkbox" onClick="cbox3(this);">
                                <label class="toggle--btn" for="toggle--knob3" style="background:#F9BD41;"><span class="toggle--feature" data-label-on=""  data-label-off="" ></span></label>
                         </div>
                    </div>
                </div>
                
                
                
                
                <div class="col-md-6 animate-box" >
                    <div class="services  color-4" >
                        
                            <div class=profile-title>
                                <h3>비밀번호 변경</h3>
                            </div>
                            <div class="profile-contents" style="height: 50px;" >
                                <div class="title1" style="text-align:left;" >
                                                            비밀번호
                                </div>
                                <div class="cont1" >
                                   <input id="text6" type="text" name="pwd" value="&nbsp; ${mentee.pstno}" readonly style="width:140px; border:none; ">
                                    
                                </div>
                                
                                
                            </div>
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1"  style="text-align:left;" >
                                출금계좌
                                </div>
                             <div class="cont1" >
                                    <input id="text7" type="text" name="bk" value="&nbsp; ${mentee.bas_addr}" readonly style="width:140px; border:none; ">
                                   
                                </div>
                                
                                
                            </div>
                            
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1"  style="text-align:left;" >
                                출금계좌
                                </div>
                             <div class="cont1" >
                                    <input id="text8" type="text" name="bk" value="&nbsp;  ${mentee.det_addr}" readonly style="width:140px; border:none; ">
                                   
                                </div>
                                
                                
                            </div>
                           
                             <div class="toggle toggle--knob" style="position:absolute; right:30px; top:0; ">
                                <input type="checkbox" id="toggle--knob4" class="toggle--checkbox" onClick="cbox4(this);">
                                <label class="toggle--btn" for="toggle--knob4" style="background:#A64DB6"><span class="toggle--feature" data-label-on=""  data-label-off="" ></span></label>
                         </div>
                    </div>
                </div>
                
                
                
                <div class="leave" >
                    
                    회원탈퇴를 하시려면<a href="" class="btn-leave">여기</a>를 누르세요

                </div>

            </div>
  