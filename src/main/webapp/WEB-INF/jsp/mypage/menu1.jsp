<%@page import="bitcamp.java110.cms.domain.Mentee"%>
<%@page import="bitcamp.java110.cms.domain.Mentor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

            <div class="row">

                <div class="col-md-6 animate-box" >
                    <div class="services  color-1" >
                        
                            <div class=profile-title>
                                <h3>나의 프로필</h3>
                            </div>
                            <div class="profile-contents" style=" height: 150px;">
                                <div class="author-img" style="background-image: url(${mentee.phot}); position: absolute;">
                                </div>
                                <div class="cont1" >
                                <B>닉네임</B>&nbsp;&nbsp;&nbsp;${mentee.nick}
                                </div>
                                <div id="wrapper" style=" position: relative; right: -50px; bottom: -60px">
                                <button class="fancy">멘토신청</button>
                                </div>
                            </div>
                            <div class=profile-buttn>
                                <button>수정 </button>
                            </div>
                            
                    </div>
                </div>
                
                <div class="col-md-6 animate-box" >
                    <div class="services  color-2" >
                        
                            <div class=profile-title>
                                <h3>비밀번호 변경</h3>
                            </div>
                            <div class="profile-contents" style="height: 50px" >
                                <div class="title1" >
                                비밀번호
                                </div>
                                <div class="cont1" >
                                    <B>**********</B>
                                </div>
                                
                                
                            </div>
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1" >
                                출금계좌
                                </div>
                                <div class="cont1" >
                                    ${mentee.bkname}&nbsp;&nbsp;&nbsp;${mentee.bkno}
                                </div>
                                
                                
                            </div>
                            <div class=profile-buttn>
                                <button>수정 </button>
                            </div>
                            
                    </div>
                </div>
                
                
                <div class="col-md-6 animate-box" style="margin-top: -50px">
                    <div class="services  color-3" >
                        
                            <div class=profile-title>
                                <h3>연락처</h3>
                            </div>
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1" >
                                핸드폰 번호
                                </div>
                                <div class="cont1" >
                                    ${mentee.phone}
                                </div>
                                
                                
                            </div>
                            <div class="profile-contents" style="height: 50px;">
                                <div class="title1" >
                                몰라몰라
                                </div>
                                <div class="cont1" >
                                    뭘써야할지모르겠어
                                </div>
                                
                                
                            </div>
                            
                            
                            <div class=profile-buttn>
                                <button>수정 </button>
                            </div>
                            
                    </div>
                </div>
                
                <div class="col-md-6 animate-box" style="margin-top: -50px">
                    <div class="services  color-4" >
                        
                            <div class=profile-title>
                                <h3>배송지 설정</h3>
                            </div>
                            <div class="profile-contents" style="height: 35px;">
                                <div class="title1" >
                                우편번호
                                </div>
                                <div class="cont1" >
                                   ${mentee.pstno}
                                </div>
                                
                                
                            </div>
                            <div class="profile-contents" style="height: 35px;">
                                <div class="title1" >
                                기본주소
                                </div>
                                <div class="cont1" >
                                   ${mentee.bas_addr}
                                </div>
                                
                                
                            </div>
                            
                            <div class="profile-contents" style="height: 35px;">
                                <div class="title1" >
                                상세주소
                                </div>
                                <div class="cont1" >
                                   ${mentee.det_addr}
                                </div>
                                
                                
                            </div>
                            
                            
                            <div class=profile-buttn>
                                <button>수정 </button>
                            </div>
                            
                    </div>
                </div>
                
<!--
                <div class="col-md-6 animate-box">
                    <div class="services color-2" >
                        <div class="align-center">
                            <h3>비밀번호/계좌</h3>
                            <div class="pwtxt">
                                비밀번호 </div>
                            <div class="clstxt">
                                계좌번호 </div>
                            <button class=btnset>수정 </button>
                        </div>
                        <div class="align-center" style="position: relative;top: -62px">
                            <div class="pwtxt">
                                비밀번호 </div>
                            <div class="clstxt">
                                계좌번호 </div>
                        </div>

                    </div>
                </div>
                
                <div class="col-md-6 animate-box" >
                    <div class="services color-3" >
                        <div class="align-center">
                            <h3>연락처</h3>




                            <div class="pwtxt">
                                본인확인 이메일 </div>
                            <div class="clstxt">
                                핸드폰번호 </div>
                            <button class=btnset>수정 </button>


                        </div>
                        <div class="align-center" style="position: relative;top: -62px">

                            <div class="pwtxt">
                                bitcamp@bmail.com </div>
                            <div class="clstxt">
                                010-0101-0202 </div>
                        </div>

                    </div>
                </div>
                
                <div class="col-md-6 animate-box">
                 
                    <div class="services color-4">
                        <div class="align-center">
                            <h3>배송지 설정</h3>


                            <div class="pwtxt">
                                우편번호 </div>
                            <div class="pwtxt">
                                기본주소 </div>
                            <div class="clstxt">
                                상세주소 </div>
                            <button class=btnset>수정 </button>


                        </div>
                        <div class="align-center" style="position: relative;top: -62px">

                            <div class="pwtxt">
                                330-20 </div>
                            <div class="clstxt">
                                서울시 서초구 서초1동 </div>
                            <div class="clstxt">
                                bit동 11032호 </div>
                        </div>

                    </div>
                </div>
                
                -->
                
                
                
                <div class="leave" >
                    
                    회원탈퇴를 하시려면<a href="" class="btn-leave">여기</a>를 누르세요

                </div>

            </div>
  