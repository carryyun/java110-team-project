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
    <!-- <link href="/css/category.css" rel="stylesheet"> -->
    
    <link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
    <link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
    <link rel="canonical" href="https://codepen.io/nelsonleite/pen/RaGwba?depth=everything&order=popularity&page=4&q=product&show_forks=false" />
    
    <!-- ===============필수포함=============== -->
    

 

  </head>

  <body>
    <div id="wrap">
    <div class="container mx-auto px-0">
    <!-- Header (스크립트로 임시 inclue) -->
    <div id="row">
    <div class="container col-lg-12 mx-auto">
    <!-- <div id="headerMain"></div> -->
    <jsp:include page="headerMain.jsp"></jsp:include>
    </div>
    </div>
     
         
    <!-- Page Header ?????-->
    <header class="masthead">
      
    </header>
    
    
    <!-- 카테고리 nav (스크립트로 임시 inclue) -->
    <div class="container col-lg-12 mx-auto">
    <jsp:include page="headerNav.jsp"></jsp:include>
    <!-- <div id="headerNav"></div> -->
    </div>

    <!-- Main Content -->
<div class="container col-lg-12">
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
	<div class="col-lg-9 mx-auto">
	
	<h2>오늘의 핫 아이템</h2>
	<div id="TodayItem" class="carousel slide my-4 text-center" data-ride="carousel">
	
	<ol class="carousel-indicators">
	    <li data-target="#TodayItem" data-slide-to="0" class="active"></li>
	    <li data-target="#TodayItem" data-slide-to="1"></li>
	    <li data-target="#TodayItem" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
	    <div class="carousel-item active">
	      <div class="col-lg-auto col-md-3 px-5 mx-auto">
	       <div class="test">
	        <img class="d-block img-fluid" src="/upload/img/product/900x350/julme.PNG" alt="First slide">
	       </div>
	       <div class="test">
	        <img class="d-block img-fluid" src="/upload/img/product/900x350/julme.PNG" alt="Second slide">
	        </div>
	        <div class="test">
	        <img class="d-block img-fluid" src="/upload/img/product/900x350/julme.PNG" alt="Third slide">
	       </div>
	       </div>
	    </div>
	    <div class="carousel-item">
	      <div class="col-lg-auto px-5 mx-auto"  >
	       <div class="test">
	        <img class="d-block img-fluid" src="/upload/img/product/900x350/julme.PNG" alt="First slide">
	       </div>
	       <div class="test">
	        <img class="d-block img-fluid" src="/upload/img/product/900x350/julme.PNG" alt="Second slide">
	        </div>
	        <div class="test">
	        <img class="d-block img-fluid" src="/upload/img/product/900x350/julme.PNG" alt="Third slide">
	       </div>
	       </div>
	    </div>
	    <div class="carousel-item">
	      <div class="col-lg-auto px-5 mx-auto" >
	       <div class="test">
	        <img class="d-block img-fluid" src="/upload/img/product/900x350/julme.PNG" alt="First slide">
	       </div>
	       <div class="test">
	        <img class="d-block img-fluid" src="/upload/img/product/900x350/julme.PNG" alt="Second slide">
	        </div>
	        <div class="test">
	        <img class="d-block img-fluid" src="/upload/img/product/900x350/julme.PNG" alt="Third slide">
	       </div>
	       </div>
	    </div>
	    
	    <a class="carousel-control-prev" href="#TodayItem" role="button" data-slide="prev">
	        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	        <span class="sr-only">Previous</span>
	    </a>
	    <a class="carousel-control-next" href="#TodayItem" role="button" data-slide="next">
	        <span class="carousel-control-next-icon" aria-hidden="true"></span>
	        <span class="sr-only">Next</span>
	    </a>
	</div>
	</div>
	</div>

             </div>

      <!--   </div> -->
        <hr class="FhrBotMargin">
</div>
    
    
   <!--   <div class="row"> -->
       
       
        <div class="col-lg-12 mx-auto">
          <div class="post-preview">
            <a href="post.html">
<div class="row">

