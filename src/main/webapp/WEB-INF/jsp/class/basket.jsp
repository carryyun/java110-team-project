<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%-- 부트스트랩 --%>
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<%-- css --%>
<link href="/css/basketclass.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">

<%-- js --%>
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="/js/basketclass.js"></script> 

</head>

<body>
    <div id="wrap" style="background-color: #fff">
        <div class="col" style="position: absolute; height: 105px; background-color: white">
            <!-- 헤더 배경색 적용 -->
        </div>

        <div class="container">
            <div class="row">
                <div class="col" style="position: absolute; height: 105px; background-color: white">
                    <!-- 헤더 배경색 적용 -->
                </div>

                <div class="col-lg-12" style="z-index: 100">
                    <jsp:include page="../headerMain.jsp"></jsp:include>
                </div>

                <!-- 카테고리 nav (스크립트로 임시 inclue) -->
                <div class="col-lg-12">
                    <jsp:include page="../headerNav.jsp"></jsp:include>
                </div>

                <!-- 버튼 -->

                <div class="col-lg-12 mt-5">
                    <div class="row">
                        <div class="main-btn col-lg-6 text-left">
                            <button type="button" class="btn btn-outline-secondary btn-lg"  onclick="location.href='/app/class/basket'" style="background-color:whitesmoke; color: black;">장바구니(클래스)</button>
                            <button type="button" class="btn btn-outline-secondary btn-lg" id="btn-cl"
                                onclick="location.href='/app/product/basket'">장바구니(공예품)</button>
                        </div>
                        <div class="col-lg-6 text-right">
                            <span style="font-size: 22px; float: right;"> <span><strong>></strong>완료</span></span> <span
                                style="font-size: 22px; float: right;"> <span><strong>></strong>결제</span></span> <span
                                style="font-size: 22px; color: Dodgerblue; float: right;">장바구니</span>
                        </div>
                    </div>


            <!-- 장바구니 시작-->

                    <div class="col-lg-12 mt-5">
                        <table class="table table-overed">

                            <thead>
                                <tr class="d-flex">
                                    <th class="col-6 text-center">상품</th>
                                    <th class="col-2 text-center">날짜</th>
                                    <th class="col-1 text-center">시작시간</th>
                                    <th class="col-2 text-center">결제금액</th>
                                    <th class="col-1"> </th>
                                </tr>

                            </thead>

                            <tbody>
                            <c:forEach items="${basketList}" var="r" varStatus="i">
                                <tr class="product d-flex">
                                    <td class="col-6">
                                        <div class="media">
                                            <a class="thumbnail pull-left" href="../class/detail?no=${r.classes.no}"> <img class="media-object" src="${r.classes.cfile}" style="width: 100px; height: 100px;"> </a>
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="../class/detail?no=${r.classes.no}">${r.classes.titl}</a></h4>
                                                <h5 class="media-heading"> 멘토 : ${r.mentorNick}</h5>
                                                <span></span><span class="text-warning"><strong>당일 취소 불가</strong></span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-quantity col-2 text-center"><strong>${r.timetable.date }</strong></td>
                                    <td class="product-price col-1 text-center"><strong>${r.timetable.stime }</strong></td>
                                    <td class="product-line-price col-2 text-center">${r.classes.pric }</td>
                                    <td class="product-removal col-1" id="del-button">
                                        <button type="button" class="btn btn-danger" value=${r.no } >삭제
                                        </button>

                                    </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>

                        <!-- 계산 -->
                            <div class="row">
                                <div class="total col-lg-12">
                                    <div class="totals">
                                        <div class="totals-item totals-item-total">
                                            <label> 최종 결제 금액</label>
                                            <c:forEach items="${sumList }" var="r" varStatus="i">
                                            <div class="totals-value" id="cart-total">${r.sum }</div>
                                            </c:forEach>
                                        </div>
                                    </div>

                                    <div class="btn-all">
                                        <button class="checkout btn btn-light">장바구니 결제</button>
                                    </div>

                                </div><!-- 계산 12-->
                            </div><!-- 계산 row-->

                    </div>

        </div><!-- main row-->
    </div><!-- main container-->
    </div>
        <footer>
            <div class="col px-0">
                <jsp:include page="../footer.jsp"></jsp:include>
            </div>
        </footer>
</div>
</body>
</html>