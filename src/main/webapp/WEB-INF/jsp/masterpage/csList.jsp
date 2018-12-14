<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                                data-nav-section="10" style=" color: #2c98f0; font-weight:bold;">문의 목록 </a></li>
                            <li><a
                                onclick="location.href='mentorreqlist'"
                                data-nav-section="2">멘토 등록</a></li>
                            <li><a
                                onclick="location.href='classreqlist'"
                                data-nav-section="3">클래스 등록</a></li>
                            <li><a
                                onclick="location.href='reportList'"
                                data-nav-section="4" >신고 접수 목록</a></li>
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
                                data-nav-section="8">상품 주문 내역</a></li>
                                <li><a onclick="location.href='classOrderList'" data-nav-section="9">
                                    클래스 신청 내역 </a></li>
                        </ul>
                    </div>
                </nav>

            </aside>

            <div id="colorlib-main">

                <section class="colorlib-experience" data-section="10">
                    <div class="colorlib-narrow-content">
                        <div class="row">

                            <div class="about-desc">

                                <h1 class="colorlib-heading">문의 목록</h1>

                                <div class="col-lg-12">
                                    <div class="col-lg-5" id="serch-men">
                                        <form action="#" method="get">
                                            <div class="input-group">
                                                <input
                                                    class="form-control"
                                                    id="system-search"
                                                    name="q"
                                                    placeholder="Search for"
                                                    required style="height:48px; font-size:20px;"> <span
                                                    class="input-group-btn">
                                                    <button
                                                        type="submit"
                                                        class="btn btn-default" style="border:1px solid silver;">
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
                                                <th class="text-center">No</th>
                                                <th class="text-center">제목</th>
                                                <th class="text-center">문의유형</th>
                                                <th class="text-center">글쓴이</th>
                                                <th class="text-center">질문 등록일</th>
                                                <th class="text-center">답변 유무</th>
                                                <th class="text-center">상세보기</th>
                                            </tr>
                                        </thead>
                                        
                                        <tbody id="masterCs">
                                            <c:forEach
                                                items="${csList}"
                                                var="rl" varStatus="i">
                                                <tr id="rmv${rl.no}">
                                                    <td
                                                        class="text-center">${i.count}</td>
                                                    <c:set var="TextValue" value="${rl.titl}"/>
                                                    <td
                                                        class="text-center">${fn:substring(TextValue,0,10) }</td>
                                                    <td
                                                        class="text-center">${rl.cstype}</td>
                                                    <td
                                                        class="text-center">${rl.mete_name}(${rl.mete_nick})</td>
                                                    <td
                                                        class="text-center">${rl.rgdt}</td>
                                                        <c:set var="yn" value="${rl.anser }"/>
                                                        <% String qna = (String)pageContext.getAttribute("yn"); 
                                                           if(qna == null){
                                                        %>
                                                    <td class="text-center">미완료</td>
                                                    <% }else{ %>
                                                    <td class="text-center">완료</td>
                                                    <%} %>
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
                                            <c:set var="cscount" value="${countList}"/>
                                            <% int csco = (int)pageContext.getAttribute("cscount");
                                            int csd = csco/10;
                                            int cspage = (int)Math.ceil(csd)+1;
                                            
                                            for(int cso=1; cso<=cspage; cso++){
                                              %>
                                              
                                              <li class="page-item"><a
                                                class="page-link"
                                                onclick="cspage(<%=cso%>)"><%=cso%></a></li>
                                              
                                              <%
                                            }
                                            %>
                                            
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
                                <c:forEach items="${csList}" var="rl"
                                    varStatus="i">
                                    <div id="popup${i.index}"
                                        class="overlay">
                                        <div class="popupHH">
                                            <h2>문의 상세 보기</h2>
                                            <a class="close" href="#">×</a>
                                            <div class="content" style="height: auto">
                                                <div class="container"
                                                    style="width: 100%;">
                                                    <div class="row">

                                        <div
                                            class="col-lg-12">
                                            <table
                                                class="table table-bordered"
                                                id="block-tab"
                                                style="list-style-type: none;">
                                                <tbody>
                                                    <tr>
                                                        <td colspan="2"><span style="font-size: 20px;">글쓴이:
                                                        </span>
                                                            <span class="pop-type">${rl.mete_name}(${rl.mete_nick })</span></td>
                                                        <td colspan="3"><span style="font-size: 20px;">문의날짜:
                                                        </span>
                                                            <span class="pop-type">${rl.rgdt}</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="7"><span style="font-size: 20px;">제목:</span>
                                                            <span class="pop-type">${rl.titl}</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="12" style="height: auto"><span style="font-size: 20px;">내용: </span>
                                                            <span class="pop-type">${rl.conts}</span></td>
                                                    </tr>
                                                    <c:set var="yn" value="${rl.anser }" />
                                                    <%
                                                      String qna = (String) pageContext.getAttribute("yn");
                                                        if (qna != null) {
                                                    %>
                                                    <tr>
                                                        <td colspan="12" style="height: auto; font-weight: bold;"><span style="font-size: 20px;">답변:</span>
                                                            <span class="pop-type">${rl.anser }</span></td>
                                                    </tr>
                                                    <%}%>
                                                </tbody>
                                            </table>
                                        </div>
                                                        <!--  답변 창  -->
                                                        <c:set var="yn2"
                                                            value="${rl.anser }" />
                                                        <% String qna2 = (String)pageContext.getAttribute("yn2");
                                                                   if(qna2 == null){%>
                                                        <div class="col-lg-12">
                                                            <div class="form-group">

                                                                <textarea class="form-control z-depth-1" rows="6" id="anser${i.index}"
                                                                    placeholder="답변 작성하기.." style="width: 100%; border: 1px solid black;"></textarea>
                                                            </div>
                                                        </div>
                                                        <!-- 12 -->
                                                        <div class="col-lg-12">
                                                            <button type="button" class="btn btn-primary" id="mas-p2"
                                                                name="Y" onclick="anserclick(${i.index}, ${rl.no})">답변하기</button>
                                                        </div>
                                                        <%} %>
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
    <footer>
            <div class="col px-0" style="z-index:10000;">
                <jsp:include page="../footer.jsp"></jsp:include>
            </div>
        </footer>
