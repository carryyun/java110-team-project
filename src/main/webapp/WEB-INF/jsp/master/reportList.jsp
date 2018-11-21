<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>

    <!-- 필수-->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

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
			    <p><span style="font-size: 45px; position: relative; right;"><strong>신고 완료 목록</strong></span></p>
			
			<div class="col-lg-3" id="serch-men">
			    <form action="#" method="get">
			        <div class="input-group">
		                <input class="form-control" id="system-search" name="q" placeholder="Search for" required>
		                <span class="input-group-btn">
		                    <button type="submit" class="btn btn-default"><i class="fas fa-search fa-1x"></i></button>
		                </span>
		            </div>
		        </form>
			    </div>
			</div>

            <div class="col-lg-12">
                <br />
                <br />
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
                    <c:forEach items="${ReportList}" var="rl" varStatus="i">
                        <tr>
                 
                            <td class="text-center">${i.count}</td>
                            <td class="text-center">${rl.type}</td>
                            <td class="text-center">${rl.type_detail}</td>
                            <td class="text-center">${rl.titl}</td>
                            <td class="text-center">${rl.meno}</td>
                            <td class="text-center">${rl.rtdt}</td>
                            <td class="text-center"><button id="block-cho"><a class="button" href="#popup1">상세 보기</a></button></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <div class="col-lg-12 text-center" id="page-list1">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination" id="page-list" style="display: inline-block;">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">«</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">»</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
            </div>


            <!-- popup-->

            <div id="popup1" class="overlay">
                <div class="popup">
                    <h2> 신고 누적 목록</h2>
                    <a class="close" href="#">×</a>
                    <div class="content">
                        <br />
                        <div class="container">
                            <div class="row">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>신고자ID</th>
                                            <th>신고유형</th>
                                            <th>신고제목</th>
                                            <th>신고내용</th>
                                            <th>URL</th>
                                            <th>신고날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>minjisiro</td>
                                            <td>클래스 신고</td>
                                            <td>음란물 배포</td>
                                            <td>음란물 배포</td>
                                            <td><a href="#">이건 해당 신고 게시글</a></td>
                                            <td>2032.13.14</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div><!-- popup row-->
                        </div><!-- popup container -->

                    </div>
                </div>
            </div>

        </div><!-- 메인 row-->
    </div><!-- 메인 container-->


</body>
<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</html>