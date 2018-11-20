<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%-- 부트스트랩 --%>
<link
    href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    rel="stylesheet" id="bootstrap-css">
<script
    src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
    src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<%-- 아이콘  --%>
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">

<%-- css --%>
<link href="/css/classLike.css" rel="stylesheet">

<%-- js --%>
<script src="/js/classLike.js"></script>


</head>
<body>
<body style="background-color: #F2F4F7">

    <div class="container">
        <hr color="black" />
        <br>
        <div class="row">

            <!-- 버튼 -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-lg-offset-12">
                        <p>
                            <span
                                style="font-size: 45px; position: relative;">찜
                                클래스<span style=""><i
                                    class="fa fa-cog fa-spin fa-fw"></i>
                            </span>
                            </span>
                        </p>
                    </div>
                </div>
            </div>

            <!-- 장바구니 시작-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-md-offset-12">
                        <table class="table table-hover">
                            <thead>
                                <tr class="d-flex">
                                    <th class="col-8 text-center">상품</th>
                                    <th class="col-2 text-center">가격</th>
                                    <th class="col-2"> </th>
                                </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${likeList }" var="r">
                                <tr class="main d-flex">
                                    <td class=" col-8">
                                        <div class="media">
                                            <a
                                                class="thumbnail pull-left"
                                                href="#"> <img
                                                class="media-object"
                                                src="${r.classes.cfile }"
                                                style="width: 100px; height: 100px;">
                                            </a>
                                            <div class="media-body">
                                                <h4
                                                    class="media-heading">
                                                    <a href="#">${r.classes.titl }</a>
                                                </h4>
                                                <h5
                                                    class="media-heading">
                                                    멘토: <span>${r.mentorNick }</span>
                                                </h5>
                                                <span></span><span
                                                    class="text-warning"><strong>당일
                                                        취소 불가</strong></span>
                                            </div>
                                        </div>
                                    <td class="col-2 text-center"><strong>${r.classes.pric }</strong></td>
                                    <td class="col-2 "><button type="button" class="btncancel btn btn-outline-dark" value=${r.no } >찜
                                                취소
                                        </button></td>
                                </tr>
                                </c:forEach>



                                <tr class="d-flex">
                                    <td class="col-8"> </td>
                                    <td class="col-2"> </td>

                                    <td class="col-2"><span
                                        class="glyphicon glyphicon-play"><a href="#" class="btn btn-outline-dark" role="button">페이지로
                                                이동</a></span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <!-- 장바구니 row-->
            </div>
            <!-- 장바구니 container-->


        </div>
        <!-- main row-->
    </div>
    <!-- main container-->
</body>
</html>