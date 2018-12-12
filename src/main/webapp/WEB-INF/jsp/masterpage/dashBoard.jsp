<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>


<%-- 아이콘  --%>
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">


<!-- Bootstrap  -->
<link href="/css/masterpagecss/bootstrap.css" rel="stylesheet">
<!-- Theme style  -->
<link rel="stylesheet" href="/css/masterpagecss/style.css">
<link href="/css/common.css" rel="stylesheet">

<!-- J Query -->
<!-- <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> -->

<!-- jQuery -->
<script src="/js/masterpagejs/jquery.min.js"></script>
<!-- Counters -->
<script src="/js/masterpagejs/jquery.countTo.js"></script>

<script src="/js/masterpagejs/bootstrap.min.js"></script>
<!-- MAIN JS -->
<script src="/js/masterpagejs/main.js"></script>

<%-- chart.js --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.js"></script> -->

<%-- 부트스트랩 --%>
<!-- <link -->
<!--     href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" -->
<!--     rel="stylesheet" id="bootstrap-css"> -->
<!-- <script -->
<!--     src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script> -->
<!-- <script -->
<!--     src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- <script src="//code.jquery.com/jquery-3.3.1.js"></script> -->
<style>
a.nav-link{
    transition:none;
}
nav.navbar.navbar-expand-lg{
    margin-bottom: 0;
}
#colorlib-aside {
    overflow: hidden;
    position: absolute;
}

#th-pay th, #tb-pay td {
    vertical-align: middle;
    text-align: center
}

a#cli{
color: #2c98f0;
text-weight: bold;
}

button.note-btn.btn.btn-default.btn-sm{
    font-size: 12px !important;
}
#mainNav .navbar-brand{
    margin-bottom: 40px !important;
}
</style>
</head>

<body>
<div class="col-lg-12 px-0"
    style="position: absolute; height: 102px; background-color: white">
    <!-- 헤더 배경색 적용 -->
</div>
<div class="col-lg-12 px-0" 
    style="position: absolute; top:102px; height: 39px; background-color: #f3f3f3">
    <!-- 헤더 배경색 적용 -->
