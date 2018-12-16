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
<title>관리자 페이지</title>

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

<style type="text/css">
li.active {
    position: relative !important;
    -ms-flex: 0 1 auto !important;
    flex: 0 1 auto !important;
    width: 30px !important;
    height: 3px !important;
    margin-right: 3px !important;
    margin-left: 3px !important;
    text-indent: -999px !important;
    cursor: pointer !important;
    background-color: rgba(255,181,60,1) !important;
    border: 1px solid rgba(255,181,60,1) !important;
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
                            <li><a onclick="location.href='dashBoard'" data-nav-section="1">메인
                                    화면 </a></li>
                                    <li><a
                                onclick="location.href='csList'"
                                data-nav-section="10">문의 목록 </a></li>
                            <li><a onclick="location.href='mentorreqlist'" data-nav-section="2" style=" color: #2c98f0; font-weight:bold;">멘토
                                    등록</a></li>
                            <li><a onclick="location.href='classreqlist'" data-nav-section="3">클래스
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

                <section class="colorlib-services" data-section="2">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <h1 class="colorlib-heading">멘토 등록</h1>

                            <!-- 게시판 시작-->
                            <div class="col-lg-12">
                        <div class="col-lg-5 mb-3" id="serch-men" style="position:relative; float:right;">
                            <form action="#" method="get">
                                <div class="input-group">
                                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                    <input class="form-control" id="system-search" name="q" placeholder="Search for" required style="height:48px; font-size:20px;">
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-default" style="border:1px solid silver;"><i class="fas fa-search fa-3x" ></i></button>
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
                                                <td></td>
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
            
            <div id="popup${i.count}" class="overlay">
                <div class="popup">
                    <h2> 멘토 신청 상세</h2>
                    <a class="close" href="#">×</a>
                    <div class="content">
                        <br />

                        <div class="col-lg-12">
                            <div class="row">
                                    <div class="col-lg-5">
                                        <img class="ment-pic" src="${ml.phot}">
                                    </div>

                                    <div class="col-lg-7">
                                        <ul class="pop-in">
                                            <li><span style="font-size: 16px;"><i class="fas fa-star-of-life mr-3"></i>닉네임(이름):</span>
                                            <span class="pop-type ml-5">${ml.nick}(${ml.name})</span></li>
                                            <li><span style="font-size: 16px;"><i class="fas fa-star-of-life mr-3"></i>휴대전화: </span>
                                            <span class="pop-type">${ml.phone}</span></li>
                                            <li><span style="font-size: 16px;"><i class="fas fa-star-of-life mr-3"></i>출금계좌: </span>
                                            <span class="pop-type">${ml.bkname}</span></li>
                                            <li><span style="font-size: 16px;"><i class="fas fa-star-of-life mr-3"></i>계좌번호: </span>
                                            <span class="pop-type">${ml.bkno}</span></li>
                                            <li><span style="font-size: 16px;"><i class="fas fa-star-of-life mr-3"></i>분야: </span>
                                            <span class="pop-type">
                                            <c:forEach items="${ml.mentorTag}" var="mt" varStatus="m">
                                                ${mt.name}
                                                <c:if test="${!m.last}">
                                                    ,
                                                </c:if>
                                            </c:forEach>
                                            </span></li>
                                            <li><span style="font-size: 16px;"><i class="fas fa-star-of-life mr-3"></i>경력: </span>
                                            <span class="pop-type">${ml.carr}</span></li>
                                        </ul>
                                    </div>
                            </div><!-- popup row-->
                        </div><!-- popup container -->

                    <div class="col-lg-12 mt-5">
                        <div class="row">
                            <div class="col-lg-6 mx-auto">
                                       <h3>작품</h3>
                                       <div class="pic1">
                                           <div id="carousel-Create${i.index}" class="carousel slide" data-ride="carousel">
                                          <ol class="carousel-indicators">
                                          <c:forEach items="${ml.mentorFile}" var="mlFile" varStatus="j">
                                          <c:if test="${j.index == 0}">
                                          <li data-target="#carousel-Create${i.index}" data-slide-to="${j.index}" class="active"></li>
                                          </c:if>
                                          <c:if test="${j.index != 0}">
                                          <li data-target="#carousel-Create${i.index}" data-slide-to="${j.index}"></li>
                                          </c:if>
                                          
                                            
<%--                                             <li data-target="#carousel-Create${i.index}" data-slide-to="1"></li> --%>
<%--                                             <li data-target="#carousel-Create${i.index}" data-slide-to="2"></li> --%>
                                          </c:forEach>
                                          </ol>
                                          <div class="carousel-inner">
                                          
                                          <!-- 팝업 - 멘토 작품파일 -->
                                          <c:forEach items="${ml.mentorFile}" var="mlFile" varStatus="j">
                                          <!-- 팝업 - 멘토 작품파일 - 첫째 사진만 active하기위한 choose(if) -->
                                          <c:choose>
                                            <c:when test="${j.index eq 0}">
                                              <div class="carousel-item active">
                                            </c:when>
                                            <c:otherwise>
                                              <div class="carousel-item">
                                            </c:otherwise>
                                          </c:choose>
                                              <img style="width:100%; height:50%; display:block;"
                                              src="${mlFile.mfname}" alt="slide_${j.count}"
                                              onclick="window.open('${mlFile.mfname}','_blank','toolbar=no,location=no,status=no,menubar=no, scrollbars=auto,resizable=no,directories=no, width=1024,height=768, top=10,left=10')">
                                            </div>
                                          </c:forEach>
                                          </div>
                                          
                                          <a class="carousel-control-prev" href="#carousel-Create${i.index}" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                          </a>
                                          <a class="carousel-control-next" href="#carousel-Create${i.index}" role="button" data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                          </a>
                                        </div>
                                       </div>
                                   </div>
                                   
                                   
                                   <div class="col-lg-6 mx-auto">
                                       <h3>자격증</h3>
                                       <div class="pic1">
                                           <div id="carousel-Certificate${i.index}" class="carousel slide" data-ride="carousel">
                                          <ol class="carousel-indicators">
                                            <li data-target="#carousel-Certificate${i.index}" data-slide-to="0" class="active"></li>
                                            <li data-target="#carousel-Certificate${i.index}" data-slide-to="1"></li>
                                            <li data-target="#carousel-Certificate${i.index}" data-slide-to="2"></li>
                                          </ol>
                                          <div class="carousel-inner">
                                          <!-- 팝업 - 멘토 자격증 -->
                                          <c:forEach items="${ml.mentorLicense}" var="mlLicense" varStatus="k">
                                          <!-- 팝업 - 멘토 자격증 - 첫째 사진만 active하기위한 choose(if) -->
                                          <c:choose>
                                            <c:when test="${k.index eq 0}">
                                              <div class="carousel-item active">
                                            </c:when>
                                            <c:otherwise>
                                              <div class="carousel-item">
                                            </c:otherwise>
                                          </c:choose>
                                              <img style="width:100%; height:50%; display:block;"
                                              src="${mlLicense.phot}" alt="slide_${k.count}"
                                              onclick="window.open('${mlLicense.phot}','_blank','toolbar=no,location=no,status=no,menubar=no, scrollbars=auto,resizable=no,directories=no, width=1024,height=768, top=10,left=10')">
                                              <div class="carousel-caption d-none d-md-block">
                                                <h5 style="background: rgba(110, 110, 110, 0.7);">${k.count}. ${mlLicense.lname}</h5>
                                              </div>
                                            </div>
                                          </c:forEach>
                                          </div>
                                          <a class="carousel-control-prev" href="#carousel-Certificate${i.index}" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                          </a>
                                          <a class="carousel-control-next" href="#carousel-Certificate${i.index}" role="button" data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                          </a>
                                        </div>
                             </div>
                         </div>
                         </div>
                         
                            </div>
                            <br/>
                            <button type="button" class="btn btn-primary" id="mas-p1" name="Y" value="${ml.no}" onclick="stat(value,name)">승락</button>
                            <button type="button" class="btn btn-primary" id="mas-p2" name="N" value="${ml.no}" onclick="clickN(${ml.no })">거절</button>
                       
                       
                       <div>
                        <textarea id="reje${ml.no }" style=" display:none; position:relative; margin-top:5%; left:2%; top:100%; resize:none; width:400px;" rows="2" placeholder="거절사유를 입력해주세요"></textarea>
                        <button type="button" id="menty${ml.no}"  class="btn btn-primary btn-sm" style=" display:none; position:relative; left:5%; top:30%" onClick="anserclick(${ml.no})">확인</button>
                        </div>
                        </div>
                        

                    </div>
                </div>
            </div>
                                
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


                            <!-- <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-12" id="btn">
                                        <button type="button"
                                            class="btn btn-primary"
                                            id="mas-btn"
                                            onclick="checkItem()">멘토
                                            등록 반려</button>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>
                </section>
            </div>
            <!-- wrap -->
        </div>
    </div>
    <footer>
            <div class="col px-0" style="z-index:10000;">
                <jsp:include page="../footer.jsp"></jsp:include>
            </div>
        </footer>

<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
function clickN(no){
    if($("#reje"+no).css("display") == "none"){
        $("#reje"+no).show();
        $("#menty"+no).show();
        
    }else{
        $("#reje"+no).hide();
        $("#menty"+no).hide();
    }
}

// 거절 버튼 누르기
function anserclick(no){
    var anserfn = $("#reje"+no).val();
    var statno = "N";
    
    $.ajax({
        type: "POST",
        data: {
            "meno": no,
            "stat":statno,
            "note":anserfn
        },
        url: "mtnote.do",
        success: function(){
            
            $.ajax({
                type: "POST",
                data: {
                    "type": "멘토신청거절",
                    "conts" : "멘토신청이 거절되었습니다. (사유: "+anserfn+")",
                    "urlno" : 90000,
                    "url" : "../mypage/mypage#menu1",
                    "meno" : no,
                    "stat" : "N"
                },
                url: "../masterpage/addNotice.do",
                success : function() {
		            location.href='mentorreqlist';
                }
            });
            
        },error : function(error,status){
            swal({
                text : "이미 확인한 멘토 입니다.",
                button : "확인"
              }) 
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
        success : function(){
            $.ajax({
                type: "POST",
                data: {
                    "type": "멘토신청승인",
                    "conts" : "축하합니다! 멘토신청이 승인되었습니다",
                    "urlno" : 90000,
                    "url" : "../mypage/mypage#menu1",
                    "meno" : no,
                    "stat" : "N"
                },
                url: "../masterpage/addNotice.do",
                success : function() {
		            location.href="#"
                    }
            });
            
        }
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