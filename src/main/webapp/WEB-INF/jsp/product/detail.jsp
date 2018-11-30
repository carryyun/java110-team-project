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

<link href="/css/common.css" rel="stylesheet">
<link href="/css/prod_detail.css" rel="stylesheet">

<style type="text/css">
#STATICMENU { 
    margin: 0pt; padding: 0pt;  
    position: absolute; right: 0px; top: 0px;
    border-top: 1px solid silver;
    }
</style>



</head>
<body style="background-color: #F2F4F7" onload="InitializeStaticMenu()">
<div id="wrap" style="background-color: #fff">
        <div class="col" style="position: absolute; height: 105px; background-color: white">
            <!-- 헤더 배경색 적용 -->
        </div>
        
    <div class="container">
    <div class="row">
    
            <div class="col-lg-12" id="headermain">
                <jsp:include page="../headerMain.jsp"></jsp:include>
            </div>
            <!-- 카테고리 nav (스크립트로 임시 inclue) -->
            <div class="col-lg-12" id="headernav">
                <jsp:include page="../headerNav.jsp"></jsp:include>
            </div>

        <div class="col-lg-9">
            <!-- 상품 상세보기 -->
            <jsp:include page="prodDetail_1.jsp"></jsp:include>

            <!-- 상품 상세정보, 상품평, QnA-->
            <jsp:include page="prodDetail_2.jsp"></jsp:include>
        </div>

        <div class="col-lg-3">
            <!-- 판매자가 수강한 클래스 정보들 -->
            <jsp:include page="prodDetail_3.jsp"></jsp:include>

        </div>

    </div>
</div>
</div>
    <script type="text/javascript">
    var testtTop;
    var setId = "#testt";
    testtTop = $("#detail").offset().top - $("#headermain").offset().top - $("#headernav").offset().top;
    
    console.log(testtTop);
    $(setId).css("position", "absolute");
    $(setId).css("top", (testtTop) + "px");
    $(setId).css("width", "94.6%");
    </script>
</body>

<!-- Script 시작 -->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/js/jquery.raty.min.js"></script>
    <script src="/js/clean-blog.js"></script>
    <!-- Custom scripts for this template -->
    
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.lazyload/1.9.1/jquery.lazyload.min.js"></script>

<script>
$("img.lazy").lazyload({
    threshold : 500,        //뷰포트에 보이기 300px 전에 미리 로딩
    effect : "fadeIn"       //효과
});
</script>
    
    <script type="text/javascript">
 var stmnLEFT = 0; // 오른쪽 여백 
 var stmnGAP1 = 0; // 위쪽 여백 
 var stmnGAP2 = 50; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
 var stmnBASE = 50; // 스크롤 시작위치 
 var stmnActivateSpeed = 30; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
 var stmnScrollSpeed = 1; //스크롤 속도 (클수록 느림)
 var stmnTimer; 
 
 function RefreshStaticMenu() { 
  var stmnStartPoint, stmnEndPoint; 
  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
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
    <script>
        $(document).ready(function() {
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
                var position = $(window).scrollTop()- $("#headermain").offset().top - $("#headernav").offset().top - 48; // 현재 스크롤바의 위치값을 반환합니다.
                if (position > testtTop) {
                    $(id).css("position", "fixed-top");
                    $(id).css("top", position + "px");
                    $(id).css("width", "94.6%");

                } else {
                    $(id).css("top", (testtTop) + "px");
                    $(id).css("position", "absolute");
                    $(id).css("width", "94.6%");
                }

            });
        }
        scroll_follow(setId);

    
        $('#click').raty(
                {
                    click : function(score, evt) {
                        alert('ID: ' + this.attr('id') + '\nscore: ' + score
                                + '\nevent: ' + evt);
                    }
                });
    </script>

</html>
