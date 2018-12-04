<%@page import="bitcamp.java110.cms.domain.Classes"%>
<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="bitcamp.java110.cms.domain.BigTag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Clean Blog - Start Bootstrap Theme</title>

<!-- ===============필수포함=============== -->
<!-- Bootstrap core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">

<link href="/css/owl.carousel.css" rel="stylesheet">
<link href="/css/list.css" rel="stylesheet">
<link href="/css/clean-blog.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">

<!-- ===============필수포함=============== -->

</head>

<body>
	<div id="wrap" style="background-color: #fff">
		<div class="col" style="position: absolute; height: 105px; background-color: white">
			<!-- 헤더 배경색 적용 -->
		</div>

		<div class="container" style="background-color: white">
			<!-- Header (스크립트로 임시 inclue) -->
			<div class="row">
				<div class="col-lg-12" style="z-index: 100">
					<jsp:include page="../headerMain.jsp"></jsp:include>
				</div>

				<!-- 카테고리 nav -->
				<div class="col-lg-12">
					<jsp:include page="../headerNav.jsp"></jsp:include>
				</div>

				<!-- Main Content -->
				<div class="container col-lg-12 my-3" style="background-color: #white">
					<div class="row">
						<div class="col-lg-2 border-right border-secondary">
							<div class="col">
								<h2>${bigTag.name}</h2>
								<ul>
                                    <c:forEach  items="${MTlist}" varStatus="j">
                                        <c:if test="${bigTag.no == MTlist[j.index].btno}">
                                            <c:choose>
                                                <c:when test="${selectedNo > 0 && MTlist[j.index].no == selectedNo}">
                                                    <li class="ml-3"><a class="selected" href="../class/clsCate?type=mtag&no=${MTlist[j.index].no}">${MTlist[j.index].name}</a></li>  
                                                </c:when>
                                                <c:otherwise>
                                                    <li class="ml-3"><a href="../class/clsCate?type=mtag&no=${MTlist[j.index].no}">${MTlist[j.index].name}</a></li>
                                                </c:otherwise>
                                            </c:choose>
                                          
                                        </c:if>
                                    </c:forEach>
								</ul>
							</div>
						</div>
						<!-- 오늘의 핫 아이템(카르셀) -->

						<div class="col-lg-10">
							<div class="row">
								<div class="col">
									<div id="day-select">
										<h2>기간</h2>
										<div class="box">
											<label> <input type="radio" name="like" checked=""> <span class="yes">원데이</span>
											</label> <label> <input type="radio" name="like"> <span class="no">전체</span>
											</label>
										</div>
									</div>

									<div>
										<h2>요일 선택</h2>
										<br>
										<div>
											<label for="default1" class="btn btn-default1"> <strong style="font-size: 16px">월</strong>
												<input type="checkbox" id="default1" class="badgebox"><span class="badge">&check;</span>
											</label> <label for="default2" class="btn btn-default2"> <strong style="font-size: 16px">화</strong>
												<input type="checkbox" id="default2" class="badgebox"><span class="badge">&check;</span>
											</label> <label for="default3" class="btn btn-default3"> <strong style="font-size: 16px">수
											</strong> <input type="checkbox" id="default3" class="badgebox"><span class="badge">&check;</span>
											</label> <label for="default4" class="btn btn-default4"> <strong style="font-size: 16px">목</strong>
												<input type="checkbox" id="default4" class="badgebox"><span class="badge">&check;</span>
											</label> <br> <label for="default5" class="btn btn-default5"> <strong
												style="font-size: 16px">금</strong> <input type="checkbox" id="default5" class="badgebox"><span
												class="badge">&check;</span>
											</label> <label for="default6" class="btn btn-default6"> <strong style="font-size: 16px">토</strong>
												<input type="checkbox" id="default6" class="badgebox"><span class="badge">&check;</span>
											</label> <label for="default7" class="btn btn-default7"> <strong style="font-size: 16px">일
											</strong> <input type="checkbox" id="default7" class="badgebox"><span class="badge">&check;</span>
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>

						<hr class="FhrMargin">
					</div>

					<div class="col-lg-12 mx-auto my-3">
						<div class="post-preview">
							<a href="post.html"></a>
							<div class="row">



								<div class="container">
									<div class="clearfix">
										<a class="btn btn-primary float-right mb-3" onClick="showClassAdd('${sessionScope.loginUser.mtstat}')">클래스 개강 </a>
									</div>
									<div class="row" id="clslist">
										<c:forEach items="${clslist}" var="cl" varStatus="i"> 
											<div class="col-lg-4">
												<article class="card-wrapper">
													<div class="image-holder">
														<a href="detail?no=${cl.no}" class="image-holder__link"></a>
														<div class="image-liquid image-holder--original">
															<a href="detail?no=${cl.no}"><img alt="${i.count}" src="${cl.cfile}"
																style="width: 100%; height: 100%"></a> <img src="${cl.mentee.phot}"
																class="mentorimg" alt="${cl.mentee.phot}">
															<div
																style="padding: 0 5px; top: 75px; width: auto; height: auto; position: absolute; background-color: #f58500; color: white; border-bottom-right-radius: 10px">${cl.mentee.name}
															</div>
															<div
																style="padding: 0 5px; top: 100px; width: auto; height: auto; position: absolute; background-color: #333873; color: white; border-bottom-right-radius: 10px">${cl.mentee.nick}
																멘토</div>
														</div>
													</div>
													<div class="product-description">
														<!-- 제목 -->
														<div class="product-description__title">
															<div class="row">
																<div class="col-lg-12 mb-2">
																	<a href="detail?no=${cl.no}">${cl.titl}</a>
																</div>
															</div>
															<!-- 분류명 , 가격 -->
															<div class="row">
																<div class="col-lg-7 product-description__category secondary-text">
																	<%
                                                                      Classes c = (Classes) pageContext.getAttribute("cl");
                                                                      for (int i = 0; i < 5; i++) {
                                                                        if (i < c.getStar()) {
                                                                    %>
                                                                    <img alt="star-on-big" class='starimg' src="/upload/img/raty/star-on-big.png">
                                                                    <%
                                                                      } else {
                                                                    %>
                                                                    <img alt="star-off-big" class='starimg' src="/upload/img/raty/star-off-big.png">
                                                                    <%
                                                                      }
                                                                      }
                                                                    %>
																</div>
																<div class="col-lg-5 product-description__price">${cl.pric}원</div>
															</div>
															<hr class="NoMarginHr">
															<!-- 멘토 이름 -->
															<div class="sizes-wrapper">
																<b>판매자 - ${cl.mentee.name}</b>
															</div>
															<!-- 주소 -->
															<div class="color-wrapper">
																<b>기본 주소</b>
															</div>
														</div>
													</div>
												</article>
											</div>
										</c:forEach>
									</div>
								</div>

							</div>

						</div>
						<hr>

					</div>
				</div>

				<hr>
 
				<!-- Footer -->

			</div>
		</div>

		<footer>
			<div class="col px-0">
				<jsp:include page="../footer.jsp"></jsp:include>
			</div>
		</footer>

		<div class="modal fade" id="squarespaceModal" tabindex="-1" role="dialog"
			aria-labelledby="modalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="lineModalLabel">인증서 선택하기</h4>
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
					</div>
					<div class="modal-body" id="modal-body"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- ===============필수포함=============== -->
	<!-- Bootstrap core JavaScript -->
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- js 추가 -->
	<script src="/js/clean-blog.js"></script>
	<script src="/js/owl.carousel.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<!-- ===============필수포함=============== -->

	<script>
	function showClassAdd(mtstat){
		if("${sessionScope.loginUser}" == ""){
			swal({
				title: "로그인후 이용가능합니다.",
				button: "확인"
			});
		}else if('${sessionScope.loginUser.mtstat}' == 'N'){
			swal({
				title: "멘토만 이용가능합니다.",
				button: "확인"
			});
		}else if('${sessionScope.loginUser.mtstat}' == 'Y'){
			location.href='classadd';
		}else if('${sessionScope.loginUser.mtstat}' == 'I'){
			swal({
				title: "응안돼~",
				button: "확인"
			});
		}
	}
	</script>
