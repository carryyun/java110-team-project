<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<html>
<head>
<meta charset="UTF-8">
<title>하루 - Haru</title>

<%-- 부트스트랩 --%>
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<%-- 만든 css --%>
<link rel="stylesheet" href="/css/main-menu.css">

<%-- maincarousel --%>
<link href="/css/owl.carousel.css" rel="stylesheet">
<link href="/css/clean-blog.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<link href="/css/main-menu.css" rel="stylesheet">

</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <jsp:include page="../headerMain.jsp"></jsp:include>
            </div>
        </div>
    </div>

    <div class="text-center" id="main-carousel">
        <div class="row">
            <!--Carousel Wrapper-->
            <div id="carousel-banner" class="carousel slide carousel-fade" data-ride="carousel">
                <!--Indicators--> 
                <ol class="carousel-indicators" id="carousel-ol">
                    <li data-target="#carousel-banner" data-slide-to="0"><img class="w-100 h-100" src="/upload/img/banner_1.png" alt="First"></li>
                    <li data-target="#carousel-banner" data-slide-to="1" class="active"><img class="w-100 h-100" src="/upload/img/banner_2.png" alt="Second"></li>
                    <li data-target="#carousel-banner" data-slide-to="2"><img class="w-100 h-100" src="/upload/img/banner_3.png" alt="Third"></li>
                </ol>
                <!--/.Indicators-->
                <!--Slides-->
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item">
                        <div class="view">
                            <img class="w-100" src="/upload/img/banner_1.png" alt="First slide">
                            <div class="mask rgba-black-light"></div>
                        </div>
                    </div>
                    <div class="carousel-item active">
                        <!--Mask color-->
                        <div class="view">
                            <img class="w-100 " src="/upload/img/banner_2.png" alt="Second slide">
                            <div class="mask rgba-black-strong"></div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <!--Mask color-->
                        <div class="view">
                            <img class="w-100" src="/upload/img/banner_3.png" alt="Third slide">
                            <div class="mask rgba-black-slight"></div>
                        </div>
                    </div>
                </div> 
                <!--/.Slides-->
            </div>

        </div>
        <!-- main carousel main-->
    </div>
    <!-- main carousel container-->
    <!-- 메인 carousel -->

    <div class="container">
        <div class="row">
            <!-- 카테고리 네비 -->
            <div class="col-12 my-3">
                <jsp:include page="../headerNav.jsp"></jsp:include>
            </div>

            <!-- 사이드바 -->
            <div class="col-12 my-3">
            <div class="row">
                    <div class="col-lg-3 border-right border-secondary">
                        <div class="col">
                            <h2>카테고리</h2>
                            <ul class="ml-4">
                                <c:forEach items="${BTlist}" var="bt">
                                    <li><a href="#">${bt.name}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>

                    <!-- 인싸예감 클래스(카르셀) -->
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col">
                                <h2>인싸예감 클래스</h2>
                                <div id="owl-hotCls" class="owl-carousel col-lg-10 mt-2" style="margin:0 auto">

                                </div>
                                <div class="owl-btns">
                                    <div class="cusnextCls"><i class="fas fa-angle-right"></i></div>
                                    <div class="cusprevCls"><i class="fas fa-angle-left"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    </div>
        </div>
        <!-- 사이드바 container-->
    </div>

    <!-- 오늘의 추천작품 -->
    <div class="container">
        <hr class="Fhr" />
        <div class="row mt-3">
            <div class="col-lg-12">
                <h2>오늘의 추천작품</h2>
                <a class="btn btn-primary float-right mb-3" href="../product/prdt">작품 더보기 </a>
            </div>
            
        </div><!-- 추천작품 row -->
    </div>
    <!-- 오늘의 추천작품 container-->

    <!-- 오늘의 추천작품 carousel-->
    <div class="container">
        <div class="row">
            <div class="col">
                <div id="owl-hotItem" class="owl-carousel col-lg-10 mt-2 px-1" style="margin:0 auto;">

                </div>
                <div class="owl-btns">
                    <div class="cusnextPrdt"><i class="fas fa-angle-right"></i></div>
                    <div class="cusprevPrdt"><i class="fas fa-angle-left"></i></div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="col px-0">
            <jsp:include page="../footer.jsp"></jsp:include>
        </div>
    </footer>
    
    <!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script> -->
	<!-- js 추가 -->
	<script src="/js/clean-blog.js"></script>
    <script src="/js/owl.carousel.js"></script>
    <script>
    function setLike(evt,cno){
        evt.preventDefault();
        console.log(cno);
    }
    
    var owlCls = $("#owl-hotCls");
    var owlPrdt = $("#owl-hotItem");
    $(document).ready(function(){
        var dataCls = { "itemsCls" : ${cp_list} };
        var dataPrdt = { "itemsPrdt" : ${pp_list} };
        
        owlCls.owlCarousel({
        nav:false,
        loop:true,
        items:3,
        margin:10,
        jsonPath : 'json/customData.json',
        jsonSuccess : customDataSuccessCls(dataCls),
        
      });
      
        
      function customDataSuccessCls(dataCls) {
          var content = "";
          for ( var i in dataCls["itemsCls"]) {
           
           var cno = dataCls["itemsCls"][i].classes.no;
           var cfile = dataCls["itemsCls"][i].classes.cfile;
           var titl = dataCls["itemsCls"][i].classes.titl;
           var pric = dataCls["itemsCls"][i].classes.pric;
           var star = dataCls["itemsCls"][i].classes.star;
           var mtname = dataCls["itemsCls"][i].middleTagName;
           
           content += "<a href='../class/detail?no="+ cno +"'>"
           content += "<div class='col-lg-12' id='owl-col'>"
           content += "<div class='row' id='owl-row'>"
           content += "<i id='owl-i' class='far fa-star' onclick='setLike(event,"+ cno +")'></i>"
           content += "<img id='owl-img' src=\"" +cfile+ "\" alt=\"" +titl+ "\">"
           content += "<div class='col-lg-8' id='owl-col2'>" + titl + "</div>"
           content += "<div class='col-lg-4' id='owl-coltag'>" + mtname + "</div>"
           
           content += "<div class='col-lg-6' id='owl-colstar'>"
           for(var j=0; j<5; j++) {
               if(j<star){
                   content += "<img id='owl-star' width='15px' height='15px' src='/upload/img/raty/star-on.png' alt='star-on'>"
               }else{
                   content += "<img id='owl-star' width='15px' height='15px' src='/upload/img/raty/star-off.png' alt='star-off'>"
               }
           }
           content += "</div>"
           content += "<div class='col-lg-6' id='owl-col3'>" + pric + "￦</div>"
           content += "</div>"
           content += "</div>"
           content += "</a>"
          }
          owlCls.html(content);
      }
      
      
      
      /* 아이템 카르셀 */
      owlPrdt.owlCarousel({
          nav:false,
          loop:true,
          items:4,
          margin:10,
          jsonPath : 'json/customData.json',
          jsonSuccess : customDataSuccessPrdt(dataPrdt),
          
        });

        function customDataSuccessPrdt(dataPrdt) {
            var content = "";
            for ( var i in dataPrdt["itemsPrdt"]) {
             var ptno = dataPrdt["itemsPrdt"][i].product.no;
             var phot = dataPrdt["itemsPrdt"][i].product.phot;
             var titl = dataPrdt["itemsPrdt"][i].product.titl;
             var pric = dataPrdt["itemsPrdt"][i].product.pric;
             var star = dataPrdt["itemsPrdt"][i].product.star;
             var mtname = dataPrdt["itemsPrdt"][i].middleTagName;
             var stname = dataPrdt["itemsPrdt"][i].smallTagName;
             content += "<a href='../product/detail?no="+ ptno +"'>"
             content += "<div class='col-lg-12' id='owl-col'>"
             content += "<div class='row' id='owl-row'>"
             content += "<img id='owl-img' src=\"" +phot+ "\" alt=\"" +titl+ "\">"
             content += "<div class='col-lg-9' id='owl-col2'>" + titl + "</div>"
             content += "<div class='col-lg-3' id='owl-coltag'>" + stname + "</div>"
             content += "<div class='col-lg-6' id='owl-colstar'>"
             for(var j=0; j<5; j++) {
                 if(j<star){
                     content += "<img id='owl-star' width='15px' height='15px' src='/upload/img/raty/star-on.png' alt='star-on'>"
                 }else{
                     content += "<img id='owl-star' width='15px' height='15px' src='/upload/img/raty/star-off.png' alt='star-off'>"
                 }
             }
             content += "</div>"
             content += "<div class='col-lg-6' id='owl-col3'>" + pric + "￦</div>"
             content += "</div>"
             content += "</div>"
             content += "</a>"
            }
            owlPrdt.html(content);
        }
        
     });
    
      $(".cusnextCls").click(function() {
          owlCls.trigger('next.owl.carousel');
      });
	
      $(".cusprevCls").click(function() {
          owlCls.trigger('prev.owl.carousel');
      });
      
      $(".cusnextPrdt").click(function() {
          owlPrdt.trigger('next.owl.carousel');
      });

      $(".cusprevPrdt").click(function() {
          owlPrdt.trigger('prev.owl.carousel');
      });
      
       </script> 
</body>
</html>