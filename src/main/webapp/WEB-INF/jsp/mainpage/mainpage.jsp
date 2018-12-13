<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
<meta charset="UTF-8">  
<title>하루 - Haru</title>

<%-- 부트스트랩 --%>
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<%-- 만든 css --%>
<link rel="stylesheet" href="/css/main-menu.css">

<%-- maincarousel --%>
<link href="/css/owl.carousel.css" rel="stylesheet">
<link href="/css/clean-blog.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<link href="/css/main-menu.css" rel="stylesheet">

<style type="text/css">
ul#RankingUl li:nth-child(odd){
    background-color: #f0f0f0;
}
ul#RankingUl li:nth-child(even){
    background-color: #fcfcfc; 
}
ul#RankingUl li:hover{
    background-color: #FFB53C;
}
</style>

</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <jsp:include page="../headerMain.jsp"></jsp:include>
            </div>
        </div>
    </div>

    <div class="text-center" style="max-width: 99%;" id="main-carousel">
        <div class="row">
            <!--Carousel Wrapper-->
            <div id="carousel-banner" class="carousel slide carousel-fade" data-ride="carousel">
                <!--Indicators--> 
                <ol class="carousel-indicators" id="carousel-ol">
                    <li data-target="#carousel-banner" data-slide-to="0"><img class="w-100 h-100" src="/upload/img/banner_1.png" alt="First"></li>
                    <li data-target="#carousel-banner" data-slide-to="1" class="active"><img class="w-100 h-100" src="/upload/img/banner_2.png" alt="Second"></li>
                    <li data-target="#carousel-banner" data-slide-to="2"><img class="w-100 h-100" src="/upload/img/banner_3.png" alt="Third"></li>
                </ol>
                <!--/.Indicators-->
                <!--Slides-->
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item">
                        <div class="view">
                            <img class="w-100" src="/upload/img/banner_1.png" alt="banner1">
                            <div class="mask rgba-black-light"></div>
                        </div>
                    </div>
                    <div class="carousel-item active">
                        <!--Mask color-->
                        <div class="view">
                            <img class="w-100" src="/upload/img/banner_2.png" alt="banner2">
                            <div class="mask rgba-black-strong"></div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <!--Mask color-->
                        <div class="view">
                            <img class="w-100" src="/upload/img/banner_3.png" alt="banner3">
                            <div class="mask rgba-black-slight"></div>
                        </div>
                    </div>
                </div> 
                <!--/.Slides-->
            </div>

        </div>
        <!-- main carousel main-->
    </div>
    <!-- main carousel container-->
    <!-- 메인 carousel -->
    <div class="col-lg-12 px-0" 
    style="position: absolute; top:504px; height: 41px; background-color: #f3f3f3">
            <!-- 헤더 배경색 적용 -->
        </div>
    <div class="container">
        <div class="row"> 
            <!-- 카테고리 네비 -->
            <div class="col-12" style="margin-top: -2px;">
                <jsp:include page="../headerNav.jsp"></jsp:include>
            </div>
            

            <!-- 사이드바 -->
            <div class="col-12 my-3">
                <div class="row">
                    <!-- 인싸예감 클래스(카르셀) -->
                    <div class="col-lg-9 border-right border-secondary">
                        <div class="row">
	                            <div class="col-lg-12 text-left">
	                                <div class="row">
			                            <div class="col-lg-3 text-left">
								           <h3 style="font-size: 1.5rem; font-weight: 700; margin-left:27px; float: left;">추천 클래스</h3>
								        </div>
					                    <div class="col-lg-9 text-left">
		                                   <h4 style="font-size: 1rem; color:#a9a9a9; margin-left:-60px ;margin-top:9px; float: left;">오늘의 추천 클래스를 수강해보세요</h4>
		                                </div>
	                                </div>
						        </div>
						        <div class="col-lg-12 text-left mt-3">
                                <div id="owl-hotCls" class="owl-carousel col-lg-10 mt-2" style="margin:0 auto">

                                    </div>
                                    <div class="owl-btns">
                                        <div class="cusnextCls"><i class="fas fa-angle-right"></i></div>
                                        <div class="cusprevCls"><i class="fas fa-angle-left"></i></div>
                                    </div>
                                </div>
                        </div>
                    </div>
                    
                    
                    <div class="col-lg-3 ">
                        <div class="col px-0">
                            <h2 class="mb-4" style="font-size: 1.5rem; font-weight: 700;">클래스 랭킹</h2>
                            <ul id="RankingUl">
                                <c:forEach items="${classRanking}" var="cr" varStatus="i">
                                <c:choose>
                                    <c:when test="${i.count == 1 }">
                                        <li class="py-2 pl-2">
	                                        <img style="width: 18px; height: 24px; margin-right: 9px" alt="/upload/img/Goldmedal.png" src="/upload/img/Goldmedal.png">
	                                        
	                                        <c:choose>
				                                <c:when test="${fn:length(cr.titl) >14}">
	                                        <a href="../class/detail?no=${cr.no}" target="_blank">${fn:substring(cr.titl,0,14)}...</a>
				                                </c:when>
				                                <c:otherwise>
				                                    <a href="../class/detail?no=${cr.no} " target="_blank">${cr.titl}</a>
				                                </c:otherwise>
				                            </c:choose>
	                                        
                                        </li>
                                    </c:when>
                                    <c:when test="${i.count == 2 }">
                                        <li class="py-2 pl-2" >
	                                        <img style="width: 18px; height: 24px; margin-right: 9px" alt="/upload/img/Goldmedal.png" src="/upload/img/Silvermedal.png">
	                                        
	                                        <c:choose>
                                                <c:when test="${fn:length(cr.titl) >16}">
                                                    <a href="../class/detail?no=${cr.no}" target="_blank">${fn:substring(cr.titl,0,16)}...</a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="../class/detail?no=${cr.no}" target="_blank">${cr.titl}</a>
                                                </c:otherwise>
                                            </c:choose>
	                                        
                                        </li>
                                    </c:when>
                                    <c:when test="${i.count == 3 }">
                                        <li class="py-2 pl-2" >
	                                        <img style="width: 18px; height: 24px; margin-right: 9px" alt="/upload/img/Goldmedal.png" src="/upload/img/Bronzemedal.png">
	                                        
	                                        <c:choose>
                                                <c:when test="${fn:length(cr.titl) >16}">
                                            <a href="../class/detail?no=${cr.no}" target="_blank">${fn:substring(cr.titl,0,16)}...</a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="../class/detail?no=${cr.no}" target="_blank">${cr.titl}</a>
                                                </c:otherwise>
                                            </c:choose>
	                                        
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="py-2 pl-2" >
                                           <span style="width:24px ; display:inline-flex; text-align:center ; font-weight: 600; margin-left: 3px">${i.count}.</span>
                                           
                                           <c:choose>
                                                <c:when test="${fn:length(cr.titl) >16}">
                                            <a href="../class/detail?no=${cr.no}" target="_blank">${fn:substring(cr.titl,0,16)}...</a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="../class/detail?no=${cr.no}" target="_blank">${cr.titl}</a>
                                                </c:otherwise>
                                            </c:choose>
                                            
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                                
                                
                                    
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
 
                    </div>
                    </div>
        </div>
        <!-- 사이드바 container-->
    </div>

    <!-- 오늘의 추천작품 -->
    <div class="container">
        <hr class="Fhr" />
        <div class="row  my-3">
            <div class="col-lg-2 text-left">
            <h3 style="font-size: 1.5rem; font-weight: 700; margin-left:27px; float: left;">추천작품</h3>
        </div>
        <div class="col-lg-4 text-left">
            <h4 style="font-size: 1rem; color:#a9a9a9; margin-top:9px; margin-left:-60px; float: left;">오늘의 추천 작품을 만나보세요</h4>
        </div>
        <div class="col-lg-6 text-right">
            <a class="btn btn-primary float-right mb-3" href="../product/prdt">작품 더보기 </a>
        </div>
            
        </div><!-- 추천작품 row -->
    </div>
    <!-- 오늘의 추천작품 container--> 

    <!-- 오늘의 추천작품 carousel-->
    <div class="container" style="margin-bottom: 80px">
        <div class="row">
            <div class="col">
                <div id="owl-hotItem" class="owl-carousel col-lg-10 mt-2 px-1" style="margin:0 auto;">

                </div>
                <div class="owl-btns">
                    <div class="cusnextPrdt"><i class="fas fa-angle-right"></i></div>
                    <div class="cusprevPrdt"><i class="fas fa-angle-left"></i></div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container" style="margin-bottom: 80px">
    <hr class="Fhr">
    <div class="row  my-3">
        <div class="col-lg-2 text-left">
            <h3 style="font-size: 1.5rem; font-weight: 700; margin-left:27px; float: left;">실시간 후기</h3>
        </div>
        <div class="col-lg-4 text-left">
            <h4 style="font-size: 1rem; color:#a9a9a9; margin-top:9px; margin-left:-40px; float: left;">회원들의 후기를 들어보세요</h4>
        </div>
        <div class="col-lg-6 text-right">
        </div>
        
    </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="row">
                   <!-- 실시간 클래스 후기 -->
                   
                   <c:forEach items="${classRepList}" var="cr">
                   <div class="col-lg-10 mx-auto px-2 py-2 mb-3" style="background-color: #f0f0f0" onclick ="location.href='../class/detail?no=${cr.cno}'">
                        <div class="col-lg-3 p-0" style="float: left">
                            <c:set var="transFile" value="${cr.classes.cfile}" />
                            <%
                                String transFile = (String)pageContext.getAttribute("transFile");
                                if(transFile.endsWith("jpg") || transFile.endsWith("png")){
                            %>
                            <img style="width: 110px; height: 116px; margin-top: 9px;" alt="${cr.classes.cfile}" src="${cr.classes.cfile}">
                            <%
                                }else{
                                  
                            %>
                            <img style="width: 110px; height: 116px; margin-top: 9px;" alt="${cr.classes.cfile}" src="https://i.ytimg.com/vi/${cr.classes.cfile}/mqdefault.jpg">
                            <%
                                }
                            %>
                            
                        </div>
                        <div class="col-lg-9 px-2 py-0" style="height:131px; float: left">
                            <div id="Titl" style="height: 44px;font-size: 15px; font-weight: 600">
                                ${cr.titl}
                            </div>
                            <div id="repConts" style="height:57px; font-size: 13px;color: #6e6e6e">
                            <c:choose>
                                <c:when test="${fn:length(cr.conts) >85}">
                                        ${fn:substring(cr.conts,0,85)}...
                                </c:when>
                                <c:otherwise>
                                    ${cr.conts}
                                </c:otherwise>
                            </c:choose>
                            </div>
                            <div id="repMete" style="margin-top:5px; font-size: 14px">
                                <img alt="${cr.mentee.phot}" src="${cr.mentee.phot}" style="width: 25px; height: 25px; border-radius: 50%;float: left">
                                <div id="repMete_Nick" style="float: left; margin-top: 3px;">
                                    ${cr.mentee.nick}
                                </div>
                            </div>
                        </div>
                   </div>
                   </c:forEach>
                   
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                   <!-- 실시간 상품 후기 -->
                   
                   <c:forEach items="${productRepList}" var="pr">
                   <div class="col-lg-10 mx-auto px-2 py-2 mb-3" style="background-color: #f0f0f0" onclick ="location.href='../product/detail?no=${pr.ptno}'">
                        <div class="col-lg-3 p-0" style="float: left">
                            <img style="width: 110px; height: 110px; margin-top: 12px;" alt="${pr.prdtphot}" src="${pr.prdtphot}"> 
                        </div>
                        <div class="col-lg-9 px-2 py-0" style="height:131px; float: left">
                            <div id="Titl" style="height: 44px;font-size: 15px; font-weight: 600">
                                ${pr.titl}
                            </div>
                            <div id="repConts" style="height:57px; font-size: 13px;color: #6e6e6e">
                            <c:choose>
	                            <c:when test="${fn:length(pr.conts) >85}">
	                                    ${fn:substring(pr.conts,0,85)}...
	                            </c:when>
	                            <c:otherwise>
								    ${pr.conts}
								</c:otherwise>
                            </c:choose>
                            </div>
                            <div id="repMete" style="margin-top:5px; font-size: 14px">
                                <img alt="${pr.mentee.phot}" src="${pr.mentee.phot}" style="width: 25px; height: 25px; border-radius: 50%;float: left">
                                <div id="repMete_Nick" style="float: left; margin-top: 3px;">
                                    ${pr.mentee.nick}
                                </div>
                            </div>
                        </div>
                   </div>
                   </c:forEach>
                   
                </div>
            </div>
        </div>
    </div>
    
    
    <footer>
        <div class="col px-0">
            <jsp:include page="../footer.jsp"></jsp:include>
        </div>
    </footer>
    
    <!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script> -->
   <!-- js 추가 -->
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   
   <script src="/js/clean-blog.js"></script>
    <script src="/js/owl.carousel.js"></script>
    <script>
    $(document).ready(function(){
    		console.log('${sessionScope.loginUser.phot}');
        $('#menusubs').remove();
    });
    function setLike(evt,cno,obj){
        evt.preventDefault();
        if('${sessionScope.loginUser}' != ''){
            $.ajax({
                type : "POST" , 
                data : {
                    "cno" : cno , 
                    "meno" : '${sessionScope.loginUser.no}'
                },
                url : "../class/clslikeins.do" ,
                success : function() {
                    swal({
                        text : "찜클래스가 등록되었습니다",
                        icon : "success",
                        button : "확인",
                      })
              $(obj).attr('class','fas fa-star');
              $(obj).css("color","#FFB53C");
                    /* location.href="detail?no="+${detailclass.no}; */
                },error : function(error,status){
                    swal({
                        text : "이미 찜클래스에 등록된 클래스입니다.",
                        button : "확인",
                      })
                }
            });
        }else{
            swal({
                text : "로그인 후 이용 가능합니다",
                button : "확인",
              })
        }
    }
    
    var owlCls = $("#owl-hotCls");
    var owlPrdt = $("#owl-hotItem");
    $(document).ready(function(){
        var dataCls = { "itemsCls" : ${cp_list} };
        var dataPrdt = { "itemsPrdt" : ${pp_list} };
        
        owlCls.owlCarousel({
        nav:false,
        loop:true,
        items:3,
        margin:10,
        jsonPath : 'json/customData.json',
        jsonSuccess : customDataSuccessCls(dataCls),
        dots: false
      });
      
        
      function customDataSuccessCls(dataCls) {
          String.prototype.right = function(length){
              if(this.length <= length){
                 return this;
              }
              else{
                 return this.substring(this.length - length, this.length);
              }
           }
          
          var content = "";
          for ( var i in dataCls["itemsCls"]) {
           
           var cno = dataCls["itemsCls"][i].classes.no;
           var cfile = dataCls["itemsCls"][i].classes.cfile;
           var titl = dataCls["itemsCls"][i].classes.titl;
           var pric = dataCls["itemsCls"][i].classes.pric;
           var star = dataCls["itemsCls"][i].classes.star;
           var mtname = dataCls["itemsCls"][i].middleTagName;
           var name =  dataCls["itemsCls"][i].name;
           var nick =  dataCls["itemsCls"][i].nick;
           
           if(cfile.endsWith(".jpg") || cfile.endsWith(".png")){
               
           }else{
               cfile=cfile.right(11);
               cfile= "" + "https://i.ytimg.com/vi/" + cfile + "/mqdefault.jpg"
           }
           
           content += "<a href='../class/detail?no="+ cno +"'>"
           content += "<div class='col-lg-12' id='owl-col'>"
           content += "<div class='row' id='owl-row'>"
           content += '<div class="imgcover col-lg-12" style="height: 200px;position:absolute;">'
           content += '</div>'
           <c:set var="stopLoop" value="true"/>
           <c:set var="lastAddStar" value="true"/>
           if('${sessionScope.loginUser}'==''){ 
               content += "<i id='owl-i' class='far fa-star' onclick='setLike(event,"+ cno +",this)'></i>"
           }else{
              <c:forEach items="${clike_popul}" var="cp">
              <c:if test="${stopLoop}">
                 if(${cp.cno} == cno){
                    content += "<i style='color:#FFB53C' id='owl-i' class='fas fa-star' onclick='setLike(event,"+ cno +",this)'></i>";
                    <c:set var="stopLoop" value="false"/>
                    <c:set var="lastAddStar" value="false"/>
                 }else if(${cp.cno} != cno){
                     <c:set var="stopLoop" value="true"/>
                      <c:set var="lastAddStar" value="true"/> // stopLoop와 lastAddStar가 forEach안에서 조건에 걸리는게 없는데 false로 바뀌는거같음
                 }
              </c:if>
              </c:forEach>
              <c:if test="${lastAddStar}">
               content += "<i id='owl-i' class='far fa-star' onclick='setLike(event,"+ cno +",this)'></i>";
               </c:if>
           }
           <c:set var="stopLoop" value="true"/>
           <c:set var="lastAddStar" value="true"/>
           content += '<div style="padding: 0 5px; top: 20px; width: auto; height: auto; position: absolute; background-color: #f58500; color: white; border-bottom-right-radius: 10px">'+nick+'</div>'
           content += '<div style="padding: 0 5px; top: 45px; width: auto; height: auto; position: absolute; background-color: #333873; color: white; border-bottom-right-radius: 10px">'+name+' 멘토</div>'
           
           content += "<img id='owl-img' src=\"" +cfile+ "\" alt=\"" +titl+ "\">"
           
           if(titl.length>22){
               content += "<div class='col-lg-8 pr-0' id='owl-col2'>" + titl.substring(0,22) + "...</div>"
           }else{
               content += "<div class='col-lg-8' id='owl-col2'>" + titl + "</div>" 
           }
           
           content += "<div class='col-lg-4' id='owl-coltag'>" + mtname + "</div>"
           
           content += "<div class='col-lg-6' id='owl-colstar'>"
           for(var j=0; j<5; j++) {
               if(j<star){
                   content += "<img id='owl-star' width='15px' height='15px' src='/upload/img/raty/star-on.png' alt='star-on'>"
               }else{
                   content += "<img id='owl-star' width='15px' height='15px' src='/upload/img/raty/star-off.png' alt='star-off'>"
               }
           }
           content += "</div>"
           pric = "" + pric;
           pric = pric.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,')
           content += "<div class='col-lg-6' id='owl-col3'>" + pric + "원</div>"
           content += "</div>"
           content += "</div>"
           content += "</a>"
          }
          owlCls.html(content);
      }
      
      
      
      /* 아이템 카르셀 */
      owlPrdt.owlCarousel({
          nav:false,
          loop:true,
          items:4,
          margin:10,
          jsonPath : 'json/customData.json',
          jsonSuccess : customDataSuccessPrdt(dataPrdt),
          dots: false
        });

        function customDataSuccessPrdt(dataPrdt) {
            var content = "";
            for ( var i in dataPrdt["itemsPrdt"]) {
             var ptno = dataPrdt["itemsPrdt"][i].product.no;
             var phot = dataPrdt["itemsPrdt"][i].product.phot;
             var titl = dataPrdt["itemsPrdt"][i].product.titl;
             var pric = dataPrdt["itemsPrdt"][i].product.pric;
             var star = dataPrdt["itemsPrdt"][i].product.star;
             var mtname = dataPrdt["itemsPrdt"][i].middleTagName;
             var stname = dataPrdt["itemsPrdt"][i].smallTagName;
             var nick = dataPrdt["itemsPrdt"][i].nick;
             
             content += "<a href='../product/detail?no="+ ptno +"'>"
             content += "<div class='col-lg-12' id='owl-col'>"
             content += "<div class='row' id='owl-row'>"
             content += '<div class="imgcover col-lg-12" style="height: 200px;position:absolute;">'
             content += '</div>'
             content += '<div style="padding: 0 5px; top: 20px; width: auto; height: auto; position: absolute; background-color: #f58500; color: white; border-bottom-right-radius: 10px">'+nick+'</div>'
             content += "<img id='owl-img' src=\"" +phot+ "\" alt=\"" +titl+ "\">"
             
             if(titl.length>21){
                 content += "<div class='col-lg-9' id='owl-col2'>" + titl.substring(0,21) + "...</div>"
             }else{
                 content += "<div class='col-lg-9' id='owl-col2'>" + titl + "</div>" 
             }
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
             pric = "" + pric;
             pric = pric.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,')
             content += "<div class='col-lg-6' id='owl-col3'>" + pric + "원</div>"
             content += "</div>"
             content += "</div>"
             content += "</a>"
            }
            owlPrdt.html(content);
        }
        
     });
    
      $(".cusnextCls").click(function() {
          owlCls.trigger('next.owl.carousel');
      });
   
      $(".cusprevCls").click(function() {
          owlCls.trigger('prev.owl.carousel');
      });
      
      $(".cusnextPrdt").click(function() {
          owlPrdt.trigger('next.owl.carousel');
      });

      $(".cusprevPrdt").click(function() {
          owlPrdt.trigger('prev.owl.carousel');
      });
      
      
       </script> 
<script>
$(document).ready(function() { 
// console.log(1);
// console.log('${sessionScope.loginUser}');
});
</script>
</body>
</html>