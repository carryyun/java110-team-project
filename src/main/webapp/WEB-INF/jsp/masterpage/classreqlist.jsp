<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>관리자 페이지 </title>

<!-- 부트스트랩-->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">

<!-- css -->
<link href="/css/master.css" rel="stylesheet">
<!--<link href="/css/common.css" rel="stylesheet"> -->

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
                        style="background-image: url(/img/1.jpg);"></div>
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
                                    <li><a
                                onclick="location.href='csList'"
                                data-nav-section="10">문의 목록 </a></li>
                            <li><a onclick="location.href='mentorreqlist'" data-nav-section="2">멘토
                                    등록</a></li>
                            <li><a onclick="location.href='classreqlist'" data-nav-section="3" style=" color: #2c98f0; font-weight:bold;">클래스
                                    등록</a></li>
                            <li><a onclick="location.href='reportList'" data-nav-section="4">신고
                                    접수 목록</a></li>
                            <li><a onclick="location.href='reportFinishList'" data-nav-section="5">신고
                                    완료 목록</a></li>
                            <li><a onclick="location.href='prdtList'" data-nav-section="6">전체
                                    상품 목록</a></li>
                            <li><a onclick="location.href='classList'" data-nav-section="7">전체
                                    클래스 목록 </a></li>
                            <li><a onclick="location.href='prodOrderList'" data-nav-section="8">상품 주문
                                    내역</a></li>
                                    <li><a onclick="location.href='classOrderList'" data-nav-section="9">
                                    클래스 신청 내역 </a></li>
                        </ul>
                    </div>
                </nav>

            </aside>
            <div id="colorlib-main">

                <section class="colorlib-skills" data-section="3">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h2 class="colorlib-heading">클래스 등록</h2>
                            <hr />



                            <!-- 게시판 시작-->
                            <div class="col-lg-12">
                        <div class="col-lg-5 mb-3" id="serch-men" style="position:relative; float:right;">
                            <form action="#" method="get">
                                <div class="input-group">
                                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                    <input class="form-control" id="system-search" name="q" placeholder="Search for" required>
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-default"><i class="fas fa-search fa-3x"></i></button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>

                            <div class="col-lg-12">
                                <div class="row">
                                    <table
                                        class="table table-list-search">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th class="text-center">No</th>
                                                <th class="text-center">멘토이름</th>
                                                <th class="text-center">클래스명</th>
                                                <th class="text-center">분야</th>
                                                <th class="text-center">신청일</th>
                                                <th class="text-center">상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                            <c:forEach items="${ClassRequestList}" var="cl" varStatus="i">
                                <tr id="rmv${cl.no}">
                                    <td class="text-center"><input type="checkbox" id="men-ck" class="men-ck" name="men-ck" value="${cl.no}"></td>
                                    <td class="text-center">${i.count}</td>
                                    <td class="text-center">${cl.mentee.name}(${cl.mentee.nick })</td><%-- ${cl.nick}(${cl.name}) --%>
                                    <td class="text-center"><a class="button" href="../masterpage/detail?no=${cl.no }">${cl.titl}</a></td>
                                    <td class="text-center">${cl.middleTag.name}</td>
                                    <td class="text-center">${cl.rgdt}</td>
                                    <td class="text-center">
                                    <c:choose>
                                      <c:when test="${cl.stat eq 'I'}">미처리</c:when>
                                      <c:when test="${cl.stat eq 'Y'}">승인</c:when>
                                      <c:when test="${cl.stat eq 'N'}">반려</c:when>
                                      <c:otherwise>관리자문의</c:otherwise>
                                    </c:choose>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

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
                                        <button type="button"
                                            class="btn btn-primary"
                                            id="mas-btn"
                                            onclick="checkItem()">클래스
                                            등록 반려</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <!-- wrap -->
        </div>
    </div>
</body>
<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
$(document).ready(function() {
    var activeSystemClass = $('.list-group-item.active');
    //something is entered in search form
    $('#system-search').keyup( function() {
       var that = this;
        // affect all table rows on in systems table
        var tableBody = $('.table-list-search tbody');
        var tableRowsClass = $('.table-list-search tbody tr');
        $('.search-sf').remove();
        tableRowsClass.each( function(i, val) {
        
            //Lower text for case insensitive
            var rowText = $(val).text().toLowerCase();
            var inputText = $(that).val().toLowerCase();
            if(inputText != '')
            {
                $('.search-query-sf').remove();
                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
                    + $(that).val()
                    + '"</strong></td></tr>');
            }
            else
            {
                $('.search-query-sf').remove();
            }
            if( rowText.indexOf( inputText ) == -1 )
            {
                //hide rows
                tableRowsClass.eq(i).hide();
                
            }
            else
            {
                $('.search-sf').remove();
                tableRowsClass.eq(i).show();
            }
        });
        //all tr elements are hidden
        if(tableRowsClass.children(':visible').length == 0)
        {
            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
        }
    });
});
var stopHref = function(event) {
event.stopPropagation();
}
var fadeTime = 200;
function stat(no,name){
    removeItem(no)
    $.ajax({
        data : {
            no : no,
            stat : name
        },
        url : "clsstat.do",
        success : location.href="#"
        
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
function checkItem(){
    var arr = new Array();
    var check = $('input:checkbox:checked.men-ck').map(function(){
        return this.value; }).get().join(",");
    arr=check.split(',');
    for(i in arr){
        stat(arr[i],'N');
    }
    
}
</script>
</html>