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
<title>Master page</title>


<!-- Animate.css -->
<link rel="stylesheet" href="/css/masterpagecss/animate.css">
<!-- Bootstrap  -->
<link href="/css/masterpagecss/bootstrap.css" rel="stylesheet">
<!-- Theme style  -->
<link rel="stylesheet" href="/css/masterpagecss/style.css">
<!-- J Query -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- Load JS-->
<script src=/js/masterpagejs/hideshow.js>
    
</script>
<!-- jQuery -->
<script src="/js/masterpagejs/jquery.min.js">
    
</script>
<!-- Waypoints -->
<script src="/js/masterpagejs/jquery.waypoints.min.js"></script>
<!-- Counters -->
<script src="/js/masterpagejs/jquery.countTo.js"></script>
<!-- chart.js -->
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.min.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
<!-- 아이콘 -->
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">

<%-- chart.js --%>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.min.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>

<!-- MAIN JS -->
<script src="/js/masterpagejs/main.js"></script>
<script src="/js/masterpagejs/bootstrap.min.js"></script>

<!-- mentorreqlist -->
<!-- <script src="/vendor/jquery/jquery.min.js"></script> -->
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/js/masterpagejs/mentorreqlist.js"></script>
<link href="/css/master.css" rel="stylesheet">

<style>
#colorlib-aside {
    overflow: hidden;
}

#th-pay th, #tb-pay td {
    vertical-align: middle;
    text-align: center
}
</style>


</head>

<body>

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
                            <li><a href="#" data-nav-section="1">메인
                                    화면 </a></li>
                            <li><a href="#" data-nav-section="2">멘토
                                    신청 목록</a></li>
                            <li><a href="#" data-nav-section="3">클래스
                                    신청 목록</a></li>
                            <li><a href="#" data-nav-section="4">신고
                                    접수 목록</a></li>
                            <li><a href="#" data-nav-section="5">신고
                                    완료 목록</a></li>
                            <li><a href="#" data-nav-section="6">전체
                                    상품 목록</a></li>
                            <li><a href="#" data-nav-section="7">전체
                                    클래스 목록 </a></li>
                            <li><a href="#" data-nav-section="8">주문
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

                            <!--  메인 화면 -->
                            <div class="chart row">
                                <div class="col-lg-12">
                                    <!-- 그래프-->

                                    <div class="payment col-lg-6">
                                        <canvas id="payment-graph"></canvas>
                                    </div>
                                    <!-- 그래프 6-->
                                    <div class="person col-lg-6">
                                        <canvas id="person-graph"></canvas>
                                    </div>
                                    <!-- 그래프 6-->
                                    <!-- chart -->

                                    <div class="cls row">
                                        <div class="col-lg-12"
                                            style="border: 1px solid black; margin-top: 1%;">
                                            <div class="header"
                                                style="margin-top: 1%;">
                                                <span class="h3">최근
                                                    클래스신청</span>
                                                <button class="btn btn-outline-light" type="button"
                                                    style="position: relative; float: right;"
                                                    onclick="location.href='classreqlist'">
                                                    <i class="far fa-plus-square fa-lg"></i>
                                                </button>
                                            </div>
                                            <table class="table text-center table-sm">
                                                <thead>
                                                    <tr>
                                                        <th scope="row">No</th>
                                                        <th scope="row">카테고리</th>
                                                        <th scope="row">멘토</th>
                                                        <th scope="row">신청일</th>
                                                    </tr>
                                                </thead>

                                                <tbody class="table-hover">
                                                    <c:forEach items="${ClassesFindAll }" var="r" begin="1"
                                                        end="3" step="1" varStatus="status">
                                                        <tr>
                                                            <th scope="row">${status.count }</th>
                                                            <td>${r.middleTag.name }</td>
                                                            <td>${r.mentee.nick }</td>
                                                            <td>${r.rgdt }</td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- class-->

                                    <div class="pro row">
                                        <div class="col-lg-12"
                                            style="border: 1px solid black; margin-top: 1%;">
                                            <div class="header"
                                                style="margin-top: 1%;">
                                                <span class="h3">최근
                                                    상품등록</span>
                                                <button
                                                    class="btn btn-outline-light"
                                                    type="button"
                                                    style="position: relative; float: right;"
                                                    onclick="location.href='prdtlist'">
                                                    <i
                                                        class="far fa-plus-square fa-lg"></i>
                                                </button>
                                            </div>
                                            <table
                                                class="table text-center table-sm">
                                                <thead>
                                                    <tr>
                                                        <th scope="row">No</th>
                                                        <th scope="row">카테고리</th>
                                                        <th scope="row">판매자</th>
                                                        <th scope="row">신청일</th>
                                                    </tr>
                                                </thead>

                                                <tbody
                                                    class="table-hover">
                                                    <c:forEach
                                                        items="${ProductFindAll }"
                                                        var="r"
                                                        begin="1"
                                                        end="3" step="1"
                                                        varStatus="status">
                                                        <tr>
                                                            <th
                                                                scope="row">${status.count }</th>
                                                            <td>${r.smalltag.name }</td>
                                                            <td>${r.mentee.nick }</td>
                                                            <td>${r.rgdt }</td>
                                                        </tr>

                                                    </c:forEach>
                                                </tbody>
                                            </table>


                                        </div>
                                    </div>
                                    <!-- pro-->

                                    <div class="mentor row">
                                        <div class="col-lg-12"
                                            style="border: 1px solid black; margin-top: 1%;">
                                            <div class="header"
                                                style="margin-top: 1%;">
                                                <span class="h3">최근
                                                    멘토신청</span>
                                                <button
                                                    class="btn btn-outline-light"
                                                    type="button"
                                                    style="position: relative; float: right;"
                                                    onclick="location.href='mentorreqlist'">
                                                    <i
                                                        class="far fa-plus-square fa-lg"></i>
                                                </button>
                                            </div>
                                            <table
                                                class="table text-center table-sm">
                                                <thead>
                                                    <tr>
                                                        <th scope="row">No</th>
                                                        <th scope="row">카테고리</th>
                                                        <th scope="row">멘토</th>
                                                        <th scope="row">신청일</th>
                                                    </tr>
                                                </thead>

                                                <tbody
                                                    class="table-hover">
                                                    <c:forEach
                                                        items="${MentorFindAll }"
                                                        var="r"
                                                        begin="1"
                                                        end="3" step="1"
                                                        varStatus="status">
                                                        <tr>
                                                            <th
                                                                scope="row">${status.count }</th>
                                                            <td><c:forEach
                                                                    items="${r.mentorTag }"
                                                                    var="mt">
                                        ${mt.name }
                                        </c:forEach></td>

                                    <td>${r.nick }</td>
                                    <td>${r.rgdtmt }</td>
                                </tr>

                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- mentor-->
        </div>
        <!-- board2-->
        </div>
    </div>
