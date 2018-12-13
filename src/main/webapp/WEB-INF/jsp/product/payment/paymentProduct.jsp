<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- 부트스트랩 -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//code.jquery.com/jquery-3.3.1.js"></script>

    <!-- CSS -->
    <link href="css/productPayment.css" rel="stylesheet" />
</head>

<body>
<body style="background-color: #F2F4F7"/>
    <!-- 결제 페이지-->
    <div class="container" style="background-color: white;">
        <div class="row">
            <div class="col-lg-12 col-lg-offset-12">

                <!-- 목록 -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <hr style="1px solid black" ; />
                            <p>
                                <span style="font-size: 40px;">주문/결제(상품)</span>
                                <span style="font-size: 22px;  position: relative; left:47%;">
                                    <span>장바구니</span>
                                    <span><Strong> ></Strong></span>
                                </span>

                                <span style="font-size: 22px; color: cadetblue; position: relative; left:48%;">
                                    <span>결제</span>
                                    <span><Strong> ></Strong></span>
                                </span>
                                <span style="font-size: 22px;  position: relative; left:49%;">
                                    <span>완료</span>
                                </span>
                            </p>

                        </div>
                    </div><!-- 목록 row-->
                </div><!-- 목록 container-->

                <!-- 결제 시작-->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <table class="main table table-overed">
                                <thead>
                                    <tr class="d-flex">
                                        <th class="col-2 text-center"></th>
                                        <th class="col-4">상품정보</th>
                                        <th class="col-2 text-center">상품금액</th>
                                        <th class="col-2 text-center">배송비</th>
                                        <th class="col-2 text-center">주문금액</th>
                                    </tr>
                                </thead>

                                <tbody>
                                <c:forEach items="${paymentList}" var="r">
                                    <tr class="d-flex">
                                        <td class="col-2">
                                            <div class="media">
                                                <a class="thumbnail pull-right" href="#"> <img class="media-object" src="" style="width: 110px; height: 110px;"> </a>
                                            </div>
                                        </td>
                                        <td class="col-4">
                                            <div class="product-title">
                                                <div class="info">
                                                    <p class="h2"> 영록이네 멍멍이</p>

                                                    <ul class="list-unstyled">
                                                       <li>판매자: <span><b>영록이</b></span></li>
                                                        <li>수량 <span style="position: relative; float: right;">1개</span></li>
                                                    </ul>
                                                </div>
                                                <hr />
                                                <button type="button" class="btn btn-light">수량변경</button>
                                            </div><!-- product-title -->
                                        </td>
                                        <td class="price col-2 text-center">3000</td>
                                        <td class="del col-2 text-center">2500</td>
                                        <td class="total col-2 text-center"><strong>36000</strong></td>
                                    </tr>
                                    </c:forEach>
                                </tbody>

                                <tfoot>
                                    <tr>
                                        <td>
                                            <div class="tot"><b class="h4">총 주문금액</b><span><em class="h4">36000</em></span></div>
                                        </td>
                                    </tr>
                                </tfoot>

                            </table>
                            <hr/>

                            <!-- 배송지 정보-->
                            <div class="addr">
                                <div class="info_section">
                                    <h4>배송지 정보</h4>
                                    <table class="table table-overed">

                                        <colgroup>
                                            <col style="width:160px;">
                                            <col>
                                        </colgroup>

                                        <tbody>
                                            <tr>
                                                <th scope="row">배송지 선택</th>
                                                <td><button type="button" class="btn btn-light">배송지 변경</button></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">이름</th>
                                                <td><em>영록이</em></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">연락처</th>
                                                <td><em>123-123-1234</em></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">주소</th>
                                                <td><em>(30230) 서울특별시 비트캠프 학원 5층 504호</em></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">배송 메모</th>
                                                <td><input type="text" style="width: 40%" maxlength="40" name="addr-memo" /></td>
                                            </tr>
                                        </tbody>
                                        
                                    </table>
                                    <hr/>
                                </div>
                            </div><!-- addr-->

                            <!-- 결제수단-->
                            <div class="payment">
                                <div class="info_section">
                                    <h4>결제수단</h4>
                                    <table class="table table-overed">

                                        <colgroup>
                                            <col style="width:160px;">
                                            <col>
                                        </colgroup>

                                        <tbody>
                                            <tr>
                                                <th scope="row">결제 방법</th>
                                                <td><input type="radio" checked>네이버페이</td>
                                            </tr>
                                        </tbody>


                                    </table>
                                    <hr/>
                                </div>
                            </div><!-- 결제수단-->
                            
                            <!-- 약관 동의-->
                            <div class="agree">
                                <div class="info_section">
                                    <h4>약관 동의</h4>
                                    <hr/>
                                    <div class="wrap col-lg-12">
                                        <div class="left-box col-lg-8">
                                            <dl>
                                                <dt><input type="checkbox"> 전체 동의하기</dt>
                                                <dd><input type="checkbox"> 개인정보 제3자 제공에 동의합니다.</dd>
                                                <dd><input type="checkbox"> 주문할 상품 설명에 명시된 내용과 사용조건을 확인 하였으며, 취소, 환불규정에 동의합니다.</dd>
                                            </dl>
                                        </div><!-- left box-->
                                        <div class="right-box col-lg-4 text-right">
                                           <div class="total-pay"><em class="h2">총 결제금액</em><p><span><em class="h3">59900</em></span></p></div>
                                           <button class="btn btn-light btn-lg" type="button">취소하기</button>
                                           <button class="btn btn-light btn-lg" type="button">결제하기</button>
                                            
                                        </div><!-- right box-->
                                    </div><!-- wrap-->
                                </div>
                            </div><!-- 결제수단-->


                        </div><!-- 12-->
                    </div><!-- 결제 row-->
                </div><!-- 결제 container-->

            </div><!-- 12-->
        </div><!-- main row-->
    </div><!-- main container-->

</body>

</html>