</div>
<div class="container">
        <div class="row">
            <div class="col-lg-12">
                <jsp:include page="../headerMain.jsp"></jsp:include>
            </div>
            <!-- 카테고리 nav (스크립트로 임시 inclue) -->
            <div class="col-lg-12">
                <jsp:include page="../headerNav.jsp"></jsp:include>
            </div>
            </div></div>

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
                        style="background-image: url(${sessionScope.loginUser.phot});"></div>
                    <h1 id="colorlib-logo">
                        <a href="index.html">관리자</a>
                    </h1>
                    <br />
                </div>

                <nav id="colorlib-main-menu" role="navigation"
                    class="navbar">
                    <div id="navbar" class="collapse">
                        <ul>
                            <li><a onclick="location.href='dashBoard'" data-nav-section="1" style=" color: #2c98f0; font-weight:bold; cursor: pointer;">메인
                                    화면</a></li>
                            <li><a onclick="location.href='csList'" style="cursor: pointer;"
                                data-nav-section="10">문의 목록 </a></li>
                            <li><a onclick="location.href='mentorreqlist'" style="cursor: pointer;" data-nav-section="2">멘토
                                    등록</a></li>
                            <li><a onclick="location.href='classreqlist'" style="cursor: pointer;" data-nav-section="3">클래스
                                    등록</a></li>
                            <li><a onclick="location.href='reportList'" style="cursor: pointer;" data-nav-section="4">신고
                                    접수 목록</a></li>
                            <li><a onclick="location.href='reportFinishList'" style="cursor: pointer;" data-nav-section="5">신고
                                    완료 목록</a></li>
                            <li><a onclick="location.href='prdtList'" style="cursor: pointer;" data-nav-section="6">전체
                                    상품 목록</a></li>
                            <li><a onclick="location.href='classList'" style="cursor: pointer;" data-nav-section="7">전체
                                    클래스 목록 </a></li>
                            <li><a onclick="location.href='prodOrderList'" style="cursor: pointer;" data-nav-section="8">상품 주문
                                    내역</a></li>
                                    <li><a onclick="location.href='classOrderList'" style="cursor: pointer;" data-nav-section="9">
                                    클래스 신청 내역  </a></li>
                        </ul>
                    </div>
                </nav>

            </aside>

            <div id="colorlib-main" class="col-lg-10">

                <section class="colorlib-about" data-section="1">
                    <div class="colorlib-narrow-content">
                        <div class="col">

                            <div class="about-desc">

                                <h1 class="colorlib-heading mb-5">관리자 메인</h1>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <!-- 그래프-->

                                        <div class="chart row">
                                            <div
                                                class="payment col-lg-6">
                                                <canvas id="payment-graph"></canvas>
                                            </div>
                                            <!-- 그래프 6-->
                                            <div class="person col-lg-6">
                                                <canvas id="person-graph"></canvas>
                                            </div>
                                            <!-- 그래프 6-->
                                        </div>
                                        <!-- chart -->

                                        <div class="row" style="margin-top:1%;">
                                            <div class="cls col-lg-12" style="border: 1px solid black;">
                                                <div class="header" style="margin-top:1%;">
                                                    <span class="h3">최근 클래스신청</span>
                                                    <button
                                                        type="button"
                                                        class="btn btn-outline-light"
                                                        style="position: relative; float: right;"
                                                        onclick="location.href='classreqlist'">
                                                        <i class="far fa-plus-square fa-lg"
                                                            style="color: black;"></i>
                                                    </button>
                                                </div>

                                                <table class="table text-center">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center">No</th>
                                                            <th
                                                                class="text-center">카테고리</th>
                                                            <th
                                                                class="text-center">멘토</th>
                                                            <th
                                                                class="text-center">신청일</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody class="table-hover">
                                                        <c:forEach
                                                            items="${ClassesFindAll}"
                                                            var="r"
                                                            begin="0"
                                                            end="1"
                                                            step="1"
                                                            varStatus="status">
                                                            <tr>
                                                                <th class="text-center">${status.count }</th>
                                                                <td>${r.middleTag.name }</td>
                                                                <td>${r.mentee.name}(${r.mentee.nick })</td>
                                                                <td>${r.rgdt }</td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- class-->
                                        </div>
                                        <!-- board1-->

                                        <div class="row" style="margin-top:1%;">
                                            <div class="pro col-lg-12" style="border: 1px solid black;">
                                                <div class="header" style="margin-top:1%;">
                                                   <span class="h3">최근 신고접수</span>
                                <button type="button" class="btn btn-outline-light" 
                                    style="position: relative; float: right;"
                                    onclick="location.href='reportList'">
                                    <i class="far fa-plus-square fa-lg" style="color:black;"></i>
                                </button>
                        </div>
                        <table class="table text-center table-sm">
                            <thead>
                                <tr>
                                    <th class="text-center">No</th>
                                    <th class="text-center">신고유형</th>
                                    <th class="text-center">회원</th>
                                    <th class="text-center">신고일</th>
                                </tr>
                            </thead>

                            <tbody class="table-hover">
                                <c:forEach items="${ReportFindAll }" var="r" begin="0" end="1" step="1"
                                    varStatus="status">
                                    <tr>
                                        <th class="text-center">${status.count }</th>
                                        <td class="text-center">${r.type }</td>
                                        <td class="text-center">${r.mentee2Nick }</td>
                                        <td class="text-center">${r.rtdt }</td>
                                    </tr>

                                </c:forEach>
                            </tbody>
                        </table>
                                            </div>
                                            <!-- pro-->
                                        </div>
                                        
                                        <div class=row style="margin-top:1%;">
                                            <div class="mentor col-lg-12" style="border: 1px solid black;">
                                                <div class="header" style="margin-top:1%;">
                                                    <span class="h3">최근
                                                        멘토신청</span>
                                                    <button
                                                        type="button"
                                                        class="btn btn-outline-light"
                                                        style="position: relative; float: right;"
                                                        onclick="location.href='mentorreqlist'">
                                                        <i
                                                            class="far fa-plus-square fa-lg"
                                                            style="color: black;"></i>
                                                    </button>
                                                    <table class="table text-center">
                                                        <thead>
                                                            <tr>
                                                                <th
                                                                    class="text-center">No</th>
                                                                <th
                                                                    class="text-center">카테고리</th>
                                                                <th
                                                                    class="text-center">멘토</th>
                                                                <th
                                                                    class="text-center">신청일</th>
                                                            </tr>
                                                        </thead>

                                                        <tbody
                                                            class="table-hover">
                                                            <c:forEach
                                                                items="${MentorFindAll }"
                                                                var="r"
                                                                begin="0"
                                                                end="1"
                                                                step="1"
                                                                varStatus="status">
                                                                <tr>
                                                                    <th
                                                                        class="text-center">${status.count }</th>
                                                                    <td class="text-center"><c:forEach
                                                                            items="${r.mentorTag }"
                                                                            var="mt">
                                        ${mt.name }
                                        </c:forEach></td>

                                                                    <td class="text-center">${r.name}(${r.nick })</td>
                                                                    <td class="text-center">${r.rgdtmt }</td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>

                                                </div>
                                                <!-- mentor-->
                                            </div>
                                            <!-- board2-->

                                        </div>
                                        <!-- 전체 12-->
                                    </div>
                                    <!-- 전체 row-->
                                </div>
                            </div>
                        </div>
                    </div>

                </section>
                <!--section1 -->

                <!-- payment script 시작 -->
                <script>
                window.onload = function() {
                    ctx = document
                            .getElementById("person-graph");
                    window.myBar = new Chart(
                            ctx,
                            {
                                type : 'line',
                                data : lineChartData,
                                options : lineChartOption
                            });

                    ctx = document
                            .getElementById("payment-graph");
                    window.myBar = new Chart(
                            ctx,
                            {
                                type : 'bar',
                                data : barChartData,
                                options : barChartOption
                            });
                };
                
                var NowData = new Date();
                
                // 두달전, 한달전, 이번달 날짜 추출
                var transRightData1 = NowData.getFullYear();
                transRightData1 += "."+(NowData.getMonth()+1 -2);
                var transRightData2 = NowData.getFullYear();
                transRightData2 += "."+(NowData.getMonth()+1 -1);
                var transRightData3 = NowData.getFullYear();
                transRightData3 += "."+(NowData.getMonth()+1);
                
                var lineChartData = {
                    labels : [
                        transRightData1,
                        transRightData2,
                        transRightData3//라벨
                    ],
                    datasets : [
                            {
                                type : 'line',
                                label : '유입자수',
                                // 유입자 데이터
                                data : [
                                        '100',
                                        '200',
                                        '300' ],
                                borderColor : 'rgba(255,99,132,1)',
                                backgroundColor : 'rgba(255, 99, 132, 0.2)',
                                fill : false,
                                yAxisID : "y-axis-1",
                            },
                            {
                                type : 'line',
                                label : '가입 회원수',
                                // 가입자 데이터
                                data : [
                                        '50',
                                        '30',
                                        '80' ],
                                borderColor : 'rgba(54, 162, 235, 1)',
                                backgroundColor : 'rgba(54, 162, 235, 0.2)',
                                fill : false,
                                yAxisID : "y-axis-1",
                            } ]
                };

                var lineChartOption = {
                    responsive : true,
                    scales : {
                        yAxes : [ {
                            id : "y-axis-1",
                            type : "linear",
                            position : "left",
                            ticks : {
                                max : 500,
                                min : 0,
                                stepSize : 100
                            },
                        } ],
                    }
                };
    // 2일전, 1일전, 당일 날짜 추출
    var transLeftData1 = (NowData.getMonth()+1);
    transLeftData1 += "/"+(NowData.getDate()-2);
    var transLeftData2 = (NowData.getMonth()+1);
    transLeftData2 += "/"+(NowData.getDate()-1);
    var transLeftData3 = (NowData.getMonth()+1);
    transLeftData3 += "/"+(NowData.getDate());
    
    
    var totMentor1 = 20;
    var totMentor2 = 40;
    var totMentor3 = 120;
    
    var totSeller1 = 10;
    var totSeller2 = 70;
    var totSeller3 = 50;
    
    var tot1 = totMentor1 + totSeller1;
    var tot2 = totMentor2 + totSeller2;
    var tot3 = totMentor3 + totSeller3;
    
    var barChartData = {
        labels : [
            transLeftData1,
            transLeftData2,
            transLeftData3 ],
        datasets : [
                {
                    type : 'line',
                    label : '총 수입',
                    data : [
                        tot1,
                        tot2,
                        tot3 ],
                    borderColor : 'rgba(255, 159, 64, 1)',
                    pointBackgroundColor : 'rgba(255, 159, 64, 0.2)',
                    fill : false,
                    yAxisID : "y-axis-1",
                },
                {
                    type : 'bar',
                    label : '멘토',
                    data : [
                        totMentor1,
                        totMentor2,
                        totMentor3 ],
                    borderColor : 'rgba(54, 162, 235, 1)',
                    backgroundColor : 'rgba(54, 162, 235, 0.2)',
                    yAxisID : "y-axis-2",
                },
                {
                    type : 'bar',
                    label : '판매자',
                    data : [
                        totSeller1,
                        totSeller2,
                        totSeller3 ],
                    borderColor : 'rgba(255,99,132,1)',
                    backgroundColor : 'rgba(255, 99, 132, 0.2)',
                    yAxisID : "y-axis-2",
                } ]
    };

    var barChartOption = {
        responsive : true,
        scales : {
            yAxes : [
                    {
                        id : "y-axis-1",
                        type : "linear",
                        position : "left",
                        ticks : {
                            max : 500,
                            min : 0,
                            stepSize : 100
                        },
                    },
                    {
                        id : "y-axis-2",
                        type : "linear",
                        position : "right",
                        ticks : {
                            max : 200,
                            min : 0,
                            stepSize : 40
                        },
                        gridLines : {
                            drawOnChartArea : false,
                        },
                    } ],
        }
    };
</script>




            </div>
            <!-- colorlib-main -->
        </div>
        <!-- container-wrap -->
    </div>
    <!-- colorlib-page -->
    
            <footer>
            <div class="col px-0" style="z-index:10000;">
                <jsp:include page="../footer.jsp"></jsp:include>
            </div>
        </footer>
        
        
        <script>
    
        var testtTop;
        var setId = "#colorlib-aside";
        $(document).ready(function() {
            $("div#footerCss").css("margin-top","0px");
            testtTop = $("#colorlib-aside").offset().top;
        });

         function scroll_follow(id) {
            $(window).scroll(function() //스크롤이 움직일때마다 이벤트 발생
            {
                var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
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