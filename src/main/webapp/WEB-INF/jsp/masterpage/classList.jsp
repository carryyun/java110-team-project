<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>관리자 페이지 </title>

    <!-- 필수-->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

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
<!-- css -->
    <link href="/css/master.css" rel="stylesheet">
<!-- MAIN JS -->
<script src="/js/masterpagejs/main.js"></script>
<script src="/js/masterpagejs/bootstrap.min.js"></script>
<link href="/css/common.css" rel="stylesheet">
<style type="text/css">
a.nav-link{
    transition:none;
}
</style>
<style>
#colorlib-aside {
    overflow: hidden;
    position: absolute;
}

#th-pay th, #tb-pay td {
    vertical-align: middle;
    text-align: center
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
                                data-nav-section="2">멘토 등록</a></li>
                            <li><a
                                onclick="location.href='classreqlist'"
                                data-nav-section="3">클래스 등록</a></li>
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
                                data-nav-section="7" style=" color: #2c98f0; font-weight:bold;">전체 클래스 목록 </a></li>
                            <li><a
                                onclick="location.href='prodOrderList'"
                                data-nav-section="8">상품 주문 내역</a></li>
                            <li><a onclick="location.href='classOrderList'" data-nav-section="9">
                                    클래스 신청 내역 </a></li>
                        </ul>
                    </div>
                </nav>
            </aside>

            <div id="colorlib-main">

                <section class="colorlib-experience" data-section="7">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h1 class="colorlib-heading">전체 클래스 목록</h1>
                            <!-- 게시판 시작-->
                            <div class="col-lg-12">
                                <div class="col-lg-4" id="serch-men">
                                    <form action="#" method="get">
                                        <div class="input-group">
                                            <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                            <input class="form-control" style="height:48px; font-size:20px;"
                                                id="system-search"
                                                name="q"
                                                placeholder="Search for"
                                                required> <span
                                                class="input-group-btn">
                                                <button type="submit"
                                                    class="btn btn-default" style="border:1px solid silver;">
                                                    <i class="fas fa-search fa-3x" ></i>
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
                                                <th class="text-center">No</th>
                                                <th class="text-center">카테고리</th>
                                                <th class="text-center">클래스명</th>
                                                <th class="text-center">멘토</th>
                                                <th class="text-center">가격(원)</th>
                                                <th class="text-center">등록일</th>

                                            </tr>
                                        </thead>
                                        <tbody id="masterCla">
                                            <c:forEach
                                                items="${findAllByList}"
                                                var="pl" varStatus="i">
                                                <tr>
                                                    <td
                                                        class="text-center">${i.count}</td>
                                                    <!-- No -->
                                                    <td
                                                        class="text-center">${pl.middleTag.name}</td>
                                                    <!-- 카테고리  -->
                                                    
                                                    <c:set var="TextValue" value="${pl.titl }"/>
                                                    <td
                                                        class="text-center"><a
                                                        class="button"
                                                        href="../class/detail?no=${pl.no }">${fn:substring(TextValue,0,25) }</a></td>
                                                    <!-- 클래스명 -->
                                                    <td
                                                        class="text-center">${pl.mentee.nick}</td>
                                                    <!-- 멘토명 -->
                                                    <td
                                                        class="text-center"><fmt:formatNumber value="${pl.pric}" groupingUsed="true"/></td>
                                                    <!-- 가격 -->
                                                    <td
                                                        class="text-center bold">${pl.rgdt}</td>
                                                    <!-- 등록일 -->
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>

                            <div class="row lg-2" id="page-list1"
                                style="margin: auto;">
                                <div class="col-lg-12">
                                    <nav
                                        aria-label="Page navigation example">
                                        <ul class="pagination"
                                            id="page-list">
                                            <li class="page-item">
                                                <a class="page-link"
                                                href="#"
                                                aria-label="Previous">
                                                    <span
                                                    aria-hidden="true">«</span>
                                                    <span
                                                    class="sr-only">Previous</span>
                                            </a></li>
                                            <c:set var="clacount" value="${countList}"/>
                                            <% int claco = (int)pageContext.getAttribute("clacount");
                                            int clad = claco/10;
                                            int clapage = (int)Math.ceil(clad)+1;
                                            
                                            
//                                             for(int clao=1; clao<=clapage; clao++){
                                            if(clapage>5) clapage =5;
                                            for(int clao=1; clao<=clapage ; clao++){
                                            %>
                                            <li class="page-item"><a
                                                class="page-link"
                                                onclick="clapage(<%=clao%>)"><%=clao%></a></li>
                                                <%} %>
                                                
                                            <li class="page-item">
                                                <a class="page-link"
                                                href="#"
                                                aria-label="Next"> <span
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
                    </div>
                </section>
            </div>
        </div>
    </div>
    <footer>
            <div class="col px-0" style="z-index:10000;">
                <jsp:include page="../footer.jsp"></jsp:include>
            </div>
        </footer>



</body>

<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script>

function addComma(num) {
    var regexp = /\B(?=(\d{3})+(?!\d))/g;
    return num.toString().replace(regexp, ',');
  }

function clapage(clao){
    var masterCla = $("#masterCla");
    
    $.ajax({
        type: "POST",
        data:{
            pageNo: clao
        },
        url: "claPage.do",
        success: function(data){
            var html = "";
            for(var i in data){
                var mtagname = data[i].middleTag.name;
                var str = data[i].titl;
                var titl = str.substring(0,25); 
                var nick = data[i].mentee.nick;
                var pric = data[i].pric;
                var rgdt = data[i].rgdt;
                
                var newrgdt = new Date(rgdt);
                
                var dd = newrgdt.getDate();
                var mm = newrgdt.getMonth();
                var yy = newrgdt.getFullYear();
                
                if(dd < 10){
                    dd = '0' + dd;
                }
                if(mm < 10){
                    mm = '0' + mm;
                }
                
                newrgdt = yy+'-'+mm+'-'+dd;
                
                html += '<tr>'
                html += '<td class="text-center">'+((clao-1)*10+(parseInt(i)+1))+'</td>'
                html += '<td class="text-center">'+mtagname+'</td>'
                html += '<td class="text-center"><a class="button" href="../class/detail?no='+i+'">'+titl+'</a></td>'
                html += '<td class="text-center">'+nick+'</td>'
                html += '<td class="text-center">'+addComma(pric)+'</td>'
                html += '<td class="text-center bold">'+newrgdt+'</td>'
                html += '</tr>'
            }
            masterCla.html(html);
        }
    });
}

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
</script>

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
</html>