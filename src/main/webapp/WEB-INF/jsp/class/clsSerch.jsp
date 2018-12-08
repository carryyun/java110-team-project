<%@page import="bitcamp.java110.cms.domain.Classes"%>
<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="bitcamp.java110.cms.domain.BigTag"%>
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

<title>하루 - 클래스 검색</title>

<!-- ===============필수포함=============== -->
<!-- Bootstrap core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Jua"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">

<link href="/css/owl.carousel.css" rel="stylesheet">
<link href="/css/list.css" rel="stylesheet">
<link href="/css/clean-blog.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">

<!-- 이거임시추가 -->

<!-- ===============필수포함=============== -->

<style>
/* 여기에 임시 추가 */
div.box label {
margin-bottom: 0.25rem;
}

.box label input {
	display: none;
}

.box label span {
	display: inline-block;
	margin-left: 4px;
	font-size: 15px;
	text-align: center;
	padding: 5px;
	width: 130px;
	background: #fcfcfc;
	color: #444;
}

.box label input:checked ~ span.yes {
	background-color: #FFB53C;
	color: white;
	border-color: #FFB53C;
}

.box label span:hover{
    background-color: #FFB53C;
    color: white;
    border-color: #FFB53C;
}

/*

.box label input:checked ~ span.yes:before,
.box label input:checked ~ span.yes:after {
    background:#62ff00;
}
*/
.box label input:checked ~ span.no {
	color: #FFB53C;
	border-color: #FFB53C;
	box-shadow: inset 0 0 10px #FFB53C;
}

/*
.box label input:checked ~ span.no:before,
.box label input:checked ~ span.no:after {
    background:#ff0000;
}
*/
</style>
</head>

