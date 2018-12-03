<%@page import="bitcamp.java110.cms.domain.Classes"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>클래스 등록</title>

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

	<!-- 아래와 같이 주석처리한 이유는 bootstrap이 두번 선언된 경우에 동작이 두번할수도 있음 -->

<style type="text/css">
#STATICMENU { 
	margin: 0pt; padding: 0pt;  
	position: absolute; right: 0px; top: 0px;
	transform: translateX(95%);
	width : 300px;
	}
.mstcheck{
 position: absolute;
 right: 0;
 bottom: 0;
}
 
</style>

</head>
<body style="background-color: #F2F4F7" onload="InitializeStaticMenu()">
<div class="col" style="position: absolute; height: 105px; background-color: white">
    <!-- 헤더 배경색 적용 -->
</div>
    <div class="container">
        <div class="row">
			<div class="col-lg-12">
                <jsp:include page="../headerMain.jsp"></jsp:include>
            </div>
            <!-- 카테고리 nav (스크립트로 임시 inclue) -->
            <div class="col-lg-12">
                <jsp:include page="../headerNav.jsp"></jsp:include>
            </div>
            
            <div class="col-lg-12 col-md-12 mt-5">
	            <h2>클래스 상세보기</h2>
	            <hr class="FhrBotMargin">
            </div>
            <div class="col-lg-12">
            <div class="col-lg-9 text-center">
                <div class="row">
                    <aside class="col-lg-12 col-md-12 mx-auto">
                        <article class="gallery-wrap">
                                <div>
				                    <div id="carouselExampleIndicators" class="carousel slide" data-interval="false" data-ride="carousel">
									  <ol class="carousel-indicators">
									    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
									    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
									    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
									    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
									  </ol>
									  <div class="carousel-inner">
									    
									    <c:set var="cfl" value="${detailclass.cfile}"/>
									    <%
                                            String cfile = (String)pageContext.getAttribute("cfl");
                                            if(cfile.endsWith("jpg") || cfile.endsWith("png")){
                                        %>    
                                        <div class="carousel-item active">
									      <img style="width=100%; margin-left:-10px;" class="d-block w-100" src="${detailclass.cfile}" alt="First slide">
									      <%     
                                            }else {
                                             int cfileidx = cfile.indexOf("=");
                                             String cfileurl = cfile.substring(cfileidx+1);
                                        %>
                                            <div class="carousel-item active" style="margin-bottom: -5px;">
                                              <iframe width="100%" height="450" style="margin-left:-10px;" src="https://www.youtube.com/embed/<%=cfileurl%>" 
                                              frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                                              allowfullscreen></iframe>
                                        <%
                                            }
                                        %>
									      
									    </div>
									    <c:forEach items="${clsfilelist}" var="cf" varStatus="i">
									    	<c:set var="divi" value="${cf.fname}"/>
									    	<%
									    		String fna = (String)pageContext.getAttribute("divi");
									    		if(fna.endsWith("jpg") || fna.endsWith("png")){
									    	%>	  
									    		<div class="carousel-item">
											      <img class="d-block w-100" style="width:100%; height:450px; margin-left:-10px; " 
											      src="${cf.fname}" alt="${i.count}">
											    </div>
									    	<%	  
									    		}else {
									    		 int idx = fna.indexOf("=");
									    		 String fnaurl = fna.substring(idx+1);
									    	%>
											    <div class="carousel-item" style="margin-bottom: -5px;">
											      <iframe width="100%" height="450" style="margin-left:-10px;" src="https://www.youtube.com/embed/<%=fnaurl%>" 
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
                                
                                        <!-- item-property .// -->
                                    <!-- col.// -->

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
						<div class="col-lg-12" id="testt">
				            <ul class="under-navbar-nav col-lg-9 col-md-12">
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
    <!--요약 , 강사소개 , 강의설명,  위치, 클래스후기-->
        <div class="row">
          <div class="col-lg-9">
            <!-- Links -->
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
	                    <div class ="row" >
	                    <div id="map" style="width:500px; height:400px; margin-left:10px; float:left;"></div>
	                    <div class="dddd" style="float:right; width:200px; margin-top:60px;">
	                    <div id="adr" class = "addr" style="height:50px;"><div><strong>기본 주소</strong></div>  ${detailclass.basAddr}</div>
	                    <div id="adr" class = "addr"><div><strong>상세 주소</strong></div>  ${detailclass.detAddr}</div>
	                    </div>
	                    </div>
	                </div>
                
                <!-- <div class="row"> -->
	            </div>
	            <!-- <div class="container col-lg-12"> -->
	            </div>
			</div>
            <div class="row" style="position: relative; left:53%;">
            <div class="mstcheck col-lg-12" style="margin-top:3%;">
				<button type="button" class="clsstat btn btn-primary btn-sm" id="allow" onClick="clicky(${detailclass.no})">신청 수락</button>
				<button type="button" class="clsstat btn btn-primary btn-sm" id="reject"
				onClick="clsject()">신청 거절</button><br/>
                
				<textarea class="masterreje" id="reje" style=" position:relative; margin-top:1%; display: none; right: 37%; resize:none; width:600px;" rows="2" placeholder="거절사유를 입력해주세요"></textarea>
                <br/>
                <button type="button" class="masty btn btn-primary btn-sm" style="display: none; position:relative; left:13%;" onClick="anserclick(${detailclass.no})" >확인</button>
 
                </div><!--  12 -->
				</div><!--  row -->
			</div>
        </div>
        <!-- <div class="col-lg-12 col-md-12 mx-auto" id="detail"> -->
    <!-- <div class="container"> -->
    <!-- <div class="row"> -->
        <footer>
            <div class="col px-0">
                <jsp:include page="../footer.jsp"></jsp:include>
            </div>
        </footer>

</body>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/vendor/jquery/jquery.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="/js/clean-blog.js"></script>

<script>
function clsject() {
    if($("#reje").css("display") == "none"){
		$("#reje").show();
		$(".masty").show();
	}else{
		$("#reje").hide();
		$(".masty").hide();
	}
}

//신청 거절 버튼
function anserclick(no){
    var anserfn = $("#reje").val();
    var statno = "N";
    
       $.ajax({
        type: "POST",
        data: {
            "no": no,
            "stat": statno ,
            "note": anserfn
            
        },
        url: "clsnote.do",
        success : function() {
            location.href='classreqlist'
            },error : function(error,status){
                swal({
                    text : "이미 확인한 클래스 입니다.",
                    button : "확인"
                  })    
            }
       });
}

function clicky(no){
    var statyes = "Y";
    
    $.ajax({
        type: "POST",
        data: {
            "no": no,
            "stat": statyes
            
        },
        url: "clsstat.do",
        success : function() {
            location.href='classreqlist'
            },error : function(error,status){
                swal({
                    text : "이미 답변한 문의이거나 삭제된 문의입니다.",
                    button : "확인",
                  })    
            }
       });
    
}
  
</script>
<script type="text/javascript">
 var stmnLEFT = 0; // 오른쪽 여백 
 var stmnGAP1 = 0; // 위쪽 여백 
 var stmnGAP2 = 50; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
 var stmnBASE = 0; // 스크롤 시작위치 
 var stmnActivateSpeed = 35; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
 var stmnScrollSpeed = 20; //스크롤 속도 (클수록 느림)
 var stmnTimer; 
 var stmnsub = 300; // stmtEndPoint 맞춰줄 때 쓴다.
 
 function RefreshStaticMenu() { 
  var stmnStartPoint, stmnEndPoint; 
  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2 - stmnsub; 
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
    <!-- Custom scripts for this template -->
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
    
        var testtTop;
        var setId = "#testt";
        $(document).ready(function() {
            $("#headerNav").load("headerNav.html")

            testtTop = $("#detail").offset().top;
            console.log(testtTop);
            console.log("toggle2");
            $(setId).css("position", "absolute");
            $(setId).css("top", (testtTop) + "px");
            
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
        
    </script>
</html>