<div class="container">
	<div class="row">

		<div class="col-lg-4">
			<article class="card-wrapper">
				<div class="image-holder">
					<a href="#" class="image-holder__link"></a>
					<div class="image-liquid image-holder--original">
					<a href="#"><img alt="1" src="/upload/img/julme.PNG" style="width: 100%; height: 100%"></a>
					</div>
				</div>
				<div class="product-description">
					<!-- 제목 -->
					<h1 class="product-description__title">
						<a href="#">자바를 배우자</a>
					</h1>
					<!-- 분류명 , 가격 -->
					<div class="row">
						<div class="col-lg-12 product-description__category secondary-text">
							컴퓨터 - 자바
						</div>
						<div class="col-lg-12 product-description__price">30000원</div>
					</div>
					<hr />
					<!-- 멘토 이름 -->
					<div class="sizes-wrapper"><b>멘토 - 고정은</b></div>
					<!-- 주소 -->
					<div class="color-wrapper"><b>기본 주소</b></div>
				</div>
			</article>
		</div>
		
		<div class="col-lg-4">
			<article class="card-wrapper">
				<div class="image-holder">
					<a href="#" class="image-holder__link"></a>
					<div class="image-liquid image-holder--original" style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Jeans_BW_2_(3213391837).jpg/543px-Jeans_BW_2_(3213391837).jpg')">
					</div>
				</div>

				<div class="product-description">
					<!-- 제목 -->
					<h1 class="product-description__title">
						<a href="#">자바를 배우자</a>
					</h1>
					<!-- 분류명 , 가격 -->
					<div class="row">
						<div class="col-lg-12 product-description__category secondary-text">
							컴퓨터 - 자바
						</div>
						<div class="col-lg-12 product-description__price">30000원</div>
					</div>
					<hr />
					<!-- 멘토 이름 -->
					<div class="sizes-wrapper"><b>멘토 - 고정은</b></div>
					<!-- 주소 -->
					<div class="color-wrapper"><b>기본 주소</b></div>
				</div>
			</article>
		</div>
		
		<div class="col-lg-4">
			<article class="card-wrapper">
				<div class="image-holder">
					<a href="#" class="image-holder__link"></a>
					<div class="image-liquid image-holder--original" style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/b/b8/Columbia_Sportswear_Jacket.jpg')">
					</div>
				</div>

				<div class="product-description">
					<!-- 제목 -->
					<h1 class="product-description__title">
						<a href="#">자바를 배우자</a>
					</h1>

					<!-- 분류명 , 가격 -->
					<div class="row">
						<div class="col-lg-12 product-description__category secondary-text">
							컴퓨터 - 자바
						</div>
						<div class="col-lg-12 product-description__price">30000원</div>
					</div>
					<hr />
					<!-- 멘토 이름 -->
					<div class="sizes-wrapper"><b>멘토 - 고정은</b></div>
					<!-- 주소 -->
					<div class="color-wrapper"><b>기본 주소</b></div>
				</div>
			</article>
		</div>
		
		<div class="col-lg-4">
			<article class="card-wrapper">
				<div class="image-holder">
					<a href="#" class="image-holder__link"></a>
					<div class="image-liquid image-holder--original" style="background-image: url('http://www.publicdomainpictures.net/pictures/20000/nahled/red-shoes-isolated.jpg')">
					</div>
				</div>
				<div class="product-description">
					<!-- 제목 -->
					<h1 class="product-description__title">
						<a href="#">자바를 배우자</a>
					</h1>

					<!-- 분류명 , 가격 -->
					<div class="row">
						<div class="col-lg-12 product-description__category secondary-text">
							컴퓨터 - 자바
						</div>
						<div class="col-lg-12 product-description__price">30000원</div>
					</div>
					<hr />
					<!-- 멘토 이름 -->
					<div class="sizes-wrapper"><b>멘토 - 고정은</b></div>
					<!-- 주소 -->
					<div class="color-wrapper"><b>기본 주소</b></div>
				</div>
			</article>
		</div>
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
          <div class="col-lg-8 col-md-10 mx-auto">
            <ul class="list-inline text-center">
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            </ul>
            <p class="copyright text-muted">Copyright &copy; Your Website 2018</p>
          </div>
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


<!-- ===============필수포함=============== -->

    <script>
      $(document).ready(function(){
          $("#headerMain").load("headerMain.html")
          $("#headerNav").load("headerNav.html")
      });
</script> 
  </body>

</html>