</body>

<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- 181121고친거 -->
<script>

function cspage(cso){
    var masterCs = $("#masterCs");
    
    $.ajax({
        type: "POST",
        data:{
            cspageNo: cso
        },
        url: "csPage.do",
        success: function(data){
            
            var html = "";
            for(var i in data){
                var str = data[i].titl;
                var titl = str.substring(0,25); 
                var cstype = data[i].cstype;
                var name = data[i].mete_name;
                var nick = data[i].mete_nick;
                var rgdt = data[i].rgdt;
                var anser = data[i].anser;
                var no = data[i].no;
                
                var newrgdt = new Date(rgdt);
                
                var dd= newrgdt.getDate();
                var mm= newrgdt.getMonth();
                var yy= newrgdt.getFullYear();
                
                if( dd < 10){
                    dd = '0' + dd;
                }
                if( mm < 10){
                    mm='0' +mm;
                }
                
                newrgdt = yy+'-'+mm+'-'+dd;
               
                html += '<tr id="rmv'+no+'">'
                html += '<td class="text-center">'+(parseInt(i)+1)+'</td>'
                html += '<td class="text-center">'+titl+'</td>'
                html += '<td class="text-center">'+cstype+'</td>'
                html += '<td class="text-center">'+name+'('+nick+')</td>'
                html += '<td class="text-center">'+newrgdt+'</td>'
                         if(anser == null){
                   
                    html += '<td class="text-center">미완료</td>'
                    }else{ 
                        html += '<td class="text-center">완료</td>'
                        } 
                            html += '<td class="text-center"><button class="btn btn-light" id="block-cho"><a class="button" href="#popup'+i+'" style="color:black;">상세보기</a></button></td>'
                    html += '</tr>'
                    
            }
            
            masterCs.html(html);
        }
    })
}

//답변하기 버튼 클릭
function anserclick(index, csno){
    var anserfn = $("#anser"+index).val();

    
    $.ajax({
        type: "POST",
        data: {
            no: csno,
            anser: anserfn
            
        },
        url: "masterans.do",
        success : function() {
           location.href="csList";
            },error : function(error,status){
                swal({
                    text : "이미 답변한 문의이거나 삭제된 문의입니다.",
                    button : "확인",
                  })
            }
    })
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
        url : "masterans.do",
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