<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%-- 부트스트랩 --%>
<link
    href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    rel="stylesheet" id="bootstrap-css">
<script
    src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
    src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.js"></script>

<%-- 아이콘  --%>
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">

<%-- css --%>
<link href="/css/masterDashboard.css" rel="stylesheet" />

<body>
<body style="background-color: #F2F4F7">

    <div class="container" style="background-color: white;">
        <div class="row">

            <div class="col-lg-12">
                <hr />
                <!-- 그래프-->

                <div class="chart">
                    <div class="payment col-lg-6">
                        <canvas id="payment-graph"></canvas>
                    </div>
                    <!-- 그래프 6-->
                    <div class="person col-lg-6">
                        <canvas id="person-graph"></canvas>
                    </div>
                    <!-- 그래프 6-->
                </div>
                <!-- chart -->

                <div class="board1">
                    <div class="cls col-lg-6">
                        <div class="header">
                            <p>
                                <span class="h3">최근 클래스신청</span>
                                <button type="button"
                                    style="position: relative; float: right;"
                                    onclick="location.href='classreqlist'">
                                    <i class="far fa-plus-square fa-lg"></i>
                                </button>
                            </p>
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
                                <c:forEach items="${ClassesFindAll }"
                                    var="r" begin="1" end="3" step="1"
                                    varStatus="status">
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
                    <!-- class-->

                    <div class="block col-lg-6">
                        <div class="header">
                            <p>
                                <span class="h3">최근 신고접수</span>
                                <button type="button"
                                    style="position: relative; float: right;"
                                    onclick="location.href='reportList'">
                                    <i class="far fa-plus-square fa-lg"></i>
                                </button>
                            </p>
                        </div>
                        <table class="table text-center table-sm">
                            <thead>
                                <tr>
                                    <th scope="row">No</th>
                                    <th scope="row">신고유형</th>
                                    <th scope="row">회원</th>
                                    <th scope="row">신고일</th>
                                </tr>
                            </thead>

                            <tbody class="table-hover">
                                <c:forEach items="${ReportFindAll }" var="r" begin="1" end="3" step="1"
                                    varStatus="status">
                                    <tr>
                                        <th scope="row">${status.count }</th>
                                        <td>${r.type }</td>
                                        <td>${r.mentee2Nick }</td>
                                        <td>${r.rtdt }</td>
                                    </tr>

                                </c:forEach>
                            </tbody>
                        </table>

                    </div>
                    <!-- block-->
                </div>
                <!-- board1-->

                <div class="board2">
                    <div class="pro col-lg-6">
                        <div class="header">
                            <p>
                                <span class="h3">최근 상품등록</span>
                                <button type="button"
                                    style="position: relative; float: right;"
                                    onclick="location.href='prdtlist'">
                                    <i class="far fa-plus-square fa-lg"></i>
                                </button>
                            </p>
                        </div>
                        <table class="table text-center table-sm">
                            <thead>
                                <tr>
                                    <th scope="row">No</th>
                                    <th scope="row">카테고리</th>
                                    <th scope="row">판매자</th>
                                    <th scope="row">신청일</th>
                                </tr>
                            </thead>

                            <tbody class="table-hover">
                                <c:forEach items="${ProductFindAll }"
                                    var="r" begin="1" end="3" step="1"
                                    varStatus="status">
                                    <tr>
                                        <th scope="row">${status.count }</th>
                                        <td>${r.smalltag.name }</td>
                                        <td>${r.mentee.nick }</td>
                                        <td>${r.rgdt }</td>
                                    </tr>

                                </c:forEach>
                            </tbody>
                        </table>


                    </div>
                    <!-- pro-->
                    <div class="mentor col-lg-6">
                        <div class="header">
                            <p>
                                <span class="h3">최근 멘토신청</span>
                                <button type="button"
                                    style="position: relative; float: right;"
                                    onclick="location.href='mentorreqlist'">
                                    <i class="far fa-plus-square fa-lg"></i>
                                </button>
                            </p>
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
                                <c:forEach items="${MentorFindAll }"
                                    var="r" begin="1" end="3" step="1"
                                    varStatus="status">
                                    <tr>
                                        <th scope="row">${status.count }</th>
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
                    <!-- mentor-->
                </div>
                <!-- board2-->



            </div>
            <!-- 전체 12-->
        </div>
        <!-- 전체 row-->
    </div>
    <!-- 전체 container-->

    <!-- payment script 시작 -->
    <script>
                    window.onload = function() {
                        ctx = document.getElementById("person-graph");
                        window.myBar = new Chart(ctx, {
                            type : 'line',
                            data : lineChartData,
                            options : lineChartOption
                        });

                        ctx = document.getElementById("payment-graph");
                        window.myBar = new Chart(ctx, {
                            type : 'bar',
                            data : barChartData,
                            options : barChartOption
                        });
                    };

                    var lineChartData = {
                        labels : [ '2018.01', '2018.02', '2018.03'//라벨
                        ],
                        datasets : [ {
                            type : 'line',
                            label : '유입자수',
                            // 유입자 데이터
                            data : [ '100', '200', '300' ],
                            borderColor : 'rgba(255,99,132,1)',
                            backgroundColor : 'rgba(255, 99, 132, 0.2)',
                            fill : false,
                            yAxisID : "y-axis-1",
                        }, {
                            type : 'line',
                            label : '가입 회원수',
                            // 가입자 데이터
                            data : [ '200', '500', '300' ],
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
                        labels : [ '9/20', '9/21', '9/22' ],
                        datasets : [ {
                            type : 'line',
                            label : '총 수입',
                            data : [ '0.111', '0.125', '0.116' ],
                            borderColor : 'rgba(255, 159, 64, 1)',
                            pointBackgroundColor : 'rgba(255, 159, 64, 0.2)',
                            fill : false,
                            yAxisID : "y-axis-1",
                        }, {
                            type : 'bar',
                            label : '멘토',
                            data : [ '0.4', '0.7', '0.8' ],
                            borderColor : 'rgba(54, 162, 235, 1)',
                            backgroundColor : 'rgba(54, 162, 235, 0.2)',
                            yAxisID : "y-axis-2",
                        }, {
                            type : 'bar',
                            label : '멘티',
                            data : [ '0.3', '0.9', '0.1' ],
                            borderColor : 'rgba(255,99,132,1)',
                            backgroundColor : 'rgba(255, 99, 132, 0.2)',
                            yAxisID : "y-axis-2",
                        } ]
                    };

                    var barChartOption = {
                        responsive : true,
                        scales : {
                            yAxes : [ {
                                id : "y-axis-1",
                                type : "linear",
                                position : "left",
                                ticks : {
                                    max : 0.2,
                                    min : 0,
                                    stepSize : 0.1
                                },
                            }, {
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

</body>
</html>