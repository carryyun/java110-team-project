<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>

    <!-- 부트스트랩-->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <!-- js-->
    <!-- <script src="js/master-mentorList.js"></script> -->

    <!-- css -->
    <link href="/css/master.css" rel="stylesheet">


</head>

<body>
    <div class="container">
        <div class="row">

            <!-- 게시판 시작-->
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-12 col-lg-offset-12">
                        <p>
                            <span style="font-size: 45px; position: relative; right;"><strong>멘토 신청 목록</strong></span>
                        </p>

                        <div class="col-lg-3" id="serch-men">
                            <form action="#" method="get">
                                <div class="input-group">
                                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                    <input class="form-control" id="system-search" name="q" placeholder="Search for" required>
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-default"><i class="fas fa-search fa-1x"></i></button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                </div><!-- 게시판 row-->
            </div><!-- 게시판 container-->

            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-12">
                        <br />
                        <br />
                        <table class="table table-list-search">
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
                            <c:forEach items="${MentorRequestList}" var="ml" varStatus="i">
                                <tr>
                                    <td class="text-center"><input type="checkbox" id="men-ck" name="men-ck"></td>
                                    <td class="text-center">${i.count}</td>
                                    <td class="text-center"><a class="button" href="#popup${i.count}">${ml.nick}(${ml.name})</a></td>
                                    <td class="text-center">${ml.phone}</td>
                                    <td class="text-center">디자인</td>
                                    <td class="text-center">${ml.rgdtmt}</td>
                                </tr>
                                
                                <!-- popup-->
            
            <div id="popup${i.count}" class="overlay">
                <div class="popup">
                    <h2> 멘토 신청 상세</h2>
                    <a class="close" href="#">×</a>
                    <div class="content">
                        <br />

                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="col-lg-5">
                                        <span>
                                            <img class="ment-pic" src="${ml.phot}" style="height: 300px; width: 300px; margin-left: 10%;">
                                        </span>
                                    </div>

                                    <div class="col-lg-4" style="margin-left: 6%">
                                        <ul class="pop-in">
                                            <li><span style="font-size: 20px;">닉네임(이름):</span>
                                                <span class="pop-type">${ml.nick}(${ml.name})</span></li>
                                            <li><span style="font-size: 20px;">휴대전화:</span>
                                                <span class="pop-type">${ml.phone}</span></li>
                                            <li><span style="font-size: 20px;">출금계좌:</span><span class="pop-type">${ml.bkname}</span></li>
                                            <li><span style="font-size: 20px;">계좌번호:</span><span class="pop-type">${ml.bkno}</span></li>
                                            <li><span style="font-size: 20px;">분야:</span><span class="pop-type">프로그램</span></li>
                                            <li><span style="font-size: 20px;">경력: </span><span class="pop-type">${ml.carr}</span></li>
                                        </ul>
                                    </div>
                                </div><!-- 12 -->


                            </div><!-- popup row-->
                        </div><!-- popup container -->

                        <div class="row" id="my-art">
                            <div class="col-lg-6">
                                        <h3>작품</h3>
                                        <div class="pic1 row">
                                            <span class="col-lg-2">
                                            <a class="page-link" href="#" aria-label="Previous" style="top: 5rem;">
                                                <span aria-hidden="true"><i class="fas fa-angle-left"></i></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            </span>

                                            <span class="col-lg-8">
                                                <img class="ment-pic" src="img/basket5.jpg" style="height: 200px; width: 200px;">
                                            </span>

                                            <span class="col-lg-2">
                                            <a class="page-link" href="#" aria-label="next"  style="top: 5rem;">
                                                <span aria-hidden="true"><i class="fas fa-angle-right"></i></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                            </span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-lg-6">
                                        <h3>자격증</h3>
                                        <div class="pic1 row">
                                            <span class="col-lg-2"><a class="page-link" href="#" aria-label="Previous"  style="top: 5rem;">
                                                    <span aria-hidden="true"><i class="fas fa-angle-left"></i></span>
                                                    <span class="sr-only">Previous</span>
                                                </a></span>

                                            <span class="col-lg-8">
                                                <img class="ment-pic" src="img/basket3.jpg" style="height: 200px; width: 200px;">
                                            </span>

                                            <span class="col-lg-2"><a class="page-link" href="#" aria-label="next" style="top: 5rem;">
                                                    <span aria-hidden="true"><i class="fas fa-angle-right" ></i></span>
                                                    <span class="sr-only">Next</span>
                                                </a></span>
                                        </div>
                                    </div>
                            </div>
                            <button type="button" class="btn btn-primary" id="mas-p1">승락</button>
                            <button type="button" class="btn btn-primary" id="mas-p2">거절</button>
                        </div>

                    </div>
                </div>
            </div>
                                
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

                </div>
            </div>


            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-12" id="btn">
                        <button type="button" class="btn btn-primary" id="mas-btn">멘토 신청 반려</button>
                    </div>
                </div>
            </div>

            
            

        </div><!-- 메인 row-->
    </div><!-- 메인 container-->


</body>

</html>