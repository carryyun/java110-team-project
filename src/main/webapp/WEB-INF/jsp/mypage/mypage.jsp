<%@page import="bitcamp.java110.cms.domain.Mentee"%>
<%@page import="bitcamp.java110.cms.domain.Mentor"%>
<%@page import="bitcamp.java110.cms.domain.Cert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
 
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Jackson Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />


    <!--    버튼-->
    <link rel="stylesheet" href="/css/mypagecss/button/skyblue-gradient.css">
    <link rel="stylesheet" href="/css/mypagecss/button/switchbtn.css">
    <link rel="stylesheet" href="/css/mypagecss/button/flipbtn.css">
    <link rel="stylesheet" href="/css/mypagecss/button/togglebtn.css">
    
    <!--  sweetalert   -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js "></script>
    <!-- Animate.css -->
    <link rel="stylesheet" href="/css/mypagecss/animate.css">
    <!-- Bootstrap  -->
    <link href="/css/mypagecss/bootstrap.css" rel="stylesheet">
    <!-- Theme style  -->
    <link rel="stylesheet" href="/css/mypagecss/style.css">
     <!-- 멘토신청 popup css  -->
    <link href="/css/mypagecss/popup.css" rel="stylesheet">
    
    <!-- J Query -->
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <!-- Load JS-->
    <script src=/js/mypagejs/hideshow.js></script>
    <!-- 멘토신청 popup JS-->
  <!--   <script src=/js/mypagejs/popup.js></script>  -->
        

    <script>
    
    // 마이페이지 멘토 경력 조건
    
    $(document).ready(function() {
       console.log($('#stat').attr('name'));
     if($('#stat').attr('name') == 'Y' ){
            document.getElementById(id="stat").style.display = "";
            document.getElementById(id="stathiddn").style.display = "none";
      } 
     else{
         document.getElementById(id="stat").style.display = "none";
         document.getElementById(id="stathiddn").style.display = "";
     }
    });
    
     /* menu4 btn 스크립트 */ 
    function div_OnOff(v){
        // 라디오 버튼 value 값 조건 비교
        if(v == "3"){
         document.getElementById(id="con3").style.display = ""; // 보여줌
         document.getElementById(id="con2").style.display = "none"; // 숨김
         
        }
        else if(v == "2"){
            document.getElementById(id="con2").style.display = ""; // 보여줌
            document.getElementById(id="con3").style.display = "none"; // 숨김
            
           }
        else{
         document.getElementById(id="con3").style.display = "none"; // 숨김
         document.getElementById(id="con2").style.display = "none"; // 숨김
        }
        
        
       }
    </script>
    


    <style>

        #colorlib-aside {
                overflow: hidden;
            }
  
        #th-pay th,
        #tb-pay td{
                vertical-align: middle;
                text-align:center
         }
         
     </style>
      
     
</head>

