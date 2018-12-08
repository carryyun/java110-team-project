<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%-- 부트스트랩 --%>
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<%-- 아이콘  --%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">

<%-- css --%>
<link href="/css/classLike.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">

</head>
<body>
<div id="wrap" style="background-color: #fff; height: 100%">
        <div class="col-lg-12 px-0"
            style="position: absolute; height: 105px; background-color: white">
            <!-- 헤더 배경색 적용 -->
        </div>
        <div class="col-lg-12 px-0" 
            style="position: absolute; top:105px; height: 44px; background-color: #f3f3f3">
            <!-- 헤더 배경색 적용 -->
        </div>
	<div class="container" style="margin-bottom: 80px;">
		<div class="row">
			<!-- 버튼 -->
			<div class="col-lg-12" style="z-index: 100">
                <jsp:include page="../headerMain.jsp"></jsp:include>
            </div>

            <!-- 카테고리 nav (스크립트로 임시 inclue) -->
            <div class="col-lg-12 mb-5">
                <jsp:include page="../headerNav.jsp"></jsp:include>
            </div>

			<div class="col-lg-12">
				<p>
					<span style="font-size: 45px; position: relative;">찜클래스<i
						class="fa fa-cog fa-spin fa-fw"></i>
					</span>
				</p>
			</div>


			<!-- 장바구니 시작-->

			<div class="col-lg-12">
				<table class="table table-hover">
					<thead>
						<tr class="d-flex">
							<th class="col-8 text-center">상품</th>
							<th class="col-2 text-center">가격</th>
							<th class="col-2"> </th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${likeList}" var="r">
							<tr class="main d-flex">
								<td class=" col-8">
									<div class="media">
										<a class="thumbnail pull-left" href="../class/detail?no=${r.classes.no}"> <img class="media-object"
											src="${r.classes.cfile }" style="width: 100px; height: 100px;">
										</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="../class/detail?no=${r.classes.no}">${r.classes.titl}</a>
											</h4>
											<h5 class="media-heading">
												멘토 : <span>${r.mentorNick}</span>
											</h5>
											<span></span><span class="text-warning"><strong>당일 취소 불가</strong></span>
										</div>
									</div>
								<td class="col-2 text-center"><strong><fmt:formatNumber value="${r.classes.pric}" groupingUsed="true"/>원</strong></td>
								<td class="col-2 "><button type="button" class="btncancel btn btn-outline-dark"
										value=${r.no }>찜 취소</button></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>

		</div>
		
	</div>
	<footer>
        <div class="col px-0">
            <jsp:include page="../footer.jsp"></jsp:include>
        </div>
    </footer>
    </div>
</body>

<%-- js --%>
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/js/classLike.js"></script>
</html>