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
    <!-- <link href="css/master-allpro.css" rel="stylesheet"> -->

</head>

<body>

            <!-- 게시판 시작-->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-lg-offset-12">
                        <p>
                            <span style="font-size: 45px; position: relative; right;"><strong>주문 내역</strong></span>
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

            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <br />
                        <br />
                        <table class="table table-list-search">
                            <thead>
                                <tr>
                                    <th class="text-center">No</th>
                                    <th class="text-center">카테고리</th>
                                    <th class="text-center">상품명</th>
                                    <th class="text-center">구매자</th>
                                    <th class="text-center">판매자</th>
                                    <th class="text-center">가격</th>
                                    <th class="text-center">결제일</th>

                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${productOrderList}" var="pl" varStatus="i">
                                <tr>
                                    <td class="text-center">${i.count}</td>
                                    <td class="text-center">${pl.stname}</td> <!-- 카테고리 -->
                                    <td class="text-center"><a class="button" href="#">${pl.prdt_titl}</a></td> <!-- 상품명 -->
                                    <td class="text-center">${pl.mete_nick}</td><!-- 구매자 -->
                                    <td class="text-center">${pl.mete2_nick}</td><!-- 판매자 -->
                                    <td class="text-center">￦${pl.prdt_pric}</td><!-- 가격 -->
                                    <td class="text-center bold">${pl.paydt}</td><!--결제일 -->
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div class="row lg-2" id="page-list1">
                        <div class="col-lg-12">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination" id="page-list">
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
</script>
</html>