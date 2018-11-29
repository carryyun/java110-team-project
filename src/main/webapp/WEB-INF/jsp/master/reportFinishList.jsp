<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
                            <th class="text-center">No</th>
                            <th class="text-center">최근 신고 날짜</th>
                            <th class="text-center">회원 ID</th>
                            <th class="text-center">회원 닉네임</th>
                            <th class="text-center">신고 누적 횟수</th>
                            <th class="text-center">상세보기</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${ReportList}" var="rl" varStatus="i">
                        <tr>
                            <td class="text-center">${i.count}</td>
                            <td class="text-center">${rl.rtdt}</td>
                            <td class="text-center">${rl.mentee2Email}</td>
                            <td class="text-center">${rl.mentee2Nick}</td>
                            <td class="text-center">${rl.cnt}</td>
                            <td class="text-center"><button id="block-cho" name="${rl.meno2}" onclick="location.href='#popup${rl.meno2}'" >상세 보기</button></td>
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
        <c:forEach items="${ReportList}" var="rl" varStatus="i">
            
            <div id="popup${rl.meno2}" class="overlay">
                <div class="popupH">
                    <h2> 신고 누적 목록</h2>
                    <a class="close" href="#">×</a>
                    <div class="content">
                        <br />
                        <div class="container">
                            <div class="row">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th width="5%">No</th>
                                            <th width="10%">신고자</th>
                                            <th width="8%">분류</th>
                                            <th width="13%">유형</th>
                                            <th width="16%">제목</th>
                                            <th width="18%">내용</th>
                                            <th width="15%">URL</th>
                                            <th width="15%">신고날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${rl.finishlist}" var="fl" varStatus="j">
                                        <tr>
                                            <td>${j.count}</td>
                                            <td>${fl.mentee2Nick}</td>
                                            <td>${fl.type}</td>
                                            <td>${fl.type_detail}</td>
                                            <td>${fl.titl}</td>
                                            <td>
                                            <c:choose>
                                                <c:when test="${fn:length(fl.conts) >10}">
                                                  <a class="button" style="color: #007bff;cursor: pointer;" onclick="viewConts('#visible${j.index}');">
                                                  ${fn:substring(fl.conts,0,10)} ...
                                                  </a>
                                                </c:when>
                                                <c:otherwise>
                                                  ${fl.conts}
                                                </c:otherwise>
                                            </c:choose>
                                            </td>
                                            <td><a href="${fl.url}">${fl.url}</a></td>
                                            <td>${fl.rtdt}</td>
                                        </tr>
                                        <tr id="visible${j.index}" style="display: none">
                                            <td colspan="2">내용</td>
                                            <td colspan="6">${fl.conts}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div><!-- popup row-->
                        </div><!-- popup container -->

                    </div>
                </div>
            </div>
            </c:forEach>
        

        </div><!-- 메인 row-->
    </div><!-- 메인 container-->


</body>
<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
function viewConts(visibleTr) {
    var curVisible = $(visibleTr).css('display');
    if(curVisible == "none"){
        $(visibleTr).css('display', 'table-row');
    }else{
        $(visibleTr).css('display', 'none');
    }
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
</html>