<body>

    <div id="colorlib-page">
        <div class="container-wrap">

            <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
            <aside id="colorlib-aside" role="complementary" class="border js-fullheight">
                <div class="text-center">
                    <div class="author-img" style="background-image: url(${mentee.phot};"></div>
                    <h1 id="colorlib-logo"><a href="index.html">${mentee.name}</a></h1>
                    <span id="stat" name="${mentee.mtstat}"class="position;" style="display:none" ><B>멘토 경력 ${mentor.carr} 년</B><br></span>
                  <span id="stathidden"  class="position;" style="display:"> <br></span> 
                </div>

                <nav id="colorlib-main-menu" role="navigation" class="navbar">
                    <div id="navbar" class="collapse">
                        <ul>
                            <li><a href="#" data-nav-section="about">회원정보수정</a></li>
                            <li><a href="#" data-nav-section="services">수강목록</a></li>
                            <li><a href="#" data-nav-section="skills">결제내역</a></li>
                            <li><a href="#" data-nav-section="education">내 활동보기</a></li>
                            <li><a href="#" data-nav-section="experience">클래스 관리</a></li>
                            <li><a href="#" data-nav-section="work">상품 관리</a></li>
                        </ul>
                    </div>
                </nav>

                
            </aside>

            <div id="colorlib-main">



                <section class="colorlib-about" data-section="about" >
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            
                              
                                    
                                        <div class="about-desc">

                                            <h2 class="colorlib-heading">회원정보수정</h2>
                                            <hr color="black">
                                        </div>
                                  
                            
                                <!--   회원정보수정 load-->
                                <div id="menu1"> </div>


                        </div>
                    </div>

                </section>




                <section class="colorlib-services" data-section="services">
                    <div class="colorlib-narrow-content">
                        <div class="row"   >

                                    <h2 class="colorlib-heading">수강목록</h2>
                                    <hr color="black">
                                     
                                <!--   수강목록 load-->
                                <div id="menu2"> </div>
                        </div>
                    </div>

                </section>





                <section class="colorlib-skills" data-section="skills">
                    <div class="colorlib-narrow-content">
                        <div class="row"   >

                                    <h2 class="colorlib-heading">결제내역</h2>
                                    <hr color="black"    >
                               
                           
                          
                        
  <div class="switch-field">
      <input type="radio" id="classbkt" name="switch_2" value="yes" checked/>
      <label for="classbkt">클래스</label>
      <input type="radio" id="productbkt" name="switch_2" value="no" />
      <label for="productbkt">상품</label>
    </div>
                   
                        
                        <div id="menu3-1"> </div>
                        <div id="menu3-2"> </div>
                        
          

                    </div>
                    </div>
                </section>


               
                 <section class="colorlib-skills" data-section="education"  >
                    <div class="colorlib-narrow-content"  >
                        <div class="row"  >

                                    <h2 class="colorlib-heading">내 활동보기</h2>
                                    <hr color="black"    >
                                    
                        
<div class="switch-field" style="position:relative; height:117px; ">
      <input type="radio" id="btn-menu4-1" name="switch_3" value="1" onclick="div_OnOff(this.value);"     checked/>
      <label for="btn-menu4-1">1:1문의</label>
      

      <input type="radio" id="2ndswitch" name="switch_3" value="2" onclick="div_OnOff(this.value);" />
      <label class="3bro" for="2ndswitch" >클래스</label>
      
      <input type="radio" id="3rdswitch"  name="switch_3" value="3" onclick="div_OnOff(this.value);"  />
      <label for="3rdswitch">상품</label>
      
      
      <div id="con2"  class="switch-field" style="display:none; padding:0; position: absolute; bottom:0; left:26.8%;" >
      <input type="radio" id="btn-menu4-2" name="switch_2" value="42" checked/>
      <label for="btn-menu4-2" style="width:100px;">질문</label>
      <input type="radio" id="btn-menu4-3" name="switch_2" value="43" />
      <label for="btn-menu4-3" style="width:100px;">답변</label>
      </div>
      
      
       <div id="con3"  class="switch-field" style="display:none; padding:0; position: absolute; bottom:0; left:50.8%;">
      <input type="radio" id="btn-menu4-4" name="switch_2" value="44" checked/>
      <label for="btn-menu4-4" style="width:100px;">질문</label>
      <input type="radio" id="btn-menu4-5" name="switch_2" value="45" />
      <label for="btn-menu4-5" style="width:100px;">답변</label>
      </div>


</div>


                        <!-- slider  -->
   <!--                      
                        <nav class="slidemenu">
  
  Item 1
  <input type="radio" name="slideItem" id="btn-menu4-1" class="slide-toggle" checked/>
  <label for="btn-menu4-1"><p class="icon">❔</p><span>1:1문의</span></label>
  
  Item 2
  <input type="radio" name="slideItem" id="btn-menu4-2" class="slide-toggle"/>
  <label for="btn-menu4-2"><p class="icon"> <img src=images.png style="width: 50%; height: auto;"></p><span>클래스</span></label>

  Item 3
  <input type="radio" name="slideItem" id="btn-menu4-4" class="slide-toggle"/>
  <label for="btn-menu4-4"><p class="icon"> <img src=goods.png style="width: 50%; height: auto;"></p><span>상품</span></label>
  
 
  
  <div class="clear"></div>
  
  Bar
  <div class="slider">
    <div class="bar"></div>
  </div>
  