<script>
var data = {
        "items": ${clslist}
    };
    console.log(data); 
	for (var i in data["items"]) {
		var cno = data["items"][i].classes.no;
	    var titl = data["items"][i].classes.titl;
	    var pric = data["items"][i].classes.pric;
	    var basAddr = data["items"][i].classes.basAddr;
	    var cfile = data["items"][i].classes.cfile;
	    var star = data["items"][i].classes.star;
	    var name = data["items"][i].mentee.name;
	    var nick = data["items"][i].mentee.nick;
	    var phot = data["items"][i].mentee.phot;
	    var mtname = data["items"][i].middletag.mtname;
	    var btname = data["items"][i].bigtag.btname;
        
	    console.log(cno);
	    console.log(titl);
	    console.log(pric);
	    console.log(basAddr);
	    console.log(cfile);
	    console.log(star);
	    console.log(name);
	    console.log(nick);
	    console.log(mtname);
	    console.log(btname);
	    var clssize = ${clslist.size()};
	    console.log(clssize);
	    var html = "";
	    var clslist = $('div#clslist');
	$(window).scroll(function() {
	    if((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
	        for(var i=0;i<=6; i++){
			    html+= '<div class="col-lg-4">'
			    html+= '	<article class="card-wrapper">'
			    html+= ' 		<div class="image-holder">'
			    html+= '			<a href="detail?no=${cl.no}" class="image-holder__link"></a>'
			    html+= '			<div class="image-liquid image-holder--original">'
			    html+= '				<a href="detail?no=${cl.no}"><img alt="${i.count}" src="${cl.cfile}"'
			    html+= '					style="width: 100%; height: 100%"></a> <img src="${cl.mentee.phot}"'
			    html+= '					class="mentorimg" alt="${cl.mentee.phot}">'
			    html+= '				<div '
			    html+= '				style="padding: 0 5px; top: 75px; width: auto; height: auto; position: absolute; background-color: #f58500; color: white; border-bottom-right-radius: 10px">$${cl.mentee.name}'
			    html+= '				</div>'
			    html+= '				<div'
			    html+= '					style="padding: 0 5px; top: 100px; width: auto; height: auto; position: absolute; background-color: #333873; color: white; border-bottom-right-radius: 10px">${cl.mentee.nick}'
			    html+= '					멘토</div>'
			    html+= '			</div>'
			    html+= '		</div>'
			    html+= '		<div class="product-description">'
			    html+= '			<div class="product-description__title">'
			    html+= '				<div class="row">'
			    html+= '					<div class="col-lg-12 mb-2">'
			    html+= '						<a href="detail?no=${cl.no}">${cl.titl}</a>'
			    html+= '					</div>'
			    html+= '				</div>'
			    html+= '				<div class="row">'
			    html+= '					<div class="col-lg-7 product-description__category secondary-text">'
			        								for(var j=0; j<5; j++) {
				                                    if (j<star) {
				html+= '                        <img alt="star-on-big" class="starimg" src="/upload/img/raty/star-on-big.png">'
				                                  } else {
				html+= '                        <img alt="star-off-big" class="starimg" src="/upload/img/raty/star-off-big.png">'
				                                  }
				                              }
			    html+= '					</div>'
			    html+= '					<div class="col-lg-5 product-description__price">${cl.pric}원</div>'
			    html+= '				</div>'
			    html+= '				<hr class="NoMarginHr">'
			    html+= '				<div class="sizes-wrapper">'
			    html+= '					<b>판매자 - ${cl.mentee.name}</b>'
			    html+= '				</div>'
			    html+= '				<div class="color-wrapper">'
			    html+= '					<b>기본 주소 - ${cl.bas_addr}</b>'
			    html+= '				</div>'
			    html+= '			</div>'
			    html+= '		</div>'
			    html+= '	</article>'
			    html+= '</div>'
			}
			clslist.html(html);
	    }
	});
</script>
</body>

</html>