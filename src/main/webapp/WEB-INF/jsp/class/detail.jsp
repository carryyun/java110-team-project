<%@page import="bitcamp.java110.cms.domain.Classes"%>
<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Clean Blog - Start Bootstrap Theme</title>

<!-- Bootstrap core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- 폰트 추가 -->
<link href="https://fonts.googleapis.com/css?family=Jua"
    rel="stylesheet">
<!-- Custom fonts for this template -->
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
    type="text/css">
<link
    href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
    rel='stylesheet' type='text/css'>
<link
    href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
    rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<!--  <link href="/css/clean-blog2.css" rel="stylesheet"> -->
<link href="/css/common.css" rel="stylesheet">
<link href="/css/class_detail.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
    <script src="/vendor/jquery/jquery.min.js"></script>

	<!-- 아래와 같이 주석처리한 이유는 bootstrap이 두번 선언된 경우에 동작이 두번할수도 있음 -->

    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/js/jquery.raty.min.js"></script>
    <script src="/js/clean-blog.js"></script>
    
<script type="text/javascript">
 var stmnLEFT = 0; // 오른쪽 여백 
 var stmnGAP1 = 0; // 위쪽 여백 
 var stmnGAP2 = 50; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
 var stmnBASE = 150; // 스크롤 시작위치 
 var stmnActivateSpeed = 35; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
 var stmnScrollSpeed = 20; //스크롤 속도 (클수록 느림)
 var stmnTimer; 
 
 function RefreshStaticMenu() { 
  var stmnStartPoint, stmnEndPoint; 
  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2 - 150; 
  if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
  if (stmnStartPoint != stmnEndPoint) { 
   stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
   document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
   stmnRefreshTimer = stmnScrollSpeed; 
   }
  stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
  } 
 function InitializeStaticMenu() {
  document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
  document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
  RefreshStaticMenu();
  }
</script>

<style type="text/css">
#STATICMENU { 
	margin: 0pt; padding: 0pt;  
	position: absolute; right: 0px; top: 0px;
	transform: translateX(95%);
	width : 300px;
	}
</style>