<body>
	<div id="wrap" style="background-color: #fff">
		<div class="col-lg-12 px-0"
			style="position: absolute; height: 147px; background-color: white">
			<!-- 헤더 배경색 적용 -->
		</div>
		<div class="col-lg-12 px-0" 
            style="position: absolute; top:147px; height: 249px; background-color: #f3f3f3">
            <!-- 헤더 배경색 적용 -->
        </div>

		<div class="container" style="background-color: white; margin-bottom: 80px">
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
						<div class="col-lg-2 pl-4 border-right border-secondary">
							<div class="col">
								<h2 style="font-size: 1.5rem; font-weight: 700;">${bigTag.name}</h2>
								<input type="hidden" id="getbtno" value="${bigTag.no}">
								<ul>
									<c:forEach items="${MTlist}" varStatus="j">
										<c:if test="${bigTag.no == MTlist[j.index].btno}">
											<c:choose>
												<c:when
													test="${selectedNo > 0 && MTlist[j.index].no == selectedNo}">
													<li><a class="selected"
														href="../class/clsCate?type=mtag&no=${MTlist[j.index].no}">${MTlist[j.index].name}</a></li>
												</c:when>
												<c:otherwise>
													<li><a
														href="../class/clsCate?type=mtag&no=${MTlist[j.index].no}">${MTlist[j.index].name}</a></li>
												</c:otherwise>
											</c:choose>

										</c:if>
									</c:forEach>
								</ul>
							</div>
						</div>
						
						<div class="col-lg-2">
                            <div class="col">
                                <h2 style="font-size: 1.5rem; font-weight: 700;">지역선택</h2>
                            </div>
                        </div>
						<!--  여기에 코드작성-->
						
                        <div class="col-lg-7" style="padding-top: 20px">
						<div class="box">
							<div class="row">
								<label> <input type="checkbox" name="loc" class="loc" value="가산"> <span
									class="yes">가산디지털(5)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="강남"> <span
									class="yes">강남(16)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="건대"> <span
									class="yes">건대(7)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="구로"> <span
									class="yes">구로(6)</span>
								</label>
							</div>

							<div class="row">
								<label> <input type="checkbox" name="loc" class="loc" value="노량진"> <span
									class="yes">노량진(3)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="동작"> <span
									class="yes">동작(6)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="대구"> <span
									class="yes">대구중앙(3)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="마포"> <span
									class="yes">마포(4)</span>
								</label>
							</div>
							<div class="row">
								<label> <input type="checkbox" name="loc" class="loc" value="부평"> <span
									class="yes">부평(11)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="부산대"> <span
									class="yes">부산대(3)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="서면"> <span
									class="yes">부산서면(12)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="분당"> <span
									class="yes">분당(5)</span>
								</label>
							</div>
							<div class="row">
								<label> <input type="checkbox" name="loc" class="loc" value="신림"> <span
									class="yes">신림(4)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="수원"> <span
									class="yes">수원(11)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="송도"> <span
									class="yes">송도(6)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="사당"> <span
									class="yes">사당(12)</span>
								</label>
							</div>
							<div class="row">
								<label> <input type="checkbox" name="loc" class="loc" value="영등포"> <span
									class="yes">영등포(6)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="일산"> <span
									class="yes">일산(6)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="종로"> <span
									class="yes">종로(6)</span>
								</label> <label> <input type="checkbox" name="loc" class="loc" value="혜화"> <span
									class="yes">혜화(5)</span>
								</label>
							</div>
						</div>
                    </div>
                    <div class="col-lg-1" style="padding-top:180px">
                    <button class="btn btn-primary" onclick="getLocation()">검색</button></div>
                    
						<!--여기까지 코드 작성 -->


						<hr class="FhrMargin" style="background: none">
					</div>

					<div class="col-lg-12 mx-auto my-3">
						<div class="post-preview">
							<a href="post.html"></a>
							<div class="row">



								<div class="container">
									<div class="clearfix">
										<a class="btn btn-primary float-right mb-3"
											onClick="showClassAdd('${sessionScope.loginUser.mtstat}')">클래스
											개강 </a>
									</div>
									<div class="row" id="clslist">
										<c:forEach items="${clslist}" var="cl" varStatus="i">
											<div class="col-lg-4">
												<article class="card-wrapper">
													<div class="image-holder"> 
														<a href="#"  onclick="openInNewTab('detail?no=${cl.no}');" class="image-holder__link"></a>
														<div class="image-liquid image-holder--original">
															<a href="#" onclick="openInNewTab('detail?no=${cl.no}');"><img alt="${i.count}"
																src="${cl.cfile}" style="width: 100%; height: 100%"></a>
															<img src="${cl.mentee.phot}" class="mentorimg"
																alt="${cl.mentee.phot}">
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
																	<a href="#" onclick="openInNewTab('detail?no=${cl.no}');">${cl.titl}</a>
																</div>
															</div>
															<!-- 분류명 , 가격 -->
															<div class="row">
																<div
																	class="col-lg-7 product-description__category secondary-text">
																	<%
                                                                      Classes c = (Classes) pageContext.getAttribute("cl");
                                                                      for (int i = 0; i < 5; i++) {
                                                                        if (i < c.getStar()) {
                                                                    %>
																	<img alt="star-on-big" class='starimg'
																		src="/upload/img/raty/star-on-big.png">
																	<%
                                                                      } else {
                                                                    %>
																	<img alt="star-off-big" class='starimg'
																		src="/upload/img/raty/star-off-big.png">
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


	</div>

	<!-- ===============필수포함=============== -->
	<!-- Bootstrap core JavaScript -->
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- 이거 두줄 일단 추가했음 -->

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
				title: "아직 멘토 심사 기간이 안끝났습니다.",
				button: "확인"
			});
		}
	}
	</script>
	<script>
    var clslist = $('div#clslist'); 
    var pageNo=parseInt(2);
    var btno = $('input#getbtno').val();
    $(document).ready(function(){
        var serchWord = '${word}';
        $('input#getWord').val(serchWord);

    });
		$(window).scroll(function() {
		    if($(window).scrollTop() == $(document).height() - window.innerHeight+17) {
		        var html = "";
		        $.ajax({
		            type : "POST" , 
		            data : {
		                "pageNo" : pageNo,
		                "word" : '${word}'
		            },
		            url : "clsSerch.do" ,
		            success : function(data) {
		                html ="";
		                for (var i in data) {
		        			var cno = data[i].no;
		        		    var titl = data[i].titl;
		        		    var pric = data[i].pric;
		        		    var basAddr = data[i].basAddr;
		        		    var cfile = data[i].cfile;
		        		    var star = data[i].star;
		        		    var name = data[i].mentee.name;
		        		    var nick = data[i].mentee.nick;
		        		    var phot = data[i].mentee.phot;
		        		    var mtname = data[i].middleTag.name;
		        		    
		        		    html+= '<div class="col-lg-4">'
		    				    html+= '	<article class="card-wrapper">'
		    				    html+= ' 		<div class="image-holder" onClick="location.href="detail?no='+cno+'"">'
		    				    html+= '			<a href="detail?no='+cno+'" class="image-holder__-link"></a>'
		    				    html+= '			<div class="image-liquid image-holder--original">'
		    				    html+= '				<a href="detail?no='+cno+'"><img alt="${i.count}" src="'+cfile+'"'
		    				    html+= '					style="width: 100%; height: 100%"></a> <img src="'+phot+'"'
		    				    html+= '					class="mentorimg" alt="'+phot+'">'
		    				    html+= '				<div '
		    				    html+= '				style="padding: 0 5px; top: 75px; width: auto; height: auto; position: absolute; background-color: #f58500; color: white; border-bottom-right-radius: 10px">'+name+''
		    				    html+= '				</div>'
		    				    html+= '				<div'
		    				    html+= '					style="padding: 0 5px; top: 100px; width: auto; height: auto; position: absolute; background-color: #333873; color: white; border-bottom-right-radius: 10px">'+nick+''
		    				    html+= '					멘토</div>'
		    				    html+= '			</div>'
		    				    html+= '		</div>'
		    				    html+= '		<div class="product-description">'
		    				    html+= '			<div class="product-description__title">'
		    				    html+= '				<div class="row">'
		    				    html+= '					<div class="col-lg-12 mb-2">'
		    				    html+= '						<a href="detail?no='+cno+'">'+titl+'</a>'
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
		    				    html+= '					<div class="col-lg-5 product-description__price">'+pric+'원</div>'
		    				    html+= '				</div>'
		    				    html+= '				<hr class="NoMarginHr">'
		    				    html+= '				<div class="sizes-wrapper">'
		    				    html+= '					<b>판매자 - '+name+'</b>'
		    				    html+= '				</div>'
		    				    html+= '				<div class="color-wrapper">'
		    				    html+= '					<b>기본 주소 - '+basAddr+'</b>'
		    				    html+= '				</div>'
		    				    html+= '			</div>'
		    				    html+= '		</div>'
		    				    html+= '	</article>'
		    				    html+= '</div>'
		                }
		                var setDiv = document.querySelector("div#clslist");
		                setDiv.innerHTML+=html;
		                
		            },error : function(error,status){
		                swal({
		                    text : "안됨",
		                    button : "확인",
		                  })
		            }
		        }).done(function(json) {
		            pageNo++;
		        });
		    }
		});
</script>
<script>
function openInNewTab(url) {
    var win = window.open(url, '_blank');
    win.focus();
  }
  
function getLocation(){
    var getCheck = $('.loc:checked').serialize();
    var repleLoc = decodeURIComponent(getCheck).replace(/\+/g, '%20');
    repleLoc= replaceAll(repleLoc, "loc=", "");
    repleLoc= replaceAll(repleLoc, "&", ",");
    console.log(repleLoc);
    location.href="clsLoc?locs="+repleLoc;
}
function replaceAll(str, searchStr, replaceStr) {
    return str.split(searchStr).join(replaceStr);
  }
</script>
</body>

</html>