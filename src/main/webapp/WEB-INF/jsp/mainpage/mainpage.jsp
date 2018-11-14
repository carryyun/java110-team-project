<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%-- 부트스트랩 --%>
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<%-- minicarousel --%>

        <link href="/css/owl.carousel.css" rel="stylesheet">

<%-- 만든 css --%>
<link rel="stylesheet" href="/css/main-menu.css">

</head>
<body>
    <div class="container">
        <div class="row">

            <!-- 메인 carousel -->
            <div class="container" id="main-carousel">
                <div class="row">
                    
                    <div class="col-lg-12">
			        <jsp:include page="../headerMain.jsp"></jsp:include>
			        </div>
                    
                    <!--Carousel Wrapper-->
                    <div id="carousel-example-2" class="carousel slide carousel-fade" data-ride="carousel">
                        <!--Indicators-->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-2" data-slide-to="1"></li>
                            <li data-target="#carousel-example-2" data-slide-to="2"></li>
                        </ol>
                        <!--/.Indicators-->
                        <!--Slides-->
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <div class="view">
                                    <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(68).jpg" alt="First slide">
                                    <div class="mask rgba-black-light"></div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <!--Mask color-->
                                <div class="view">
                                    <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(6).jpg" alt="Second slide">
                                    <div class="mask rgba-black-strong"></div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <!--Mask color-->
                                <div class="view">
                                    <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(9).jpg" alt="Third slide">
                                    <div class="mask rgba-black-slight"></div>
                                </div>
                            </div>
                        </div>
                        <!--/.Slides-->
                    </div>

                </div><!-- main carousel main-->
            </div><!-- main carousel container-->

            <!-- 메인 네비 -->
            <div class="container" id="main-nav">
                <div class="row" id="main-nav-row">
                <div class="col-lg-12">
			    <jsp:include page="../headerNav.jsp"></jsp:include>
			    </div>
                    </div><!-- large size-->
                </div><!-- 메인 row-->
            </div><!-- 메인 container-->

            <!-- 사이드바 -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <ul>
                            <h3>인싸예감 클래스</h3>
                            <c:forEach items="${list}" var="m">
                                <li><a href="#">java</a></li>
                                <li><a href="#">C++</a></li>
                                <li><a href="#">AI</a></li>
                                <li><a href="#">빅데이터</a></li>
                                <li><a href="#">포토샵</a></li>
                            </c:forEach>
                        </ul>
                    </div>

                    <!-- 인싸예감 클래스(카르셀) -->
                    <div class="col-lg-9">
	                    <div class="col">
			             <h2>오늘의 핫 아이템</h2>
			        <div id="owl-hotItem" class="owl-carousel col-lg-10 mt-2"  style="margin:0 auto">
			            
			        </div>
        <div class="owl-btns">
            <div class="cusnext">></div>
            <div class="cusprev"><</div>
        </div>
        </div>
                    
                    </div>
                </div><!-- 사이드바 row-->
            </div><!-- 사이드바 container-->

            <!-- 오늘의 추천작품 -->
            <div class="container">
               <hr color="black"/>
                <div class="row">
                   
                    <div class="col-lg-12">
                        <h2>오늘의 추천작품</h2>
                        <div class="button_base b01_simple_rollover">작품 더보기</div>
                    </div>
                </div><!-- 추천작품 row 1-->
            </div><!-- 오늘의 추천작품 container-->

            <!-- 오늘의 추천작품 carousel-->
            <div class="container" id="prodCar">
                    <div class="row blog">
                        <div class="col-md-12">
                            <div id="blogCarousel" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#blogCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#blogCarousel" data-slide-to="1"></li>
                                </ol>

                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                        </div>
                                        <!--.row-->
                                    </div>
                                    <!--.item-->

                                    <div class="carousel-item">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                                </a>
                                            </div>
                                        </div><!--.row-->
                                    </div><!--.item-->
                                </div><!--.carousel-inner-->
                            </div><!--.Carousel-->
                            <hr color="black" style="margin-top: 5%"/>

                        </div>
                    </div><!-- 추천작품 row-->
            </div><!-- 추천작품 container 2-->
            
          
                
    <script>
    var owl = $("#owl-hotItem");
      $(document).ready(function(){
          
          var data = { "items" : ${pp_list} };
          console.log(data);
        owl.owlCarousel({
          nav:false,
          loop:true,
          items:3,
          margin:10,
          jsonPath : 'json/customData.json',
          jsonSuccess : customDataSuccess(data),
          
        });

        function customDataSuccess(data) {
            var content = "";
            var style=
                "cursor:pointer;" + 
                "background-color:weat;" +
                "text-align:center;"
            for ( var i in data["items"]) {
             
             var phot = data["items"][i].phot;
             var titl = data["items"][i].titl;
             var pric = data["items"][i].pric;
             content += "<div class='col' id='owl-col'>"
             content += "<div class='row' id='owl-row'>"
             content += "<img id='owl-img' src=\"" +phot+ "\" alt=\"" +titl+ "\">"
             content += "<div class='col-lg-12' id='owl-col2'>" + titl + "</div>"
             content += "<div class='col-lg-12' id='owl-col3'>" + pric + "￦</div>"
             content += "</div>"
             content += "</div>"
            }
            owl.html(content);
        }

       });
      $(".cusnext").click(function() {
          owl.trigger('next.owl.carousel');
      });

      $(".cusprev").click(function() {
          owl.trigger('prev.owl.carousel');
      });
      
       </script> 

        </div><!-- all row -->
    </div><!-- all container-->
    
    <!-- Bootstrap core JavaScript -->
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<!-- js 추가 -->
	<script src="/js/clean-blog.js"></script>
	<script src="/js/owl.carousel.js"></script>
</body>
</html>