</div>
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

                    var lineChartData = {
                        labels : [
                                '2018.01',
                                '2018.02',
                                '2018.03'//라벨
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
                                            '200',
                                            '500',
                                            '300' ],
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
                                    max : 1000,
                                    min : 0,
                                    stepSize : 100
                                },
                            } ],
                        }
                    };
                </script>

                    <script>
                    var barChartData = {
                        labels : [
                                '9/20',
                                '9/21',
                                '9/22' ],
                        datasets : [
                                {
                                    type : 'line',
                                    label : '총 수입',
                                    data : [
                                            '0.111',
                                            '0.125',
                                            '0.116' ],
                                    borderColor : 'rgba(255, 159, 64, 1)',
                                    pointBackgroundColor : 'rgba(255, 159, 64, 0.2)',
                                    fill : false,
                                    yAxisID : "y-axis-1",
                                },
                                {
                                    type : 'bar',
                                    label : '멘토',
                                    data : [
                                            '0.4',
                                            '0.7',
                                            '0.8' ],
                                    borderColor : 'rgba(54, 162, 235, 1)',
                                    backgroundColor : 'rgba(54, 162, 235, 0.2)',
                                    yAxisID : "y-axis-2",
                                },
                                {
                                    type : 'bar',
                                    label : '멘티',
                                    data : [
                                            '0.3',
                                            '0.9',
                                            '0.1' ],
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
                                            max : 0.2,
                                            min : 0,
                                            stepSize : 0.1
                                        },
                                    },
                                    {
                                        id : "y-axis-2",
                                        type : "linear",
                                        position : "right",
                                        ticks : {
                                            max : 1.5,
                                            min : 0,
                                            stepSize : .5
                                        },
                                        gridLines : {
                                            drawOnChartArea : false,
                                        },
                                    } ],
                        }
                    };
                </script>
                </section>


                <section class="colorlib-services" data-section="2">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">멘토 신청 목록</h2>
                            <hr />
                            <!--   멘토 신청 목록 -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="col-lg-3 mb-3"
                                        id="serch-men">
                                        <form action="#" method="get">
                                            <div class="input-group">
                                                <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                                <input
                                                    class="form-control"
                                                    id="system-search"
                                                    name="q"
                                                    placeholder="Search for"
                                                    required> <span
                                                    class="input-group-btn">
                                                    <button
                                                        type="submit"
                                                        class="btn btn-default">
                                                        <i
                                                            class="fas fa-search fa-3x"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- 3 -->
                                </div>
                                <!-- 12 -->
                            </div>
                            <!-- row -->

                            <div class="row">
                                <div class="col-lg-12">
                                    <table
                                        class="table table-list-search">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th class="text-center">No</th>
                                                <th class="text-center">멘토이름</th>
                                                <th class="text-center">휴대전화</th>
                                                <th class="text-center">분야</th>
                                                <th class="text-center">신청일</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach
                                                items="${MentorRequestList}"
                                                var="ml" varStatus="i">
                                                <tr id="rmv${ml.no}">
                                                    <td
                                                        class="text-center"><input
                                                        type="checkbox"
                                                        id="men-ck"
                                                        class="men-ck"
                                                        name="men-ck"
                                                        value="${ml.no}"></td>
                                                    <td
                                                        class="text-center">${i.count}</td>
                                                    <td
                                                        class="text-center"><a
                                                        class="button"
                                                        href="#popup${i.count}">${ml.nick}(${ml.name})</a></td>
                                                    <td
                                                        class="text-center">${ml.phone}</td>
                                                    <td
                                                        class="text-center">
                                                        <c:forEach
                                                            items="${ml.mentorTag}"
                                                            var="mt"
                                                            varStatus="m">
                                    ${mt.name}
                                    <c:if test="${!m.last}">
                                        ,
                                    </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td
                                                        class="text-center">${ml.rgdtmt}</td>
                                                </tr>
                                                <!-- popup-->

                                                <div
                                                    id="popup${i.count}"
                                                    class="overlay">
                                                    <div class="popup">
                                                        <h2>멘토 신청
                                                            상세</h2>
                                                        <a class="close"
                                                            href="#">×</a>
                                                        <div
                                                            class="content">
                                                            <br />


                                                            <div
                                                                class="row">
                                                                <div
                                                                    class="col-lg-12">
                                                                    <div
                                                                        class="col-lg-5">
                                                                        <img
                                                                            class="ment-pic"
                                                                            src="${ml.phot}">
                                                                    </div>

                                                                    <div
                                                                        class="col-lg-7">
                                                                        <ul
                                                                            class="pop-in">
                                                                            <li><span
                                                                                style="font-size: 16px;"><i
                                                                                    class="fas fa-star-of-life mr-3"></i>닉네임(이름):</span>
                                                                                <br>
                                                                                <span
                                                                                class="pop-type ml-5">${ml.nick}(${ml.name})</span></li>
                                                                            <li><span
                                                                                style="font-size: 16px;"><i
                                                                                    class="fas fa-star-of-life mr-3"></i>휴대전화:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">${ml.phone}</span></li>
                                                                            <li><span
                                                                                style="font-size: 16px;"><i
                                                                                    class="fas fa-star-of-life mr-3"></i>출금계좌:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">${ml.bkname}</span></li>
                                                                            <li><span
                                                                                style="font-size: 16px;"><i
                                                                                    class="fas fa-star-of-life mr-3"></i>계좌번호:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">${ml.bkno}</span></li>
                                                                            <li><span
                                                                                style="font-size: 16px;"><i
                                                                                    class="fas fa-star-of-life mr-3"></i>분야:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">
                                                                                    <c:forEach
                                                                                        items="${ml.mentorTag}"
                                                                                        var="mt"
                                                                                        varStatus="m">
                                                ${mt.name}
                                                <c:if test="${!m.last}">
                                                    ,
                                                </c:if>
                                                                                    </c:forEach>
                                                                            </span></li>
                                                                            <li><span
                                                                                style="font-size: 16px;"><i
                                                                                    class="fas fa-star-of-life mr-3"></i>경력:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">${ml.carr}</span></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!-- popup row-->
                                                            </div>
                                                            <!-- popup container -->


                                                            <div
                                                                class="row">
                                                                <div
                                                                    class="col-lg-12 mt-5">
                                                                    <div
                                                                        class="col-lg-6 mx-auto">
                                                                        <h3>작품</h3>
                                                                        <div
                                                                            class="pic1">
                                                                            <div
                                                                                id="carousel-Create${i.index}"
                                                                                class="carousel slide"
                                                                                data-ride="carousel">
                                                                                <ol
                                                                                    class="carousel-indicators">
                                                                                    <li
                                                                                        data-target="#carousel-Create${i.index}"
                                                                                        data-slide-to="0"
                                                                                        class="active"></li>
                                                                                    <li
                                                                                        data-target="#carousel-Create${i.index}"
                                                                                        data-slide-to="1"></li>
                                                                                    <li
                                                                                        data-target="#carousel-Create${i.index}"
                                                                                        data-slide-to="2"></li>
                                                                                </ol>
                                                                                <div
                                                                                    class="carousel-inner">

                                                                                    <!-- 팝업 - 멘토 작품파일 -->
                                                                                    <c:forEach
                                                                                        items="${ml.mentorFile}"
                                                                                        var="mlFile"
                                                                                        varStatus="j">
                                                                                        <!-- 팝업 - 멘토 작품파일 - 첫째 사진만 active하기위한 choose(if) -->
                                                                                        <c:choose>
                                                                                            <c:when
                                                                                                test="${j.index eq 0}">
                                                                                                <div
                                                                                                    class="carousel-item active">
                                                                                            </c:when>
                                                                                            <c:otherwise>
                                                                                                <div
                                                                                                    class="carousel-item">
                                                                                            </c:otherwise>
                                                                                        </c:choose>
                                                                                        <img
                                                                                            style="width: 100%; height: 50%; display: block;"
                                                                                            src="${mlFile.mfname}"
                                                                                            alt="slide_${j.count}"
                                                                                            onclick="window.open('${mlFile.mfname}','_blank','toolbar=no,location=no,status=no,menubar=no, scrollbars=auto,resizable=no,directories=no, width=1024,height=768, top=10,left=10')">
                                                                                </div>
                                            </c:forEach>
                                            </div>

                                            <a
                                                class="carousel-control-prev"
                                                href="#carousel-Create${i.index}"
                                                role="button"
                                                data-slide="prev"> <span
                                                class="carousel-control-prev-icon"
                                                aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a
                                                class="carousel-control-next"
                                                href="#carousel-Create${i.index}"
                                                role="button"
                                                data-slide="next"> <span
                                                class="carousel-control-next-icon"
                                                aria-hidden="true"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                            </div>
                                            </div>
                                            </div>


                                            <div
                                                class="col-lg-6 mx-auto">
                                                <h3>자격증</h3>
                                                <div class="pic1">
                                                    <div
                                                        id="carousel-Certificate${i.index}"
                                                        class="carousel slide"
                                                        data-ride="carousel">
                                                        <ol
                                                            class="carousel-indicators">
                                                            <li
                                                                data-target="#carousel-Certificate${i.index}"
                                                                data-slide-to="0"
                                                                class="active"></li>
                                                            <li
                                                                data-target="#carousel-Certificate${i.index}"
                                                                data-slide-to="1"></li>
                                                            <li
                                                                data-target="#carousel-Certificate${i.index}"
                                                                data-slide-to="2"></li>
                                                        </ol>
                                                        <div
                                                            class="carousel-inner">
                                                            <!-- 팝업 - 멘토 자격증 -->
                                                            <c:forEach
                                                                items="${ml.mentorLicense}"
                                                                var="mlLicense"
                                                                varStatus="k">
                                                                <!-- 팝업 - 멘토 자격증 - 첫째 사진만 active하기위한 choose(if) -->
                                                                <c:choose>
                                                                    <c:when
                                                                        test="${k.index eq 0}">
                                                                        <div
                                                                            class="carousel-item active">
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <div
                                                                            class="carousel-item">
                                                                    </c:otherwise>
                                                                </c:choose>
                                                                <img
                                                                    style="width: 100%; height: 50%; display: block;"
                                                                    src="${mlLicense.phot}"
                                                                    alt="slide_${k.count}"
                                                                    onclick="window.open('${mlLicense.phot}','_blank','toolbar=no,location=no,status=no,menubar=no, scrollbars=auto,resizable=no,directories=no, width=1024,height=768, top=10,left=10')">
                                                                <div
                                                                    class="carousel-caption d-none d-md-block">
                                                                    <h5
                                                                        style="background: rgba(110, 110, 110, 0.7);">${k.count}.
                                                                        ${mlLicense.lname}</h5>
                                                                </div>
                                                        </div>
                                                        </c:forEach>
                                                    </div>
                                                    <a
                                                        class="carousel-control-prev"
                                                        href="#carousel-Certificate${i.index}"
                                                        role="button"
                                                        data-slide="prev">
                                                        <span
                                                        class="carousel-control-prev-icon"
                                                        aria-hidden="true"></span>
                                                        <span
                                                        class="sr-only">Previous</span>
                                                    </a> <a
                                                        class="carousel-control-next"
                                                        href="#carousel-Certificate${i.index}"
                                                        role="button"
                                                        data-slide="next">
                                                        <span
                                                        class="carousel-control-next-icon"
                                                        aria-hidden="true"></span>
                                                        <span
                                                        class="sr-only">Next</span>
                                                    </a>
                                                </div>
                                            </div>
                                            </div>
                                            </div>

                                            </div>
                                            <button type="button"
                                                class="btn btn-primary"
                                                id="mas-p1" name="Y"
                                                value="${ml.no}"
                                                onclick="stat(value,name)">승락</button>
                                            <button type="button"
                                                class="btn btn-primary"
                                                id="mas-p2" name="N"
                                                value="${ml.no}"
                                                onclick="stat(value,name)">거절</button>
                                            </div>

                                            </div>
                                            </div>
                                            </div>

                                            </c:forEach>
                                        </tbody>
                                    </table>

                                    <div class="col-lg-12 text-center"
                                        id="page-list1">
                                        <nav
                                            aria-label="Page navigation example">
                                            <ul class="pagination"
                                                id="page-list"
                                                style="display: inline-block;">
                                                <li class="page-item">
                                                    <a class="page-link"
                                                    href="#"
                                                    aria-label="Previous">
                                                        <span
                                                        aria-hidden="true">«</span>
                                                        <span
                                                        class="sr-only">Previous</span>
                                                </a>
                                                </li>
                                                <li class="page-item"><a
                                                    class="page-link"
                                                    href="#">1</a></li>
                                                <li class="page-item"><a
                                                    class="page-link"
                                                    href="#">2</a></li>
                                                <li class="page-item"><a
                                                    class="page-link"
                                                    href="#">3</a></li>
                                                <li class="page-item">
                                                    <a class="page-link"
                                                    href="#"
                                                    aria-label="Next">
                                                        <span
                                                        aria-hidden="true">»</span>
                                                        <span
                                                        class="sr-only">Next</span>
                                                </a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-12" id="btn">
                                        <button type="button"
                                            class="btn btn-primary"
                                            id="mas-btn"
                                            onclick="checkItem()">멘토
                                            신청 반려</button>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </section>

                <section class="colorlib-skills" data-section="3">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">클래스 신청 목록</h2>
                            <hr />

                            <!--  클래스 신청 목록 -->
                            <div class="col-lg-12">
                                <div class="col-lg-3 mb-3"
                                    id="serch-men">
                                    <form action="#" method="get">
                                        <div class="input-group">
                                            <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                            <input class="form-control"
                                                id="system-search"
                                                name="q"
                                                placeholder="Search for"
                                                required> <span
                                                class="input-group-btn">
                                                <button type="submit"
                                                    class="btn btn-default">
                                                    <i
                                                        class="fas fa-search fa-1x"></i>
                                                </button>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12">
                                    <table
                                        class="table table-list-search">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th class="text-center">No</th>
                                                <th class="text-center">멘토이름</th>
                                                <th class="text-center">클래스
                                                    이름</th>
                                                <th class="text-center">분야</th>
                                                <th class="text-center">신청일</th>
                                                <th class="text-center">처리현황</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <c:forEach
                                                items="${ClassRequestList}"
                                                var="cl" varStatus="i">
                                                <tr id="rmv${cl.no}">
                                                    <td
                                                        class="text-center"><input
                                                        type="checkbox"
                                                        id="men-ck"
                                                        class="men-ck"
                                                        name="men-ck"
                                                        value="${cl.no}"></td>
                                                    <td
                                                        class="text-center">${i.count}</td>
                                                    <td
                                                        class="text-center">${cl.mono}</td>
                                                    <%-- ${cl.nick}(${cl.name}) --%>
                                                    <td
                                                        class="text-center"><a
                                                        class="button"
                                                        href="#popup${i.count}">${cl.titl}</a></td>
                                                    <td
                                                        class="text-center">${cl.mtno}</td>
                                                    <td
                                                        class="text-center">${cl.rgdt}</td>
                                                    <td
                                                        class="text-center">
                                                        <c:choose>
                                                            <c:when
                                                                test="${cl.stat eq 'I'}">미처리</c:when>
                                                            <c:when
                                                                test="${cl.stat eq 'Y'}">승인</c:when>
                                                            <c:when
                                                                test="${cl.stat eq 'N'}">반려</c:when>
                                                            <c:otherwise>관리자문의</c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>

                                    </table>

                                    <div class="col-lg-12 text-center"
                                        id="page-list1">
                                        <nav
                                            aria-label="Page navigation example">
                                            <ul class="pagination"
                                                id="page-list"
                                                style="display: inline-block;">
                                                <li class="page-item">
                                                    <a class="page-link"
                                                    href="#"
                                                    aria-label="Previous">
                                                        <span
                                                        aria-hidden="true">«</span>
                                                        <span
                                                        class="sr-only">Previous</span>
                                                </a>
                                                </li>
                                                <li class="page-item"><a
                                                    class="page-link"
                                                    href="#">1</a></li>
                                                <li class="page-item"><a
                                                    class="page-link"
                                                    href="#">2</a></li>
                                                <li class="page-item"><a
                                                    class="page-link"
                                                    href="#">3</a></li>
                                                <li class="page-item">
                                                    <a class="page-link"
                                                    href="#"
                                                    aria-label="Next">
                                                        <span
                                                        aria-hidden="true">»</span>
                                                        <span
                                                        class="sr-only">Next</span>
                                                </a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>

                                </div>
                            </div>


                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-12" id="btn">
                                        <button type="button"
                                            class="btn btn-primary"
                                            id="mas-btn"
                                            onclick="checkItem()">클래스
                                            신청 반려</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </section>
                <!-- 3번째 섹 -->

                <section class="colorlib-experience" data-section="4">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">신고 접수 목록</h2>
                            <hr />

                            <!-- 신고 접수 목록 -->
                            <div class="col-lg-12">
                                <div class="col-lg-3" id="serch-men">
                                    <form action="#" method="get">
                                        <div class="input-group">
                                            <input class="form-control"
                                                id="system-search"
                                                name="q"
                                                placeholder="Search for"
                                                required> <span
                                                class="input-group-btn">
                                                <button type="submit"
                                                    class="btn btn-default">
                                                    <i
                                                        class="fas fa-search fa-1x"></i>
                                                </button>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <br /> <br />
                                <table class="table table-list-search">
                                    <thead>
                                        <tr>
                                            <th class="text-center">게시글번호</th>
                                            <th class="text-center">신고유형</th>
                                            <th class="text-center">분류</th>
                                            <th class="text-center">제목</th>
                                            <th class="text-center">글쓴이</th>
                                            <th class="text-center">신고날짜</th>
                                            <th class="text-center">상세보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${ReportList}"
                                            var="rl" varStatus="i">
                                            <tr id="rmv${rl.no}">
                                                <td class="text-center">${i.count}</td>
                                                <td class="text-center">${rl.type}</td>
                                                <td class="text-center">${rl.type_detail}</td>
                                                <td class="text-center">${rl.titl}</td>
                                                <td class="text-center">${rl.menteeNick}</td>
                                                <td class="text-center">${rl.rtdt}</td>
                                                <td class="text-center"><button
                                                        id="block-cho">
                                                        <a
                                                            class="button"
                                                            href="#popup${i.index}">상세
                                                            보기</a>
                                                    </button></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                            <div class="col-lg-12 text-center"
                                id="page-list1">
                                <nav
                                    aria-label="Page navigation example">
                                    <ul class="pagination"
                                        id="page-list"
                                        style="display: inline-block;">
                                        <li class="page-item"><a
                                            class="page-link" href="#"
                                            aria-label="Previous"> <span
                                                aria-hidden="true">«</span>
                                                <span class="sr-only">Previous</span>
                                        </a></li>
                                        <li class="page-item"><a
                                            class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a
                                            class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a
                                            class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a
                                            class="page-link" href="#"
                                            aria-label="Next"> <span
                                                aria-hidden="true">»</span>
                                                <span class="sr-only">Next</span>
                                        </a></li>
                                    </ul>
                                </nav>
                            </div>


                            <!-- popup-->
                            <c:forEach items="${ReportList}" var="rl"
                                varStatus="i">
                                <div id="popup${i.index}"
                                    class="overlay">
                                    <div class="popupH">
                                        <h2>신고 상세 목록</h2>
                                        <a class="close" href="#">×</a>
                                        <div class="content">
                                            <br />
                                            <div class="container">
                                                <div class="row">

                                                    <!-- <i class="fas fa-star-of-life mr-3"></i><<이거 다 생략함 -->
                                                    <div
                                                        class="col-lg-12">
                                                        <table
                                                            class="table table-bordered"
                                                            id="block-tab"
                                                            style="list-style-type: none;">
                                                            <tbody>
                                                                <tr>
                                                                    <td><li><span
                                                                            style="font-size: 20px;">신고자:
                                                                        </span>
                                                                            <span
                                                                            class="pop-type">${rl.menteeNick}</span></li></td>
                                                                    <td><li><span
                                                                            style="font-size: 20px;">피신고자:
                                                                        </span>
                                                                            <span
                                                                            class="pop-type">${rl.mentee2Nick}</span></li></td>
                                                                    <td><li><span
                                                                            style="font-size: 20px;">신고유형:
                                                                        </span>
                                                                            <span
                                                                            class="pop-type">${rl.type}</span></li></td>
                                                                    <td><li><span
                                                                            style="font-size: 20px;">분류:
                                                                        </span>
                                                                            <span
                                                                            class="pop-type">${rl.type_detail}</span></li></td>
                                                                </tr>

                                                                <tr>
                                                                    <td
                                                                        colspan="4"><li><span
                                                                            style="font-size: 20px;">클래스URL:
                                                                        </span>
                                                                            <a
                                                                            href="${rl.url}"><span
                                                                                class="pop-type">${rl.url}</span></a></li></td>
                                                                </tr>


                                                                <tr>
                                                                    <td
                                                                        colspan="3"><li><span
                                                                            style="font-size: 20px;">제목:
                                                                        </span>
                                                                            <span
                                                                            class="pop-type">${rl.titl}</span></li></td>
                                                                    <td
                                                                        colspan="3"><li><span
                                                                            style="font-size: 20px;">신고날짜:
                                                                        </span>
                                                                            <span
                                                                            class="pop-type">${rl.rtdt}</span></li></td>
                                                                </tr>
                                                                <tr>
                                                                    <td
                                                                        colspan="4"
                                                                        style="height: auto"><li><span
                                                                            style="font-size: 20px;">내용:
                                                                        </span>
                                                                            <span
                                                                            class="pop-type">${rl.conts}</span></li></td>
                                                                </tr>
                                                                <!-- <tr>
                                                <td colspan="4"><span>이미지: <img alt="block-img" src="img/basket1.jpg" style="width: 100px; height: 100px;"></span></td>
                                            </tr> -->
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <!-- 12 -->
                                                    <div
                                                        class="col-lg-12">
                                                        <button
                                                            type="button"
                                                            class="btn btn-primary"
                                                            id="mas-p1"
                                                            name="N"
                                                            value="${rl.no}"
                                                            onclick="stat(value,name)">신고거절</button>
                                                        <button
                                                            type="button"
                                                            class="btn btn-primary"
                                                            id="mas-p2"
                                                            name="Y"
                                                            value="${rl.no}"
                                                            onclick="stat(value,name)">신고처리</button>
                                                    </div>
                                                </div>
                                                <!-- popup row-->
                                            </div>
                                            <!-- popup container -->

                                        </div>
                                    </div>
                                </div>

                            </c:forEach>


                        </div>
                    </div>

                    <script>
                    var fadeTime = 200;
                    function stat(
                            no,
                            stat) {
                        removeItem(no)
                        $
                                .ajax({
                                    data : {
                                        rtno : no,
                                        stat : stat
                                    },
                                    url : "reptstat.do",
                                    success : location.href = "#"
                                });
                    }
    
                    function removeItem(
                            no) {
                        /* Remove row from DOM and recalc cart total */
                        var getRow = document
                                .getElementById("rmv"
                                        + no);
                        getRow = $(getRow);
                        getRow
                                .slideUp(
                                        fadeTime,
                                        function() {
                                            getRow
                                                    .remove();
                                        });
                    }
                </script>

                </section>

                <section class="colorlib-experience" data-section="5">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">신고 완료 목록</h2>
                            <hr />

                            <!-- 신고 완료 목록 -->
                            <div class="col-lg-12">
                                <div class="col-lg-3" id="serch-men">
                                    <form action="#" method="get">
                                        <div class="input-group">
                                            <input class="form-control"
                                                id="system-search"
                                                name="q"
                                                placeholder="Search for"
                                                required> <span
                                                class="input-group-btn">
                                                <button type="submit"
                                                    class="btn btn-default">
                                                    <i
                                                        class="fas fa-search fa-1x"></i>
                                                </button>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <br /> <br />
                                <table class="table table-list-search">
                                    <thead>
                                        <tr>
                                            <th class="text-center">No</th>
                                            <th class="text-center">최근
                                                신고 날짜</th>
                                            <th class="text-center">회원
                                                ID</th>
                                            <th class="text-center">회원
                                                닉네임</th>
                                            <th class="text-center">신고
                                                누적 횟수</th>
                                            <th class="text-center">상세보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${ReportList}"
                                            var="rl" varStatus="i">
                                            <tr>
                                                <td class="text-center">${i.count}</td>
                                                <td class="text-center">${rl.rtdt}</td>
                                                <td class="text-center">${rl.mentee2Email}</td>
                                                <td class="text-center">${rl.mentee2Nick}</td>
                                                <td class="text-center">${rl.cnt}</td>
                                                <td class="text-center"><button
                                                        id="block-cho"
                                                        name="${rl.meno2}"
                                                        onclick="location.href='#popup${rl.meno2}'">상세
                                                        보기</button></td>
                                            </tr>

                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                            <div class="col-lg-12 text-center"
                                id="page-list1">
                                <nav
                                    aria-label="Page navigation example">
                                    <ul class="pagination"
                                        id="page-list"
                                        style="display: inline-block;">
                                        <li class="page-item"><a
                                            class="page-link" href="#"
                                            aria-label="Previous"> <span
                                                aria-hidden="true">«</span>
                                                <span class="sr-only">Previous</span>
                                        </a></li>
                                        <li class="page-item"><a
                                            class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a
                                            class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a
                                            class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a
                                            class="page-link" href="#"
                                            aria-label="Next"> <span
                                                aria-hidden="true">»</span>
                                                <span class="sr-only">Next</span>
                                        </a></li>
                                    </ul>
                                </nav>
                            </div>


                            <!-- popup-->
                            <c:forEach items="${ReportList}" var="rl"
                                varStatus="i">

                                <div id="popup${rl.meno2}"
                                    class="overlay">
                                    <div class="popupH">
                                        <h2>신고 누적 목록</h2>
                                        <a class="close" href="#">×</a>
                                        <div class="content">
                                            <br />
                                            <div class="container">
                                                <div class="row">
                                                    <table
                                                        class="table table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th
                                                                    width="5%">No</th>
                                                                <th
                                                                    width="10%">신고자</th>
                                                                <th
                                                                    width="8%">분류</th>
                                                                <th
                                                                    width="13%">유형</th>
                                                                <th
                                                                    width="16%">제목</th>
                                                                <th
                                                                    width="18%">내용</th>
                                                                <th
                                                                    width="15%">URL</th>
                                                                <th
                                                                    width="15%">신고날짜</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach
                                                                items="${rl.finishlist}"
                                                                var="fl"
                                                                varStatus="j">
                                                                <tr>
                                                                    <td>${j.count}</td>
                                                                    <td>${fl.mentee2Nick}</td>
                                                                    <td>${fl.type}</td>
                                                                    <td>${fl.type_detail}</td>
                                                                    <td>${fl.titl}</td>
                                                                    <td>
                                                                        <%-- <c:choose>
                                                                            <c:when test="${fn:length(fl.conts) >10}">
                                                  <a class="button" style="color: #007bff;cursor: pointer;" onclick="viewConts('#visible${j.index}');">
                                                  ${fn:substring(fl.conts,0,10)} ...
                                                  </a>
                                                 </c:when> 
                                                                            <c:otherwise>
                                                  ${fl.conts}
                                                </c:otherwise>
                                                                        </c:choose> --%>
                                                                    </td>
                                                                    <td><a
                                                                        href="${fl.url}">${fl.url}</a></td>
                                                                    <td>${fl.rtdt}</td>
                                                                </tr>
                                                                <tr
                                                                    id="visible${j.index}"
                                                                    style="display: none">
                                                                    <td
                                                                        colspan="2">내용</td>
                                                                    <td
                                                                        colspan="6">${fl.conts}</td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <!-- popup row-->
                                            </div>
                                            <!-- popup container -->

                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                    

                </section>

                <section class="colorlib-experience" data-section="6">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">전체 상품 목록</h2>
                            <hr />

                            <!-- 전체 상품 -->
                            <div class="col-lg-12">
                                <div class="col-lg-3" id="serch-men">
                                    <form action="#" method="get">
                                        <div class="input-group">
                                            <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                            <input class="form-control"
                                                id="system-search"
                                                name="q"
                                                placeholder="Search for"
                                                required> <span
                                                class="input-group-btn">
                                                <button type="submit"
                                                    class="btn btn-default">
                                                    <i class="fas fa-search fa-1x"></i>
                                                </button>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <br /> <br />
                                <table class="table table-list-search">
                                    <thead>
                                        <tr>
                                            <th class="text-center">No</th>
                                            <th class="text-center">카테고리</th>
                                            <th class="text-center">상품명</th>
                                            <th class="text-center">판매자명(닉네임)</th>
                                            <th class="text-center">가격</th>
                                            <th class="text-center">재고</th>
                                            <th class="text-center">등록일</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <c:forEach
                                            items="${findAllByList}"
                                            var="pl" varStatus="i">
                                            <tr>
                                                <td class="text-center">${i.count}</td>
                                                <!-- no -->
                                                <td class="text-center">${pl.smalltag.name}</td>
                                                <!-- 카테고리 -->
                                                <td class="text-center"><a
                                                    class="button"
                                                    href="#">${pl.titl}</a></td>
                                                <!-- 상품명-->
                                                <td class="text-center">${pl.mentee.name}(${pl.mentee.nick})</td>
                                                <!-- 판매자명 -->
                                                <td class="text-center">￦${pl.pric}</td>
                                                <!-- 가격 -->
                                                <td
                                                    class="text-center bold">${pl.stock}</td>
                                                <!-- 재고 -->
                                                <td
                                                    class="text-center bold">${pl.rgdt}</td>
                                                <!-- 등록일 -->
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            </div>

                            <div class="row lg-2" id="page-list1"
                                style="margin: auto;">
                                <div class="col-lg-12">
                                    <nav
                                        aria-label="Page navigation example">
                                        <ul class="pagination"
                                            id="page-list">
                                            <li class="page-item"><a
                                                class="page-link"
                                                href="#"
                                                aria-label="Previous">
                                                    <span
                                                    aria-hidden="true">«</span>
                                                    <span
                                                    class="sr-only">Previous</span>
                                            </a></li>
                                            <li class="page-item"><a
                                                class="page-link"
                                                href="#">1</a></li>
                                            <li class="page-item"><a
                                                class="page-link"
                                                href="#">2</a></li>
                                            <li class="page-item"><a
                                                class="page-link"
                                                href="#">3</a></li>
                                            <li class="page-item"><a
                                                class="page-link"
                                                href="#"
                                                aria-label="Next"> <span
                                                    aria-hidden="true">»</span>
                                                    <span
                                                    class="sr-only">Next</span>
                                            </a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    </section>

    <section class="colorlib-experience" data-section="7">
        <div class="colorlib-narrow-content">
            <div class="row">

                <h2 class="colorlib-heading">전체 클래스 목록</h2>
                <hr />

                <!-- 전체 클래스 목록 -->
                <div class="col-lg-12">
                    <div class="col-lg-3" id="serch-men">
                        <form action="#" method="get">
                            <div class="input-group">
                                <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                <input class="form-control"
                                    id="system-search" name="q"
                                    placeholder="Search for" required>
                                <span class="input-group-btn">
                                    <button type="submit"
                                        class="btn btn-default">
                                        <i class="fas fa-search fa-1x"></i>
                                    </button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <br /> <br />
                        <table class="table table-list-search">
                            <thead>
                                <tr>
                                    <th class="text-center">No</th>
                                    <th class="text-center">카테고리</th>
                                    <th class="text-center">클래스명</th>
                                    <th class="text-center">구매자</th>
                                    <th class="text-center">판매자</th>
                                    <th class="text-center">가격</th>
                                    <th class="text-center">결제일</th>

                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${classOrderList}"
                                    var="pl" varStatus="i">
                                    <tr>
                                        <td class="text-center">${i.count}</td>
                                        <td class="text-center">${pl.mtname}</td>
                                        <!-- 카테고리 -->
                                        <td class="text-center"><a
                                            class="button" href="#">${pl.cls_titl}</a></td>
                                        <!-- 클래스명 -->
                                        <td class="text-center">${pl.mete_nick}</td>
                                        <!-- 구매자 -->
                                        <td class="text-center">${pl.mete2_nick}</td>
                                        <!-- 판매자 -->
                                        <td class="text-center">￦${pl.cls_pric}</td>
                                        <!-- 가격 -->
                                        <td class="text-center bold">${pl.paydt}</td>
                                        <!--결제일 -->
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div class="row lg-2" id="page-list1">
                        <div class="col-lg-12">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination" id="page-list">
                                    <li class="page-item"><a
                                        class="page-link" href="#"
                                        aria-label="Previous"> <span
                                            aria-hidden="true">«</span>
                                            <span class="sr-only">Previous</span>
                                    </a></li>
                                    <li class="page-item"><a
                                        class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a
                                        class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a
                                        class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a
                                        class="page-link" href="#"
                                        aria-label="Next"> <span
                                            aria-hidden="true">»</span>
                                            <span class="sr-only">Next</span>
                                    </a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                </div>

            </div>
        </div>

    </section>

    <section class="colorlib-experience" data-section="8">
        <div class="colorlib-narrow-content">
            <div class="row">

                <h2 class="colorlib-heading">주문 내역</h2>
                <hr />

                <!-- 주문 내역 -->
                <div class="col-lg-12">
                    <div class="col-lg-3" id="serch-men">
                        <form action="#" method="get">
                            <div class="input-group">
                                <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                <input class="form-control"
                                    id="system-search" name="q"
                                    placeholder="Search for" required>
                                <span class="input-group-btn">
                                    <button type="submit"
                                        class="btn btn-default">
                                        <i class="fas fa-search fa-1x"></i>
                                    </button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <br /> <br />
                        <table class="table table-list-search">
                            <thead>
                                <tr>
                                    <th class="text-center">No</th>
                                    <th class="text-center">카테고리</th>
                                    <th class="text-center">상품명</th>
                                    <th class="text-center">구매자</th>
                                    <th class="text-center">판매자</th>
                                    <th class="text-center">가격</th>
                                    <th class="text-center">결제일</th>

                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${productOrderList}"
                                    var="pl" varStatus="i">
                                    <tr>
                                        <td class="text-center">${i.count}</td>
                                        <td class="text-center">${pl.stname}</td>
                                        <!-- 카테고리 -->
                                        <td class="text-center"><a
                                            class="button" href="#">${pl.prdt_titl}</a></td>
                                        <!-- 상품명 -->
                                        <td class="text-center">${pl.mete_nick}</td>
                                        <!-- 구매자 -->
                                        <td class="text-center">${pl.mete2_nick}</td>
                                        <!-- 판매자 -->
                                        <td class="text-center">￦${pl.prdt_pric}</td>
                                        <!-- 가격 -->
                                        <td class="text-center bold">${pl.paydt}</td>
                                        <!--결제일 -->
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div class="row lg-2" id="page-list1">
                        <div class="col-lg-12">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination" id="page-list">
                                    <li class="page-item"><a
                                        class="page-link" href="#"
                                        aria-label="Previous"> <span
                                            aria-hidden="true">«</span>
                                            <span class="sr-only">Previous</span>
                                    </a></li>
                                    <li class="page-item"><a
                                        class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a
                                        class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a
                                        class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a
                                        class="page-link" href="#"
                                        aria-label="Next"> <span
                                            aria-hidden="true">»</span>
                                            <span class="sr-only">Next</span>
                                    </a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                </div>

            </div>
        </div>

    </section>


    </div>
    <!-- end:colorlib-main -->
    </div>
    <!-- end:container-wrap -->
    </div>
    <!-- end:colorlib-page -->

</body>
</html>