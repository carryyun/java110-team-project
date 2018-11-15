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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <link href="/css/owl.carousel.css" rel="stylesheet">
    <link href="/css/list.css" rel="stylesheet">
    <link href="/css/clean-blog.css" rel="stylesheet">
    <link href="/css/common.css" rel="stylesheet">
    
 
    <!-- ===============필수포함=============== -->
    

 

  </head>

  <body>
    <div id="wrap" style="background-color: #fff">
    <div class="col" style="position:absolute; height: 105px; background-color: white">
    <!-- 헤더 배경색 적용 -->
    </div>
    
    <div class="container" style="background-color: white">
	    <!-- Header (스크립트로 임시 inclue) -->
	    <div class="row">
        <div class="col-lg-12">
        <jsp:include page="../headerMain.jsp"></jsp:include>
        </div>
     
         
    <!-- Page Header ?????-->
    <header class="masthead">
      
    </header>
    
    
	    <!-- 카테고리 nav (스크립트로 임시 inclue) -->
	    <div class="col-lg-12">
	    <jsp:include page="../headerNav.jsp"></jsp:include>
	    </div>

    <!-- Main Content -->
<div class="container col-lg-12" style="background-color: #white">
    <div class="row">
    <div class="col-lg-3">
        <div class="col">
        <h2>카테고리</h2>
              <ul>
               <c:forEach  items="${BTlist}" var="bt">
                    <li><a href="#">${bt.name}</a></li>
                </c:forEach>
              </ul>
        </div>
    </div>
	<!-- 오늘의 핫 아이템(카르셀) -->
	
	<div class="col-lg-9">
	<div class="row">
	<div class="col">
	    <h2>오늘의 핫 아이템</h2>
        <div id="owl-hotItem" class="owl-carousel col-lg-10 mt-2"  style="margin:0 auto">
            
        </div>
        <div class="owl-btns">
            <div class="cusnext"><i class="fas fa-caret-right"></i></div>
            <div class="cusprev"><i class="fas fa-caret-left"></i></div>
        </div>
        </div>
    </div>
    </div>

        <hr class="FhrMargin">
</div>
    
       
        <div class="col-lg-12 mx-auto">
          <div class="post-preview">
            <a href="post.html"></a>
<div class="row">

<div class="container">
          <div class="clearfix">
            <a class="btn btn-primary float-right mb-3" href="#">상품 등록 </a>
          </div>
	<div class="row">
        
        <c:forEach  items="${productList}" var="pl" varStatus="i">
        
		<div class="col-lg-4">
			<article class="card-wrapper">
				<div class="image-holder">
					<a href="#" class="image-holder__link"></a>
					<div class="image-liquid image-holder--original">
					<a href="#"><img alt="${i.count}" src="${pl.phot}" style="width: 100%; height: 100%"></a>
					</div>
				</div>
				<div class="product-description">
					<!-- 제목 -->
					
					<div class="product-description__title">
						<div class="row">
							<div class="col-lg-7 mb-2">
							<a href="#">${pl.titl}</a>
							</div>
							<div class="col-lg-5 mb-2 text-right">
							<% for (int j=0; j<5; j++) { %>
								<img src='/upload/img/raty/star-on.png' class='starimg' alt='star'/>
						    <% } %>
				        </div>
					</div>
					
					
					<!-- 분류명 , 가격 -->
					<div class="row">
						<div class="col-lg-7 product-description__category secondary-text">
							${pl.middleTagName} - ${pl.smalltag.name}<br>
						</div>
						<div class="col-lg-5 product-description__price">${pl.pric} 원</div>
					</div>
                    <hr class="NoMarginHr">
					<!-- 멘토 이름 -->
					<div class="sizes-wrapper"><b>판매자 - ${pl.mentee.name}</b></div>
					<!-- 주소 -->
					<div class="color-wrapper"><b>기본 주소</b></div>
				</div>
				</div>
			</article>
		</div>

    </c:forEach>
	</div>
</div>


</div>
              
          </div>
          <hr>

          
        </div>
    </div>

    <hr>

    <!-- Footer -->

    
    </div>
    </div>
     
        <footer>
      <div class="col px-0">
          <jsp:include page="../footer.jsp"></jsp:include>
      </div>
    </footer>
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
  </body>

</html>