</head>
<body style="background-color: #F2F4F7" onload="InitializeStaticMenu()">

    <hr>
    <div class="container">
        <div class="row">
		<div class="col-lg-12">
                                <jsp:include page="../headerMain.jsp"></jsp:include>
                            </div>
            <h2>클래스 상세보기</h2>
            <hr class="FhrBotMargin">

            <div class="col-lg-12 col-md-12 text-center">
                <div class="row">
                    <%-- <aside class="col-lg-5">
                        <article class="gallery-wrap">
                            <div class="img-big-wrap">
                                <div>
                                    <a href="#"><img id="prod_img"
                                        src="${detailclass.cfile}" alt=""></a>
                                </div>
                            </div>
                        </article>
                    </aside> --%>
                    <aside class="col-lg-12">
                        <article class="gallery-wrap">
                            <div class="img-big-wrap">
                                <div>
				                    <div id="carouselExampleIndicators" class="carousel slide" data-interval="false" data-ride="carousel">
									  <ol class="carousel-indicators">
									    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
									    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
									    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
									  </ol>
									  <div class="carousel-inner">
									    <div class="carousel-item active">
									      <img style="width=1100px; margin-left:-10px;" class="d-block w-100" src="${detailclass.cfile}" alt="First slide">
									    </div>
									    <c:forEach items="${clsfilelist}" var="cf" varStatus="i">
									    	<c:set var="divi" value="${cf.fname}"/>
									    	<%
									    		String fna = (String)pageContext.getAttribute("divi");
									    		if(fna.endsWith("jpg") || fna.endsWith("png")){
									    	%>	  
									    		<div class="carousel-item">
											      <img class="d-block w-100" style="width=1100px; height=450px; margin-left:-10px; " 
											      src="${cf.fname}" alt="${i.count}">
											    </div>
									    	<%	  
									    		}else {
									    		 int idx = fna.indexOf("=");
									    		 String fnaurl = fna.substring(idx+1);
									    	%>
											    <div class="carousel-item" style="margin-bottom: -5px;">
											      <iframe width="1100" height="450" style="margin-left:-10px;" src="https://www.youtube.com/embed/<%=fnaurl%>" 
											      frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
											      allowfullscreen></iframe>
											    </div>
											<%
									    		}
											%>
										</c:forEach>
									  </div>
									  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
									    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
									  </a>
									  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
									    <span class="carousel-control-next-icon" aria-hidden="true"></span>
									  </a>
									</div>
								</div>
                            </div>
						</article>
                    </aside>
                    <!-- 사이드바 -->
                    <div id="STATICMENU">
                    	<aside class="col-lg-8">
                        <article class="card-body p-3">
                            <div class="text-center">
                            <img style="width: 200px; height:200px;" src="${detailclass.cfile}" alt=""/>
                                <h3 class="title mb-3">${detailclass.titl}</h3>
                                <dl class="param param-feature">
                                    <dd>${detailclass.middleTag.name}</dd>
                                </dl>
                                <dl class="param param-feature">
                                    ${detailclass.pric}원
                                </dl>

                                <dl class="param param-feature">
                                    	${detailclass.mentee.nick} 멘토
                                </dl>
                                        <dl class="param param-feature">
                                            <dd>${detailclass.basAddr}</dd>
                                        </dl>
                                <dl>
                                	<c:set var="clsstar" value ="${detailclass.star}"/>
                                	<%
		                            	int clsstar = (int)pageContext.getAttribute("clsstar");
		                            for(int i=0; i<5;i++){
									  if(i<clsstar){
									%>
									<img class="starimg" alt="star-on-big" src="/upload/img/raty/star-on-big.png"
									style="width:20px; height:20px;">
									<%}else{
		              					%>
		              				<img class="starimg" alt="star-off-big" src="/upload/img/raty/star-off-big.png"
		              				style="width:20px; height:20px;">
		              				<%
		            						}
		            					}
		            				%>
                                </dl>
                                        <!-- item-property .// -->
                                    <!-- col.// -->

                                <hr>
                                <!-- row.// -->
                                <!---->
                                <hr>
                                <a href="#" class="btn btn-lg btn-primary text-uppercase"> 수업 신청하기 </a> 
                                <a href="#" class="btn btn-lg btn-outline-primary text-uppercase"> 
                                    <i class="fas fa-shopping-cart"></i> 찜클래스 </a>
                            </div>
                        </article>
                        <!-- card-body.// -->
                    </aside>
                    </div>
                    <!-- 사이드바 끝 -->
                    <!-- col.// -->
                </div>
                <!-- row.// -->
            </div>
            <!-- <div class="col-lg-12 col-md-12 text-center"> -->
        </div>
        <!-- <div class="row"> -->
    </div>
    <!-- <div class="container"> -->

    <div class="container">

        <div class="col-lg-12" id="testt">
            <!-- Links -->

            <ul class="under-navbar-nav">

                <li class="under-nav-item"><a class="nav-link"
                    href="#class_detail">
                        <h4>요약</h4> 
                </a></li>
                
                <li class="under-nav-item"><a class="nav-link"
                    href="#mentor-info">
                        <h4>강사소개</h4>
                </a></li>
                
                <li class="under-nav-item"><a class="nav-link" 
                	href="#class-info">
                        <h4>강의설명</h4>
                </a></li>
                
                <li class="under-nav-item"><a class="nav-link" 
                	href="#location">
                        <h4>위치</h4>
                </a></li>
                
                <li class="under-nav-item"><a class="nav-link" 
                	href="#class-review">
                        <h4>클래스 후기</h4>
                </a></li>

            </ul>

        </div>
    </div>

    <!--요약 , 강사소개 , 강의설명,  위치, 클래스후기-->
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 mx-auto" id="detail">
                <div class="detail_info">
                    <hr class="Fhr" id="class_detail">
                    <h3>요약</h3>
                    <!-- <div class="row"> -->
                    <div>
                    	<img style = "width:200px; height:200px; float:left;"src="${detailclass.mentee.phot}" alt="">
                    	<br><br><br>
                    	<div class = "shortinfo"><strong>금액</strong><div class="inf">${detailclass.pric}원</div></div>
	                    <div class = "shortinfo"><strong>총 수업시간</strong><div class="inf">${detailclass.time}시간</div></div>
	                    <div class = "shortinfo"><strong>모집인원</strong><div class="inf">${detailclass.capa}명</div></div>
                    </div>
                    <div style="margin-left : 40px;"><strong>멘토 : ${detailclass.mentee.nick}</strong></div>
                </div>
                <!-- <div class="detail_info"> -->
                
                <div class="detail_info">
                    <hr class="Fhr" id="mentor-info">
                    <h3>강사소개</h3>
                    ${detailclass.tinfo}
                </div>
                
                <div class="detail_info">
                    <hr class="Fhr" id="class-info">
                    <h3>강의설명</h3>
                    ${detailclass.cinfo}
                </div>
	                <div class="detail_info">
	                    <hr class="Fhr" id="location">
	                    <h3>위치</h3>
	                    <div class="row">
	                    <div id="map" style="width:500px;height:400px; margin-left:10px;"></div>
	                    <span id="adr" class = "addr" style="vertical-align: middle; margin-left:80px;
	                    margin-top : 150px;"><div><strong>기본 주소</strong></div>  ${detailclass.basAddr}</span>
	                    <span id="adr" class = "addr" style="vertical-align: middle; margin-left:80px;
	                    margin-top : 150px;"><div><strong>상세 주소</strong></div>  ${detailclass.detAddr}</span>
	                    </div>
	                </div>
                
                <!-- <hr class="Fhr" id="class_info"> -->    
                <div class="detail_info">
                </div>  
                <!-- <div class="detail_info"> -->  
                <hr class="Fhr" id="class-review">   
                <div class="detail_info">   
                    <div class="row" style="margin: 0 auto">    
                        <div class="col text-center">   
                            <c:set var="starint" value="${detailclass.star}"/>
                            <strong>별점:</strong>
                            <div class="rating col">    
                                <% int star = (int)pageContext.getAttribute("starint"); 
                                for( int i=0;i<5;i++){
                                  if(i<star){
                                %> 
                                    <img alt="star-on-big" src="/upload/img/raty/star-on-big.png">
                                <%}else{
                                  %>
                                  <img alt="star-off-big" src="/upload/img/raty/star-off-big.png">
                                  <%
                                }
                                }
                                %>
                            </div>  
                            <div>   
                                <span class="glyphicon glyphicon-user"></span>12 total  
                            </div>  
                        </div>  
                    </div>  
                </div>  
                
                
                
                <div class="container col-lg-12" id="prod_review">
                    <div class="row">
                        <div class="col">
				<form class="form-horizontal" action="send.php" method="post">
                    <fieldset>
					<table class="fixed-table w-100" >
							<tr>
								<td colspan="3">
									<!-- <div class=""> -->
									
											<!-- Message body -->
											<div class="form-group">
												<div class="col-lg-12">
													<textarea class="form-control" id="message" name="message"
														placeholder="클래스평을 등록해주세요." rows="5"></textarea>
												</div>
											</div>
                                                </td>
                                </tr>
                                <tr>
                                            <td>
												<label class="control-label my-0" for="message">별점</label>
                                            </td>
                                            <td>
												<div id="star1"></div>
											<!-- </div> -->
											<!-- <div class=""> -->
                                            </td>
								
								<td align="right" valign="top">
									<!-- Form actions -->
										<!--col-lg-12추가했음-->
										<div class="col-md-12 col-lg-12 text-right" style="vertical-align: middle;">
											<button id="repbtn" type="submit" class="btn btn-primary btn-md"
												style="background-color: #606066; color: #ffffff">등록</button>
											<button type="reset" class="btn btn-default btn-md">취소</button>
										</div>
								</td>
							</tr>
						<!-- <div class="col-md-9 col-md-offset-0"> -->
					</table>
					                                       </fieldset>
                                    </form>
                                    </div>
                    </div>

                    <hr>
                    <div class ="row">
	                    <div class="detail_info">
	                    <hr class="Fhr" id="class-review">
	                    <h3>클래스 후기</h3>
	                
	                    <c:forEach items="${clsreqlist}" var="r">
	                        <div class="media"
	                            style="border-bottom: 0.3px solid rgba(0, 0, 0, 0.5)">
	                            <div class="col-lg-1 text-center">
	
	                                <img src='${r.mentee.phot}' alt="singup" id="circle">
	                                ${r.mentee.nick}
	                            </div>
	                            <div class="col-lg-11 media-body">${r.conts}</div>
	                        </div>
	                    </c:forEach>
	                    </div>
                    </div>
	
                    <hr class="Fhr" id="qna">
                    <div class="detail_info">
                        <h3>Q&A</h3>
                        <div class="row">
                            <div class="col-lg-12">
                                <table class="table table-condensed" id="qna_table" 
                                style="margin: 0 auto; border-collapse:collapse;">
                                    <thead class="col-lg-12">
                                        <tr class="row">
                                            <th scope="col" class="col-lg-1" id="qna_th">번호</th>
                                            <th scope="col" class="col-lg-2" id="qna_th">문의유형</th>
                                            <th scope="col" class="col-lg-2" id="qna_th">답변상태</th>
                                            <th scope="col" class="col-lg-4" id="qna_th">질문 제목</th>
                                            <th scope="col" class="col-lg-1" id="qna_th">작성자</th>
                                            <th scope="col" class="col-lg-2" id="qna_th">작성일</th>

                                        </tr>
                                    </thead>
                                    
                                    <tbody class="col-lg-12">
                                    <c:forEach items="${clsqnalist}" var="cq" varStatus="i">
                                        <tr data-toggle="collapse" 
                                        data-target="#demo1-${i.count}" class="accordion-toggle row">
                                            <td class="col-lg-1" scope="row" id="qna_th"> ${cq.no}</td>
                                            <td class="col-lg-2">${cq.type}</td>
                                            <c:set var="yn" value="${cq.anser}"/>
                                            <%
                                            	String qnayn = (String)pageContext.getAttribute("yn");
                                            	if(qnayn==null){
                                           	%>
                                           		<td class="col-lg-2">미완료</td>
                                           	<%  }else{
                                           	%>
                                            	<td class="col-lg-2">완료</td>
                                           	<%  
                                           	}
                                            %>
                                            <td class="col-lg-4">${cq.titl}</td>
                                            <td class="col-lg-1">${cq.mentee.nick}</td>
                                            <td class="col-lg-2">${cq.rgdt}</td>
                                        </tr>
                                        <tr>
                                        	<td colspan="6" class="hiddenRow">
                                        		<div class="accordian-body collapse" id="demo1-${i.count}">
                                        		<div class="adddet col-lg-2" style="text-align: center;
                                        		vertical-align: middle;
															display : block;">질문 내용</div>
                                        		<div class="acco" id="cont">${cq.conts}</div><br>
                                        			<c:set var="ans" value="${cq.anser}"/>
		                                            <%
		                                            	String ans = (String)pageContext.getAttribute("ans");
		                                            	if(ans==null){
		                                           	%>
		                                           		<div class="adddet col-lg-2" style="text-align: center;
		                                           			vertical-align: middle;
															display : block;">질문 답변</div>
		                                           		<div class="acco" id="ans">답변이 등록되지 않았습니다.</div>
		                                           	<%  }else{
		                                           	%>
		                                           		<div class="adddet col-lg-2" style="text-align: center;
		                                           		vertical-align: middle;
															display : block;">질문 답변</div>
		                                           		<div class="acco" id="ans">${cq.anser}</div>
		                                           	<%  
		                                           	}
		                                            %>
                                        		</div>
                                        	</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- <div class="col-lg-12"> -->
                        </div>
                        <!-- <div class="row"> -->


                        <button style="width: 120px; height: 40px; margin-left: 960px;
                        background-color: #606066; color: #ffffff">클래스문의</button>

                    </div>
                    <!-- <div class="detail_info"> -->
                </div>
                <!-- <div class="row"> -->
            </div>
            <!-- <div class="container col-lg-12"> -->


            <!--페이지 넘버-->
            <nav aria-label="Page navigation example" id="product-pn">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled "><a class="page-link" href="#"
                        tabindex="-1"> <</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item"><a class="page-link" href="#">></a></li>
                </ul>
            </nav>

        </div>
        <!-- <div class="col-lg-12 col-md-12 mx-auto" id="detail"> -->
        <footer>
                        <div class="col px-0">
                            <jsp:include page="../footer.jsp"></jsp:include>
                        </div>
                    </footer>
    </div>
    <!-- <div class="row"> -->


    </div>
    <!-- <div class="container"> -->


    <hr>


    <!-- Custom scripts for this template -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=74d4f74bdd85b5f1c1d2492eaf6b2a88&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 7 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${detailclass.basAddr}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
        
        var Circle = new daum.maps.Circle({
            center : new daum.maps.LatLng(result[0].y, result[0].x),  // 원의 중심좌표 
            radius: 1000, // 미터 단위의 원의 반지름
            strokeWeight: 5, // 선의 두께 
            strokeColor: '#75B8FA', // 선의 색깔
            strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명
            strokeStyle: 'dashed', // 선의 스타일 
            fillColor: '#CFE7FF', // 채우기 색깔
            fillOpacity: 0.7  // 채우기 불투명도
        });
       	Circle.setMap(map); 
       
        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new daum.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new daum.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">클래스 받을 지역</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