</nav>  -->

<!-- sldier -->
                             <div style="margin-bottom: 1px;">
                            
                        </div>
                        
                        <div id="menu4-1"> </div>
                        <div id="menu4-2"> </div>
                        <div id="menu4-3"> </div>
                        <div id="menu4-4"> </div>
                        <div id="menu4-5"> </div>
                        
                    </div>
                     </div>
                </section>
                               
                           
                        

                        
                      
               
              
                    
                   
                

               
               
                <section class="colorlib-experience" data-section="experience">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                                <h2 class="colorlib-heading" >클래스 관리</h2>
                                 <hr color="black"    >
                   
                    <div id="menu5"></div>
                    <div id="menu5disable"></div>
                    <div id="menu5disable2"></div>
                        
                    </div>
                    </div>
                </section>



                <section class="colorlib-work" data-section="work">
                    <div class="colorlib-narrow-content">
                    <div class="row">
                                <h2 class="colorlib-heading animate-box">상품 관리</h2>
                                  <hr color="black"    >
                        
                        <div id="menu6"></div>
                        <div id="menu6buyer"></div>
                        
                    </div>
                    </div>
                </section>

                

                

            </div><!-- end:colorlib-main -->
        </div><!-- end:container-wrap -->
    </div><!-- end:colorlib-page -->

    <!-- Footer -->
    <footer id="myFooter">
        <div class="container">
            <div class="row">


                <div class="col-sm-2" style="height: 100%;">
                    <h5><a href="#">회사소개</a></h5>

                </div>

                <div class="col-sm-2" style="height: 100%;">
                    <h5><a href="#">공지사항</a></h5>

                </div>
                <div class="col-sm-2" style="height: 100%;">
                    <h5><a href="#">고객센터</a></h5>

                </div>
                <div class="col-sm-2" style="height: 100%;">
                    <h5><a href="#">이용약관</a></h5>
                </div>

                <!--
                <div class="col-sm-2">
                     <h5>개인정보처리방침</h5>
                </div>
-->







                <div class="col-sm-3" style="text-align: right;">
                    <h2 class="logo"><a href="#"> HARU </a></h2>
                    <p><b>카카오톡 플러스</b><br>: @Haru</p>

                    <p><b>고객센터 운영시간</b><br>평일 AM 10:00 ~ PM 06:00<br>점심 AM 12:30 ~ PM 01:30</p>



                    <div class="social-networks" >
                        <ul style="text-align: right;">
                            <li class="list-inline-item" style="position: relative;">
                                <a href="#" class="twitter"><i class="fab fa-twitter  fa-inverse"></i></a>
                            </li>

                            <li class="list-inline-item" style="position: relative;">
                                <a href="#" class="facebook"><i class="fab fa-facebook-f  fa-inverse"></i></a>
                            </li>

                            <li class="list-inline-item" style="position: relative;">
                                <a href="#" class="google"><i class="fab fa-google-plus  fa-inverse"></i></a>
                            </li>

                        </ul>


                        <button  type="button" class="btn btn-default" style=" margin-right: 0;">Contact us</button>
                    </div>
                </div>




                <div class="footer-copyright" style="text-align: left;">
                    <p>상호 : (주)하루 | 주소 : 비트캠프 서울시 서초구 서초동 1327-15 비트아카데미빌딩 | 사업자등록번호 : 767-88-00000 | 대표자명 : 오호라 </p>
                    <p>Copyright ⓒ2018 Haru inc, ltd. All rights reserved </p>
                </div>
            </div>

        </div>

    </footer>


    
    



</body>
    <!-- jQuery -->
    <script src="/js/mypagejs/jquery.min.js"></script>
    <!-- Waypoints -->
    <script src="/js/mypagejs/jquery.waypoints.min.js"></script>
    <!-- Counters -->
    <script src="/js/mypagejs/jquery.countTo.js"></script>
    
    <!-- MAIN JS -->
    <script src="/js/mypagejs/main.js"></script>
    <script src="/js/mypagejs/bootstrap.min.js"></script>
 
</html>