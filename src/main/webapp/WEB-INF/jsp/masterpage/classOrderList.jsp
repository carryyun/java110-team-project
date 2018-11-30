<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>

<!-- 필수-->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">

<!-- css -->
<link href="/css/master.css" rel="stylesheet">

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
                            <li><a
                                onclick="location.href='dashBoard'"
                                data-nav-section="1">메인 화면 </a></li>
                                <li><a
                                onclick="location.href='csList'"
                                data-nav-section="10">문의 목록 </a></li>
                            <li><a
                                onclick="location.href='mentorreqlist'"
                                data-nav-section="2">멘토 신청 목록</a></li>
                            <li><a
                                onclick="location.href='classreqlist'"
                                data-nav-section="3">클래스 신청 목록</a></li>
                            <li><a
                                onclick="location.href='reportList'"
                                data-nav-section="4">신고 접수 목록</a></li>
                            <li><a
                                onclick="location.href='reportFinishList'"
                                data-nav-section="5">신고 완료 목록</a></li>
                            <li><a
                                onclick="location.href='prdtList'"
                                data-nav-section="6">전체 상품 목록</a></li>
                            <li><a
                                onclick="location.href='classList'"
                                data-nav-section="7">전체 클래스 목록 </a></li>
                            <li><a
                                onclick="location.href='prodOrderList'"
                                data-nav-section="8"
                                >상품
                                    주문 내역</a></li>
                            <li><a
                                onclick="location.href='classOrderList'"
                                data-nav-section="9" style="color: #2c98f0; font-weight: bold;"> 클래스 신청 목록 </a></li>

                        </ul>
                    </div>
                </nav>

            </aside>

            <div id="colorlib-main">

                <section class="colorlib-experience" data-section="9">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <div class="about-desc">

                                <h2 class="colorlib-heading">클래스 신청 내역</h2>

                                <div class="col-lg-12">
                                    <div class="col-lg-5" id="serch-men">
                                        <form action="#" method="get">
                                            <div class="input-group">
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
                                </div>

                                <div class="col-lg-12">
                                    <br /> <br />
                                    <table
                                        class="table table-list-search">
                                        <thead>
                                                <tr>
                                                    <th
                                                        class="text-center">No</th>
                                                    <th
                                                        class="text-center">카테고리</th>
                                                    <th
                                                        class="text-center">클래스명</th>
                                                    <th
                                                        class="text-center">구매자</th>
                                                    <th
                                                        class="text-center">판매자</th>
                                                    <th
                                                        class="text-center">가격</th>
                                                    <th
                                                        class="text-center">결제일</th>
                                                        <th
                                                        class="text-center">상세보기</th>

                                                </tr>
                                            </thead>
                                        <tbody>
                            <c:forEach
                                                    items="${classOrderList}"
                                                    var="pl"
                                                    varStatus="i">
                                                    <tr>
                                                        <td
                                                            class="text-center">${i.count}</td>
                                                        <td
                                                            class="text-center">${pl.mtname}</td>
                                                        <!-- 카테고리 -->
                                                        <td
                                                            class="text-center">${pl.cls_titl}</td>
                                                        <!-- 클래스명 -->
                                                        <td
                                                            class="text-center">${pl.mete_nick}</td>
                                                        <!-- 구매자 -->
                                                        <td
                                                            class="text-center">${pl.mete2_nick}</td>
                                                        <!-- 판매자 -->
                                                        <td
                                                            class="text-center">￦${pl.cls_pric}</td>
                                                        <!-- 가격 -->
                                                        <td
                                                            class="text-center bold">${pl.paydt}</td>
                                                        <!--결제일 -->
                                                        <td
                                                        class="text-center"><button
                                                            class="btn btn-light" id="block-cho">
                                                            <a
                                                                class="button"
                                                                href="#popup${i.index}" style="color:black;">상세
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


                                <!-- popup-->
                                <c:forEach items="${classOrderList}"
                                    var="pl" varStatus="i">
                                    <div id="popup${i.index}"
                                        class="overlay">
                                        <div class="popupH">
                                            <h2>클래스 신청 내역</h2>
                                            <a class="close" href="#">×</a>
                                            <div class="content">
                                                <br />
                                                <div class="container">
                                                    <div class="row">

                                                        <div
                                                            class="col-lg-12">
                                                            <table
                                                                class="table table-bordered"
                                                                id="block-tab"
                                                                style="list-style-type: none;">
                                                                <tbody>
                                                                    <tr>
                                                                    <td colspan="3"><li><span
                                                                                style="font-size: 20px;">신청번호:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">${pl.no }</span></li></td>
                                                                        <td colspan="3"><li><span
                                                                                style="font-size: 20px;">멘티:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">${pl.mete_name }(${pl.mete_nick})</span></li></td>
                                                                        <td colspan="3"><li><span
                                                                                style="font-size: 20px;">멘토:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">${pl.mete2_name }(${pl.mete2_nick})</span></li></td>
                                                                        <td colspan="3"><li><span
                                                                                style="font-size: 20px;">멘토 연락처:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">${pl.mete2_phone}</span></li></td>
                                                                        
                                                                    </tr>

                                                                    <tr>
                                                                        <td><li><span style="font-size: 20px;">카테고리:
                                                                            </span>
                                                                                <span class="pop-type">${pl.mtname }</span></li></td>
                                                                                <td colspan="5"><li><span style="font-size: 20px;">클래스명:
                                                                            </span>
                                                                            <span class="pop-type">${pl.cls_titl}</span></li></td>
                                                                            <td colspan="2"><li><span style="font-size: 20px;">수업날짜:
                                                                            </span>
                                                                            <span class="pop-type">${pl.timetable.date}</span></li></td>
                                                                            <td colspan="2"><li><span style="font-size: 20px;">수업시간:
                                                                            </span>
                                                                            <span class="pop-type">${pl.timetable.stime}(${pl.time })</span></li></td>
                                                                                
                                                                    </tr>


                                                                    <tr>
                                                                        <td
                                                                            colspan="4"><li><span
                                                                                style="font-size: 20px;">결제방법:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">${pl.payopt}</span></li></td>
                                                                        <td
                                                                            colspan="4"><li><span
                                                                                style="font-size: 20px;">가격:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">${pl.cls_pric}</span></li></td>
                                                                                <td
                                                                            colspan="4"><li><span
                                                                                style="font-size: 20px;">결제일:
                                                                            </span>
                                                                                <span
                                                                                class="pop-type">${pl.paydt}</span></li></td>
                                                                                
                                                                                
                                                                                
                                                                    </tr>
                                                                    
                                                                   
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <!-- 12 -->
                                                        
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
                    </div>
                </section>

            </div>
        </div>
    </div>
</body>

<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- 181121고친거 -->
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
            meno : no,
            stat : name
        },
        url : "mtstat.do",
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