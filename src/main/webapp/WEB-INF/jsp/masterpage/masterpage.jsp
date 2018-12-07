<%@page import="bitcamp.java110.cms.domain.Mentee"%>
<%@page import="bitcamp.java110.cms.domain.Mentor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   --%>

<!DOCTYPE HTML>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>관리자 페이지 </title>


<!-- Bootstrap  -->
<link rel="stylesheet" href="/css/masterpagecss/bootstrap.css">
<!-- Theme style  -->
<link rel="stylesheet" href="/css/masterpagecss/style.css">
<!-- J Query -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- jQuery -->
<script src="/js/masterpagejs/jquery.min.js"></script>
<!-- Waypoints -->
<script src="/js/masterpagejs/jquery.waypoints.min.js"></script>
<!-- Counters -->
<script src="/js/masterpagejs/jquery.countTo.js"></script>

<!-- MAIN JS -->
<script src="/js/masterpagejs/main.js"></script>
<script src="/js/masterpagejs/bootstrap.min.js"></script>

<style>
#colorlib-aside {
    overflow: hidden;
    position: absolute;
}

#th-pay th, #tb-pay td {
    vertical-align: middle;
    text-align: center
}
</style>


</head>

<body>

<div class="container">
        <div class="row">
            <div class="col-lg-12">
                <jsp:include page="../headerMain.jsp"></jsp:include>
            </div>
            <!-- 카테고리 nav (스크립트로 임시 inclue) -->
            <div class="col-lg-12">
                <jsp:include page="../headerNav.jsp"></jsp:include>
            </div>
            </div>
            </div>

    <div id="colorlib-page">
        <div class="container-wrap">

            <a href="#"
                class="js-colorlib-nav-toggle colorlib-nav-toggle"
                data-toggle="collapse" data-target="#navbar"
                aria-expanded="false" aria-controls="navbar"><i></i></a>
            <aside id="colorlib-aside" role="complementary"
                class="border js-fullheight">
                <div class="text-center">
                    <div class="author-img"
                        style="background-image: url(${mentee.phot};"></div>
                    <h1 id="colorlib-logo">
                        <a href="index.html">관리자</a>
                    </h1>
                    <br />
                </div>

                <nav id="colorlib-main-menu" role="navigation"
                    class="navbar">
                    <div id="navbar" class="collapse">
                       <ul>
                            <li><a onclick="location.href='dashBoard'" data-nav-section="1">메인
                                    화면 </a></li>
                            <li><a onclick="location.href='mentorreqlist'" data-nav-section="2">멘토
                                    신청 목록</a></li>
                            <li><a onclick="location.href='classreqlist'" data-nav-section="3">클래스
                                    신청 목록</a></li>
                            <li><a onclick="location.href='reportList'" data-nav-section="4">신고
                                    접수 목록</a></li>
                            <li><a onclick="location.href='reportFinishList'" data-nav-section="5">신고
                                    완료 목록</a></li>
                            <li><a onclick="location.href='prdtList'" data-nav-section="6">전체
                                    상품 목록</a></li>
                            <li><a onclick="location.href='classList'" data-nav-section="7">전체
                                    클래스 목록 </a></li>
                            <li><a onclick="location.href='prodOrderList'" data-nav-section="8">주문
                                    내역</a></li>
                        </ul>
                    </div>
                </nav>

            </aside>

            <div id="colorlib-main">

                <section class="colorlib-about" data-section="1">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <div class="about-desc">

                                <h2 class="colorlib-heading">메인 화면</h2>
                                <hr />
                            </div>
                        </div>
                    </div>

                </section>


                <section class="colorlib-services" data-section="2">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">멘토 신청 목록</h2>
                            <hr />

                        </div>
                    </div>
                </section>

                <section class="colorlib-skills" data-section="3">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">클래스 신청 목록</h2>
                            <hr />


                        </div>
                    </div>
                </section>
                <!-- 3번째 섹션  -->

                <section class="colorlib-experience" data-section="4">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">신고 접수 목록</h2>
                            <hr />


                        </div>
                    </div>
                </section>

                <section class="colorlib-experience" data-section="5">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">신고 완료 목록</h2>
                            <hr />


                        </div>
                    </div>

                </section>

                <section class="colorlib-experience" data-section="6">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">전체 상품 목록</h2>
                            <hr />

                        </div>
                    </div>
                </section>

                <section class="colorlib-experience" data-section="7">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">전체 클래스 목록</h2>
                            <hr />
                        </div>
                    </div>
                </section>

                <section class="colorlib-experience" data-section="8">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">주문 내역</h2>
                            <hr />


                        </div>
                    </div>
                </section>


            </div>
            <!-- end:colorlib-main -->
        </div>
        <!-- end:container-wrap -->
    </div>
    <!-- end:colorlib-page -->
    
    <script>
    
        var testtTop;
        var setId = "#colorlib-aside";
        $(document).ready(function() {
            $("div#footerCss").css("margin-top","0px");
            testtTop = $("#colorlib-aside").offset().top;
console.log(testtTop);
        });

         function scroll_follow(id) {
            $(window).scroll(function() //스크롤이 움직일때마다 이벤트 발생
            {
                var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
                console.log(position);
                if (position > 157) {
                    $(id).css("position", "absolute");
                    $(id).css("top", (position-157) + "px");

                } else {
                    $(id).css("position", "absolute");
                    $(id).css("top", (0) + "px");
                }
            });
        }
        scroll_follow(setId); 
        
    </script>
    </body>



</html>