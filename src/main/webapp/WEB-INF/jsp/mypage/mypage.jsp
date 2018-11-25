<%@page import="bitcamp.java110.cms.domain.Mentee"%>
<%@page import="bitcamp.java110.cms.domain.Mentor"%>
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
    <!--  <link rel="stylesheet" href="/css/mypagecss/button/modal.css"> -->
    <!-- <link rel="stylesheet" href="/css/mypagecss/button/slider.css"> -->
    
    <!-- Animate.css -->
    <link rel="stylesheet" href="/css/mypagecss/animate.css">
    <!-- Bootstrap  -->
    <link href="/css/mypagecss/bootstrap.css" rel="stylesheet">
    <!-- Theme style  -->
    <link rel="stylesheet" href="/css/mypagecss/style.css">
    <!-- J Query -->
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <!-- Load JS-->
    <script src=/js/mypagejs/hideshow.js></script> 
    <script src=/js/mypagejs/menu4btn.js></script>
    
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
                    <span class="position"><a href="">MIT Universe.</a><br>{멘토자격증}</span>
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

                <div class="colorlib-footer">
                    <p><small><a href="">Haru</a></small></p>

                </div>

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
                        <div class="row"  style="height: 600px" >

                                    <h2 class="colorlib-heading">수강목록</h2>
                                    <hr color="black">
                                     
                                <!--   수강목록 load-->
                                <div id="menu2"> </div>
                        </div>
                    </div>

                </section>





                <section class="colorlib-skills" data-section="skills">
                    <div class="colorlib-narrow-content">
                        <div class="row"  style="height: 600px" >

                                    <h2 class="colorlib-heading">결제내역</h2>
                                    <hr color="black"    >
                               
                           
                          
                        
  <div class="switch-field">
      <input type="radio" id="classbkt" name="switch_2" value="yes" checked/>
      <label for="classbkt">클래스</label>
      <input type="radio" id="productbkt" name="switch_2" value="no" />
      <label for="productbkt">상품</label>
    </div>
                   
                        
                      <!--   <div>
                        <div id="wrapper" class="wrapper-btn11">
                            <button id="classbkt" class="fancy">클래스</button>
                        </div>
                        
                        <div id="wrapper" class="wrapper-btn22" >
                            <button id="productbkt" class="fancy">상품</button>
                        </div>
                          </div>  -->
                          
                                              
                      <!--   <div style="margin-bottom: 100px;"></div> -->
                        
                        
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
                                    
                        
<div class="switch-field" style="position:relative;">
      <input type="radio" id="btn-menu4-1" name="switch_3" value="yes" checked/>
      <label for="btn-menu4-1">1:1문의</label>
      

      <input type="radio" id="2ndswitch" name="switch_3" value="maybe" />
      <label for="2ndswitch">클래스</label>
      
      
      
      <input type="radio" id="3rdswitch" name="switch_3" value="no"  />
      <label for="3rdswitch">상품</label>
      
      <div id="clsqna" style=" position: absolute; bottom:10%; left:17.2%;">
      <button class="btn-primary" id="btn-menu4-2">질문</button>
      <button class="btn-warning"id="btn-menu4-3">답변</button>
      </div>
      
      
      <div id="prdtqna" style=" position: absolute; bottom:10%; left:29.5%;">
      <button class="btn-primary" id="btn-menu4-4" >질문</button>
      <button class="btn-warning" id="btn-menu4-5">답변</button>
      </div>
      
     

</div>


                        <!-- slider  -->
                        
 <!--                        <nav class="slidemenu">
  
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
  
</nav> -->

<!-- sldier -->


<!-- button -->
<!-- 


                        <div>
                        <div id="wrapper" class="wrapper-btn1">
                            <button id="btn-menu4-1" class="fancy" >1:1문의</button>
                        </div>
                        
                

        <div class="btn-group" style="  position: absolute; left: 30%;" >
  <button  id="btn-classqna" type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
    클래스 QnA
  </button>
  <div class="dropdown-menu" style="border: none;">
       <div id="wrapper" class="wrapper-btn2" style="">
         <button id="btn-menu4-2" class="fancy" >질문</button>
        </div>
                       
       <div id="wrapper" class="wrapper-btn3">
        <button id="btn-menu4-3" class="fancy">답변</button>
    </div>
  </div>
