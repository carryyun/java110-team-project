<%@page import="bitcamp.java110.cms.domain.BigTag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clean Blog - Start Bootstrap Theme</title>

        <!-- ===============필수포함=============== -->
    <!-- Bootstrap core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- 폰트 추가 -->
    <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    
    <link href="/css/list.css" rel="stylesheet">
    <link href="/css/clean-blog.css" rel="stylesheet">
    <link href="/css/common.css" rel="stylesheet">
    <link href="/css/multi.css" rel="stylesheet">
    <link href="/css/owl.carousel.css" rel="stylesheet">
    <link href="/css/owl.theme.default.css" rel="stylesheet">
 
    <!-- ===============필수포함=============== -->
    

 

  </head>

  <body>
    <div id="wrap" style="background-color: #f2f4f7">
    <div class="col" style="position:absolute; height: 95px; background-color: white">
    
    </div>
    
    <div class="container" style="background-color: white">
    <!-- Header (스크립트로 임시 inclue) -->
    <div class="row">
        <div class="col-lg-12">
        <%-- <jsp:include page="../header.jsp"></jsp:include> --%>
        <jsp:include page="headerMain.jsp"></jsp:include>
        </div>
     
         
    <!-- Page Header ?????-->
    <header class="masthead">
      
    </header>
    
    
    <!-- 카테고리 nav (스크립트로 임시 inclue) -->
    <div class="col mb-3">
    <jsp:include page="headerNav.jsp"></jsp:include>
    <!-- <div id="headerNav"></div> -->
    </div>

    <!-- Main Content -->
<div class="container col-lg-12" style="background-color: #white">
    <div class="row">
    <div class="col-lg-3">
        <div class="col">
        <h2>카테고리</h2>
              <ul>
               <c:forEach  items="${list}" var="m">
                    <li><a href="#">${m.name}</a></li>
                </c:forEach>
              </ul>
        </div>
    </div>
	<!-- 오늘의 핫 아이템(카르셀) -->
	
	<div class="col-lg-9">
	<div class="row">
	<div class="col">
	    <h2>오늘의 핫 아이템</h2>
        <div id="owl-hotItem" class="owl-carousel col-lg-10 mx-auto">
            
        </div>
        <div class="owl-btns">
            <div class="cusnext">></div>
            <div class="cusprev"><</div>
        </div>
        </div>
    </div>
    </div>

        <hr class="FhrMargin">
</div>
    
       
        <div class="col-lg-12 mx-auto">
          <div class="post-preview">
            <a href="post.html">
<div class="row">

<div class="container">
	<div class="row">

        <c:forEach  items="${product_list}" var="pl" varStatus="i">
        
		<div class="col-lg-4">
			<article class="card-wrapper">
				<div class="image-holder">
					<a href="#" class="image-holder__link"></a>
					<div class="image-liquid image-holder--original">
					<a href="#"><img alt="${i.count}" src="/upload/img/julme.PNG" style="width: 100%; height: 100%"></a>
					</div>
				</div>
				<div class="product-description">
					<!-- 제목 -->
					<h1 class="product-description__title">
						<a href="#">${pl.titl}</a>
					</h1>
					<!-- 분류명 , 가격 -->
					<div class="row">
						<div class="col-lg-12 product-description__category secondary-text">
							${pl.middleTagName} - ${pl.smalltag.name}<br>
						</div>
						<div class="col-lg-12 product-description__price">${pl.pric} 원</div>
					</div>
					<hr />
					<!-- 멘토 이름 -->
					<div class="sizes-wrapper"><b>판매자 - ${pl.mentee.name}</b></div>
					<!-- 주소 -->
					<div class="color-wrapper"><b>기본 주소</b></div>
				</div>
			</article>
		</div>

    </c:forEach>
	</div>
</div>


</div>
              
          </div>
          <hr>

          <!-- Pager -->
          <div class="clearfix">
            <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
          </div>
        </div>
    </div>

    <hr>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          
        </div>
      </div>
    </footer>
    
    </div>
</div>
<!-- ===============필수포함=============== -->
<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- js 추가 -->
<script src="/js/clean-blog.js"></script>
<script src="/js/owl.carousel.js"></script>


<!-- ===============필수포함=============== -->

    <script>
    var owl = $("#owl-hotItem");
      $(document).ready(function(){
/*           $("#headerMain").load("headerMain.html")
          $("#headerNav").load("headerNav.html")
           */
           
          
          var data = {
                  "items" : [
                {
                  "img": "/upload/img/julme.PNG",
                  "txt" : "h2",
                  "alt" : "Owl Image 1"
                },
                {
                  "img": "/upload/img/julme.PNG",
                  "txt" : "h2",
                  "alt" : "Owl Image 1"
                },
                {
                  "img": "/upload/img/julme.PNG",
                  "txt" : "h2",
                  "alt" : "Owl Image 1"
                },
                {
                  "img": "/upload/img/julme.PNG",
                  "txt" : "h2",
                  "alt" : "Owl Image 1"
                },
                {
                  "img": "/upload/img/julme.PNG",
                  "txt" : "h2",
                  "alt" : "Owl Image 1"
                }
                  ]
                };
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
             
             var img = data["items"][i].img;
             var txt = data["items"][i].txt;
             var alt = data["items"][i].alt;
             content += "<div class='col' id='owl-col'>"
             content += "<div class='row' id='owl-row'>"
             content += "<img id='owl-img' src=\"" +img+ "\" alt=\"" +alt+ "\">"
             content += "<div class='col' id='owl-col2'>" + txt + "</div>"
             content += "</div>"
             content += "</div>"
            }
            owl.html(content);
        }

       });
      $(".cusnext").click(function() {
          owl.trigger('next.owl.carousel');
          console.log("123");
      });

      $(".cusprev").click(function() {
          owl.trigger('prev.owl.carousel');
      });
      
       </script> 
  </body>

</html>