<script>
$('.accordian-body').on('show.bs.collapse', function () {
    $(this).closest("table")
        .find(".collapse.in")
        .not(this)
        .collapse('toggle')
})
</script>
    <script>
    
        var testtTop;
        var setId = "#testt";
        $(document).ready(function() {
            $("#headerNav").load("headerNav.html")

            testtTop = $("#detail").offset().top;
            console.log(testtTop);
            $(setId).css("position", "absolute");
            $(setId).css("top", (testtTop) + "px");

            $('#star1').raty({
                path : "/upload/img/raty/",
                start : 1,
                starOff : 'star-off-big.png',
                starOn : 'star-on-big.png',
                width : 200
            });
        });

        function scroll_follow(id) {
            $(window).scroll(function() //스크롤이 움직일때마다 이벤트 발생
            {
                var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
                if (position > 985) {
                    $(id).css("position", "fixed-top");
                    $(id).css("top", position + "px");
                    $(id).css("width", "1110px");

                } else {
                    $(id).css("top", (testtTop) + "px");
                    $(id).css("position", "absolute");
                    $(id).css("width", "1110px");
                }

            });
        }
        scroll_follow(setId);

        function click_button() {

        }

        $('#click').raty(
                {
                    click : function(score, evt) {
                        alert('ID: ' + this.attr('id') + '\nscore: ' + score
                                + '\nevent: ' + evt);
                    }
                });
    </script>
</body>

</html>