</div>      
                        
                        
                        
                      
<div class="btn-group" style="  position: absolute; left: 60%;">
    <button id="btn-classqna" type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true">
        상품 QnA
    </button>
    <div class="dropdown-menu" style="border: none;">
                                <div id="wrapper" class="wrapper-btn4">
                            <button id="btn-menu4-4" class="fancy">질문</button>
                        </div>
                         <div id="wrapper" class="wrapper-btn5">
                            <button id="btn-menu4-5" class="fancy">답변</button>
                        </div>
    </div>
</div>                     
                        
                        
                        

                                        
                            </div> 
                            
                       -->      
<!-- button -->
                            
                            
                             <div style="margin-bottom: 1px;">
                            
                        </div>
                        
                        
                        <div id="menu4-1"> </div>
                        <div id="menu4-2"> </div>
                        <div id="menu4-3"> </div>
                        <div id="menu4-4"> </div>
                        <div id="menu4-5"> </div>
                        
<!--                        <div id="menu4"></div>-->
                        <!--   -->

                   
                    </div>
                     </div>
                </section>
                               
                           
                        

                        
                      
               
              
                    
                   
                

               
               
                <section class="colorlib-experience" data-section="experience">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                                <span class="heading-meta">Experience</span>
                                <h2 class="colorlib-heading animate-box">Work Experience</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="timeline-centered">
                                    <article class="timeline-entry animate-box" data-animate-effect="fadeInLeft">
                                        <div class="timeline-entry-inner">

                                            <div class="timeline-icon color-1">
                                                <i class="icon-pen2"></i>
                                            </div>

                                            <div class="timeline-label">
                                                <h2><a href="#">Full Stack Developer</a> <span>2017-2018</span></h2>
                                                <p>Tolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial two promise. Greatly who affixed suppose but enquire compact prepare all put. Added forth chief trees but rooms think may.</p>
                                            </div>
                                        </div>
                                    </article>


                                    <article class="timeline-entry animate-box" data-animate-effect="fadeInRight">
                                        <div class="timeline-entry-inner">
                                            <div class="timeline-icon color-2">
                                                <i class="icon-pen2"></i>
                                            </div>
                                            <div class="timeline-label">
                                                <h2><a href="#">Front End Developer at Google Company</a> <span>2017-2018</span></h2>
                                                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                                            </div>
                                        </div>
                                    </article>

                                    <article class="timeline-entry animate-box" data-animate-effect="fadeInLeft">
                                        <div class="timeline-entry-inner">
                                            <div class="timeline-icon color-3">
                                                <i class="icon-pen2"></i>
                                            </div>
                                            <div class="timeline-label">
                                                <h2><a href="#">System Analyst</a> <span>2017-2018</span></h2>
                                                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                                            </div>
                                        </div>
                                    </article>

                                    <article class="timeline-entry animate-box" data-animate-effect="fadeInTop">
                                        <div class="timeline-entry-inner">
                                            <div class="timeline-icon color-4">
                                                <i class="icon-pen2"></i>
                                            </div>
                                            <div class="timeline-label">
                                                <h2><a href="#">Creative Designer</a> <span>2017-2018</span></h2>
                                                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                                            </div>
                                        </div>
                                    </article>

                                    <article class="timeline-entry animate-box" data-animate-effect="fadeInLeft">
                                        <div class="timeline-entry-inner">
                                            <div class="timeline-icon color-5">
                                                <i class="icon-pen2"></i>
                                            </div>
                                            <div class="timeline-label">
                                                <h2><a href="#">UI/UX Designer at Envato</a> <span>2017-2018</span></h2>
                                                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                                            </div>
                                        </div>
                                    </article>

                                    <article class="timeline-entry begin animate-box" data-animate-effect="fadeInBottom">
                                        <div class="timeline-entry-inner">
                                            <div class="timeline-icon color-none">
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="colorlib-work" data-section="work">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                                <span class="heading-meta">My Work</span>
                                <h2 class="colorlib-heading animate-box">Recent Work</h2>
                            </div>
                        </div>
                        <div class="row row-bottom-padded-sm animate-box" data-animate-effect="fadeInLeft">
                            <div class="col-md-12">
                                <p class="work-menu"><span><a href="#" class="active">Graphic Design</a></span> <span><a href="#">Web Design</a></span> <span><a href="#">Software</a></span> <span><a href="#">Apps</a></span></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="project" style="background-image: url(images/img-1.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 01</a></h3>
                                            <span>Website</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 animate-box" data-animate-effect="fadeInRight">
                                <div class="project" style="background-image: url(images/img-2.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 02</a></h3>
                                            <span>Animation</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 animate-box" data-animate-effect="fadeInTop">
                                <div class="project" style="background-image: url(images/img-3.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 03</a></h3>
                                            <span>Illustration</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 animate-box" data-animate-effect="fadeInBottom">
                                <div class="project" style="background-image: url(images/img-4.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 04</a></h3>
                                            <span>Application</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="project" style="background-image: url(images/img-5.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 05</a></h3>
                                            <span>Graphic, Logo</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 animate-box" data-animate-effect="fadeInRight">
                                <div class="project" style="background-image: url(images/img-6.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 06</a></h3>
                                            <span>Web Design</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 animate-box">
                                <p><a href="#" class="btn btn-primary btn-lg btn-load-more">Load more <i class="icon-reload"></i></a></p>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="colorlib-blog" data-section="blog">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                                <span class="heading-meta">Read</span>
                                <h2 class="colorlib-heading">Recent Blog</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="blog-entry">
                                    <a href="blog.html" class="blog-img"><img src="images/blog-1.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                                    <div class="desc">
                                        <span><small>April 14, 2018 </small> | <small> Web Design </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                                        <h3><a href="blog.html">Renovating National Gallery</a></h3>
                                        <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInRight">
                                <div class="blog-entry">
                                    <a href="blog.html" class="blog-img"><img src="images/blog-2.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                                    <div class="desc">
                                        <span><small>April 14, 2018 </small> | <small> Web Design </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                                        <h3><a href="blog.html">Wordpress for a Beginner</a></h3>
                                        <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="blog-entry">
                                    <a href="blog.html" class="blog-img"><img src="images/blog-3.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                                    <div class="desc">
                                        <span><small>April 14, 2018 </small> | <small> Inspiration </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                                        <h3><a href="blog.html">Make website from scratch</a></h3>
                                        <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 animate-box">
                                <p><a href="#" class="btn btn-primary btn-lg btn-load-more">Load more <i class="icon-reload"></i></a></p>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="colorlib-contact" data-section="contact">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                                <span class="heading-meta">Get in Touch</span>
                                <h2 class="colorlib-heading">Contact</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                                    <div class="colorlib-icon">
                                        <i class="icon-globe-outline"></i>
                                    </div>
                                    <div class="colorlib-text">
                                        <p><a href="#">info@domain.com</a></p>
                                    </div>
                                </div>

                                <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                                    <div class="colorlib-icon">
                                        <i class="icon-map"></i>
                                    </div>
                                    <div class="colorlib-text">
                                        <p>198 West 21th Street, Suite 721 New York NY 10016</p>
                                    </div>
                                </div>

                                <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                                    <div class="colorlib-icon">
                                        <i class="icon-phone"></i>
                                    </div>
                                    <div class="colorlib-text">
                                        <p><a href="tel://">+123 456 7890</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7 col-md-push-1">
                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box" data-animate-effect="fadeInRight">
                                        <form action="">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Name">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Email">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Subject">
                                            </div>
                                            <div class="form-group">
                                                <textarea name="" id="message" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <input type="submit" class="btn btn-primary btn-send-message" value="Send Message">
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>
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



                    <div class="social-networks">
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


                        <button type="button" class="btn btn-default" style=" margin-right: 0;">Contact us</button>
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