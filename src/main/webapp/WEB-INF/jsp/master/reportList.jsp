<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>

<!-- 필수-->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">

<!-- js-->
<!-- <script src="js/master-mentorList.js"></script> -->

<!-- css -->
<link href="/css/master.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">

</head>

<body>
    <div class="container">
        <div class="row">

            <!-- 게시판 시작-->
            <div class="col-lg-12 col-lg-offset-12">
                <p>
                    <span style="font-size: 45px; position: relative;"><strong>신고 접수 목록
                            </strong></span>
                </p>

                <div class="col-lg-3" id="serch-men">
                    <form action="#" method="get">
                        <div class="input-group">
                            <input class="form-control" id="system-search" name="q"
                                placeholder="Search for" required> <span
                                class="input-group-btn">
                                <button type="submit" class="btn btn-default">
                                    <i class="fas fa-search fa-1x"></i>
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
                            <th class="text-center">신고유형</th>
                            <th class="text-center">분류</th>
                            <th class="text-center">글쓴이</th>
                            <th class="text-center">신고날짜</th>
                            <th class="text-center">상세보기</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${ReportList}" var="rl" varStatus="i">
                            <tr id="rmv${rl.no}">
                                <td class="text-center">${i.count}</td>
                                <td class="text-center">${rl.type}</td>
                                <td class="text-center">${rl.type_detail}</td>
                                <td class="text-center">${rl.menteeNick}</td>
                                <td class="text-center">${rl.rtdt}</td>
                                <td class="text-center"><button id="block-cho">
                                        <a class="button" href="#popup${i.index}">상세 보기</a>
                                    </button></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <div class="col-lg-12 text-center" id="page-list1">
                <nav aria-label="Page navigation example">
                    <ul class="pagination" id="page-list"
                        style="display: inline-block;">
                        <li class="page-item"><a class="page-link" href="#"
                            aria-label="Previous"> <span aria-hidden="true">«</span> <span
                                class="sr-only">Previous</span>
                        </a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#"
                            aria-label="Next"> <span aria-hidden="true">»</span> <span
                                class="sr-only">Next</span>
                        </a></li>
                    </ul>
                </nav>
            </div>


            <!-- popup-->
            <c:forEach items="${ReportList}" var="rl" varStatus="i">
                <div id="popup${i.index}" class="overlay">
                    <div class="popupH">
                        <h2>신고 상세 목록</h2>
                        <a class="close" href="#">×</a>
                        <div class="content">
                            <br />
                            <div class="container">
                                <div class="row">

                                    <!-- <i class="fas fa-star-of-life mr-3"></i><<이거 다 생략함 -->
                                    <div class="col-lg-12">
                                        <table class="table table-bordered" id="block-tab"
                                            style="list-style-type: none;">
                                            <tbody>
                                                <tr>
                                                    <td><li><span style="font-size: 20px;">신고자:
                                                        </span> <span class="pop-type">${rl.menteeNick}</span></li></td>
                                                    <td><li><span style="font-size: 20px;">피신고자:
                                                        </span> <span class="pop-type">${rl.mentee2Nick}</span></li></td>
                                                    <td><li><span style="font-size: 20px;">신고유형:
                                                        </span> <span class="pop-type">${rl.type}</span></li></td>
                                                    <td><li><span style="font-size: 20px;">분류:
                                                        </span> <span class="pop-type">${rl.type_detail}</span></li></td>
                                                </tr>

                                                <tr>
                                                    <td colspan="4"><li><span
                                                            style="font-size: 20px;">클래스URL: </span> <a
                                                            href="${rl.url}"><span class="pop-type">${rl.url}</span></a></li></td>
                                                </tr>


                                                <tr>
                                                    <td colspan="3"><li><span
                                                            style="font-size: 20px;">제목: </span> <span
                                                            class="pop-type">${rl.titl}</span></li></td>
                                                    <td colspan="3"><li><span
                                                            style="font-size: 20px;">신고날짜: </span> <span
                                                            class="pop-type">${rl.rtdt}</span></li></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" style="height: auto"><li><span
                                                            style="font-size: 20px;">내용: </span> <span
                                                            class="pop-type">${rl.conts}</span></li></td>
                                                </tr>
                                                <!-- <tr>
                                                <td colspan="4"><span>이미지: <img alt="block-img" src="img/basket1.jpg" style="width: 100px; height: 100px;"></span></td>
                                            </tr> -->
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- 12 -->
                                    <div class="col-lg-12">
                                        <button type="button" class="btn btn-primary" id="mas-p1"
                                            name="N" value="${rl.no}" onclick="stat(value,name)">신고거절</button>
                                        <button type="button" class="btn btn-primary" id="mas-p2"
                                            name="Y" value="${rl.no}" onclick="stat(value,name)">신고처리</button>
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
        <!-- 메인 row-->
    </div>
    <!-- 메인 container-->




</body>
<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- 181121고친거 -->
<script>
var fadeTime = 200;
    function stat(no, stat) {
        removeItem(no)
        $.ajax({
            data : {
                rtno : no,
                stat : stat
            },
            url : "reptstat.do",
            success : location.href = "#"
        });
    }
    
    function removeItem(no) {
        /* Remove row from DOM and recalc cart total */
        var getRow = document.getElementById("rmv"+no);
        getRow = $(getRow);
        getRow.slideUp(fadeTime, function () {
            getRow.remove();
        });
    }
</script>

</html>