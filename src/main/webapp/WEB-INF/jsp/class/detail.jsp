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

<script type="text/javascript">
 var stmnLEFT = 0; // 오른쪽 여백 
 var stmnGAP1 = 0; // 위쪽 여백 
 var stmnGAP2 = 150; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
 var stmnBASE = 150; // 스크롤 시작위치 
 var stmnActivateSpeed = 35; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
 var stmnScrollSpeed = 20; //스크롤 속도 (클수록 느림)
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

<style type="text/css">
#STATICMENU { 
	margin: 0pt; padding: 0pt;  
	position: absolute; right: 0px; top: 0px;
	transform: translateX(95%);
	border-top: 1px solid silver;
	}
</style>



</head>
<body style="background-color: #F2F4F7" onload="InitializeStaticMenu()">

    <hr>
    <div class="container">
        <div class="row">

            <h2>클래스 상세보기</h2>
            <hr class="FhrBotMargin">

            <div class="col-lg-12 col-md-12 text-center">


                <div class="row">
                    <aside class="col-lg-5">
                        <article class="gallery-wrap">
                            <div class="img-big-wrap">
                                <div>
                                    <a href="#"><img id="prod_img"
                                        src="/upload/img/product/700x400/julme.PNG" alt=""></a>
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
                    <div class="row">
                    	<img style = "width:300px; height:300px;"src="/upload/img/product/700x400/julme.PNG" alt="">
                    	<div class = "shortinfo" style="margin-right:30px;"><strong>금액</strong>  ${detailclass.pric}원</div>
	                    <div class = "shortinfo"><strong>총 수업시간</strong>  ${detailclass.time}</div>
	                    <div class = "shortinfo"><strong>모집인원</strong>  ${detailclass.capa}명</div>
                    </div>
                    <div><strong>멘토 : ${detailclass.mentee.nick}</strong></div>
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
	                    <img style = "width:500px; height:500px;"src="/upload/img/product/700x400/julme.PNG" alt="">
	                    <div id="adr" class = "addr"><strong>기본 주소</strong>  ${detailclass.basAddr}</div>
	                    <div id="adr" class = "addr"><strong>상세 주소</strong>  ${detailclass.detAddr}</div>
	                    </div>
	                </div>
                
                <div class="detail_info">
                    <hr class="Fhr" id="class-review">
                    <h3>클래스 후기</h3>
                    ${detailclass.tinfo}
                </div>
                
                <hr class="Fhr" id="class_info">    
                <div class="detail_info">
                </div>  
                <!-- <div class="detail_info"> -->  
                <hr class="Fhr" id="class-review">   
                <div class="detail_info">   
                    <div class="row" style="margin: 0 auto">    
                        <div class="col text-center">   
                            <%-- <h1 class="rating-num">${detailclass.star}</h1>  --%>
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
                        <table width="100%" border="0">
                            <div class="col-md-9 col-md-offset-0">
                                <tr>
                                    <td width="77%">
                                        <!-- <div class=""> -->
                                        <form class="form-horizontal" action="send.php" method="post">
                                            <fieldset>
                                                <!-- Message body -->
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label" for="message">클래스 후기</label>
                                                    <div class="col-md-9">
                                                        <textarea class="form-control" id="message" name="message"
                                                            placeholder="클래스 후기를 등록해주세요." rows="5"></textarea>
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label" for="message">별점</label>

                                                    <div id="star1" class="col-lg-9"></div>
                                                </div>
                                                <!-- </div> -->
                                                <!-- <div class=""> -->
                                    </td>
                                    <td align="center" valign="top" width="23%">
                                        <!-- Form actions -->
                                        <div class="form-group">
                                            <!--col-lg-12추가했음-->
                                            <div class="col-md-12 col-lg-12 text-center">
                                                <button type="submit" class="btn btn-primary btn-md"
                                                    style="background-color: #606066; color: #ffffff">등록</button>
                                                <button type="reset" class="btn btn-default btn-md">취소</button>
                                            </div>
                                        </div>

                                    </td>
                                    </fieldset>
                                    </form>
                                </tr>
                            </div>
                            <!-- <div class="col-md-9 col-md-offset-0"> -->
                        </table>
                    </div>

                    <hr>
                    <div class ="row">
                    <c:forEach items="${clsreqlist}" var="r">
                        <div class="media"
                            style="border-bottom: 0.3px solid rgba(0, 0, 0, 0.5)">
                            <div class="col-lg-1 text-center">

                                <img src='${r.mentee.phot}' alt="singup" id="circle">
                                ${r.mentee.nick}
                            </div>
                            <div class="col-lg-11 media-body">${r.conts}</div>
                            <%-- <%
                            	int rstar = (int)pageContext.getAttribute("cr");
                            for(int i=0; i<5;i++){
							  if(i<rstar){
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
            				%>  --%>                    
                        </div>
                    </c:forEach>
                    </div>
	
                    <hr class="Fhr" id="qna">
                    <div class="detail_info">
                        <h3>Q&A</h3>
                        <div class="row">
                            <div class="col-lg-12">
                              <form id="qnaform">
                                <table class="table row container" id="qna_table"
                                    style="margin: 0 auto">
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
                                    <c:forEach items="${clsqnalist}" var="cq"> 
                                    <tbody class="col-lg-12">
                                        <tr class="accordion-toggle row" data-toggle="collapse" data-target="#demo1">
                                            <th class="col-lg-1" scope="row" id="qna_th">${cq.no}</th>
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
                                        		<div class="accordian-body collapse" id="demo1">
                                        			${cq.conts}
                                        		</div>
                                        			<c:set var="ans" value="${cq.anser}"/>
		                                            <%
		                                            	String ans = (String)pageContext.getAttribute("ans");
		                                            	if(ans==null){
		                                           	%>
		                                           		<div class="accordian-body collapse" >
		                                           		답변이 등록되지 않았습니다.
		                                           		</div>
		                                           	<%  }else{
		                                           	%>
		                                            	<div class="accordian-body collapse" >
		                                           		${cq.anser}
		                                           		</div>
		                                           	<%  
		                                           	}
		                                            %>
                                        	</td>
                                        </tr>
                                    </tbody>
                                    </c:forEach>
                                </table>
                              </form>
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
    </div>
    <!-- <div class="row"> -->


    </div>
    <!-- <div class="container"> -->


    <hr>


    <!-- Bootstrap core JavaScript -->
    <script src="/vendor/jquery/jquery.min.js"></script>

    <script
        src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/js/jquery.raty.min.js"></script>
    <script src="/js/clean-blog.js"></script>





    <!-- Custom scripts for this template -->
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
