<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="bitcamp.java110.cms.domain.BigTag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>하루 - 전체 상품목록</title>

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
								<h2>카테고리</h2>
								<ul>
									<c:forEach items="${BTlist}" var="bt">
										<li class="ml-3"><a href="#">${bt.name}</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<!-- 오늘의 핫 아이템(카르셀) -->

						<div class="col-lg-10">
							<div class="row">
								<div class="col">
									<h2>오늘의 핫 아이템</h2>
									<div id="owl-hotItem" class="owl-carousel col-lg-10 mt-2" style="margin: 0 auto"></div>
									<div class="owl-btns">
										<div class="cusnextPrdt">
											<i class="fas fa-angle-right" style="color: #ec5453"></i>
										</div>
										<div class="cusprevPrdt">
											<i class="fas fa-angle-left" style="color: #ec5453"></i>
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
										<a class="btn btn-primary float-right mb-3"
											data-toggle="modal" data-target="#squarespaceModal" href="#"
											onclick="showCert('${sessionScope.loginUser.no}')">상품 등록
										</a>
									</div>
									<div class="row">

										<c:forEach items="${productList}" var="pl" varStatus="i">

											<div class="col-lg-4">
												<article class="card-wrapper">
													<div class="image-holder">
														<a href="detail?no=${pl.no}" class="image-holder__link"></a>
														<div class="image-liquid image-holder--original">
															<a href="detail?no=${pl.no}"><img alt="${i.count}" src="${pl.phot}"
																style="width: 100%; height: 100%"></a> <img src="${pl.mentee.phot}"
																class="mentorimg" alt="${pl.mentee.phot}">
															<div style="padding: 0 5px; top: 75px; width: auto; height: auto; position: absolute; background-color: #f58500; color: white; border-bottom-right-radius: 10px">${pl.mentee.name}
															</div>
															<div style="padding: 0 5px; top: 100px; width: auto; height: auto; position: absolute; background-color: #333873; color: white; border-bottom-right-radius: 10px">${pl.mentee.nick}
																멘토</div>
														</div>
													</div>
													<div class="product-description">
														<!-- 제목 -->

														<div class="product-description__title">
															<div class="row">
																<div class="col-lg-12 mb-2">
																<c:choose>
																	<c:when test="${fn:length(pl.titl) > 20}">
																	   <a href="detail?no=${pl.no}">${fn:substring(pl.titl,0,20)}...</a>
														            </c:when>
														            <c:otherwise>
														              <a href="detail?no=${pl.no}">${pl.titl}</a>
														            </c:otherwise> 
																</c:choose>
																	
																</div>
															</div>

															<!-- 분류명 , 가격 -->
															<div class="row">
																<div class="col-lg-7 product-description__category secondary-text">
																	<%
                                                                      Product p = (Product) pageContext.getAttribute("pl");
                                                                      for (int i = 0; i < 5; i++) {
                                                                        if (i < p.getStar()) {
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
																<div class="col-lg-5 product-description__price">${pl.pric}원</div>
															</div>
															<hr class="NoMarginHr">
															<!-- 멘토 이름 -->
															<div class="sizes-wrapper">
																<b>판매자 - ${pl.mentee.name}</b>
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

		<div class="modal fade" id="squarespaceModal" tabindex="-1"
			role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
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
		
		<!-- <select>
		  <option onselect="">
		</select> -->
	</div>
	<!-- ===============필수포함=============== -->
	<!-- Bootstrap core JavaScript -->
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- js 추가 -->
	<script src="/js/clean-blog.js"></script>
	<script src="/js/owl.carousel.js"></script>

	<!-- ===============필수포함=============== -->

	<script>
        var owlPrdt = $("#owl-hotItem");
        $(document).ready(function() {

            var data = {
                "items": ${pp_list}
            };
            console.log(data);
            owlPrdt.owlCarousel({
                nav: false,
                loop: true,
                items: 3,
                margin: 10,
                jsonPath: 'json/customData.json',
                jsonSuccess: customDataSuccess(data),

            });

            function customDataSuccess(data) {
                var content = "";
                var style =
                    "cursor:pointer;" +
                    "background-color:weat;" +
                    "text-align:center;"
                for (var i in data["items"]) {
                    var ptno = data["items"][i].product.no;
                    var phot = data["items"][i].product.phot;
                    var titl = data["items"][i].product.titl;
                    var star = data["items"][i].product.star;
                    var pric = data["items"][i].product.pric;
                    var mtname = data["items"][i].middleTagName;
                    var stname = data["items"][i].smallTagName;
                    var nick = data["items"][i].nick;
                    
                    content += "<a href='detail?no="+ ptno +"'>"
                    content += "<div class='col' id='owl-col'>" 
                    content += "<div class='row' id='owl-row'>"
                    content += '<div style="padding: 0 5px; top: 20px; width: auto; height: auto; position: absolute; background-color: #f58500; color: white; border-bottom-right-radius: 10px">'+nick+'</div>'
                    content += "<img id='owl-img' src=\"" + phot + "\" alt=\"" + titl + "\">"
                    content += "<div class='col-lg-9' id='owl-col2'>" + titl + "</div>"
                    content += "<div class='col-lg-3' id='owl-coltag'>" + stname + "</div>"
                    content += "<div class='col-lg-6' id='owl-colstar'>"
                    for(var j=0; j<5; j++) {
                        if(j<star){
                            content += "<img id='owl-star' width='15px' height='15px' src='/upload/img/raty/star-on.png' alt='star-on'>"
                        }else{
                            content += "<img id='owl-star' width='15px' height='15px' src='/upload/img/raty/star-off.png' alt='star-off'>"
                        }
                    }
                    content += "</div>"
                    content += "<div class='col-lg-6' id='owl-col3'>" + pric + "￦</div>"
                    content += "</div>"
                    content += "</div>"
                    content += "</a>"
                }
                owlPrdt.html(content);
            }

        });
        $(".cusnextPrdt").click(function() {
            owlPrdt.trigger('next.owl.carousel');
        });

        $(".cusprevPrdt").click(function() {
            owlPrdt.trigger('prev.owl.carousel');
        });
    </script>
	<script>
	function getCtno(){
	    $('#ctno').val($('#cert option:selected').attr('id'));
	}
	
    function showCert(no){

        $.ajax({
            data : {
                no : no
            },
            url : "getCertList.do",
            success : function(data) {
                console.log(data[0]);
                
                var html= "";
                
                html+='<form action="prodRegister" method="post">';
                html+='<div class="form-group text-center">';
                
                html+='<select name="mtno" id="cert" onclick="getCtno()" >';
                for(var i=0;i<data.length; i++){
                    html+='<option id="'+ data[i].no +'" value="'+data[i].classes.mtno+'">'+data[i].classes.titl+'</option>';
                }
                html+='</select>';
                html+='<input type="hidden" name="ctno" id="ctno" value=""';
                html+='</div><br>';
                html+='<div class="text-center" style="margin-top:10px">'

                html+='<button type="button" onclick="openPopUp(this.form)" class="btn btn-default" style="margin:5px">등록</button>';

                html+='<button type="button" class="btn btn-default" data-dismiss="modal" role="button">취소</button>';
                html+='</div>';
                html+=' </form>';
                var setDiv = document.querySelector("#modal-body");
                setDiv.innerHTML=html;
                $('#ctno').val($('#cert option:selected').attr('id'));
            }
        });
        
    }
    function openPopUp(frm){
        var openWin;
        
        var url    = "prodRegister";
        var title  = "하루 - 상품등록";
        var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width=1300, height=700, top=-1000,left=100"; 
        openWin = window.open("", title,status); //window.open(url,title,status); window.open 함수에 url을 앞에와 같이
                                                  //인수로  넣어도 동작에는 지장이 없으나 form.action에서 적용하므로 생략
                                                  //가능합니다.
        frm.target = title;                    //form.target 이 부분이 빠지면 form값 전송이 되지 않습니다. 
        frm.action = url;                    //form.action 이 부분이 빠지면 action값을 찾지 못해서 제대로 된 팝업이 뜨질 않습니다.
        frm.method = "post";
        frm.submit();     
        }
    
/*     {
        
        var ctno = $('input#ctno').val();
        
        console.log(ctno);

        // window.name = "부모창 이름"; 
        window.name = "parentForm";
        // window.open("open할 window", "자식창 이름", "팝업창 옵션");
        openWin = window.open("prodRegister",
                "childForm", "width=570, height=350, resizable = no, scrollbars = no");    
    } */
    </script>
</body>

</html>