<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- ===============필수포함=============== -->
<!-- Bootstrap core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/notice.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">



<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">
<!-- ===============필수포함=============== -->
<style type="text/css">
.notice:nth-child(n){
    border-left-color: #FFB53C;
}
.notice:nth-child(2n+2){
    border-left-color: #B9B9B9;
}
.notice:nth-child(3n+3){
    border-left-color: #EC5453;
}


</style>

</head>
<body>
    <div id="wrap" style="background-color: #fff">
        <div class="col-lg-12 px-0" style="position: absolute; height: 105px; background-color: white">
            <!-- 헤더 배경색 적용 -->
        </div>
        <div class="col-lg-12 px-0" 
        style="position: absolute; top:106px; height: 41px; background-color: #f3f3f3">
            <!-- 헤더 배경색 적용 -->
        </div>

        <div class="container">
            <div class="row">
                

                <div class="col-lg-12" style="z-index: 100">
                    <jsp:include page="../headerMain.jsp"></jsp:include>
                </div>

                <!-- 카테고리 nav (스크립트로 임시 inclue) -->
                <div class="col-lg-12">
                    <jsp:include page="../headerNav.jsp"></jsp:include>
                </div>


                <div class="container col-lg-10 mt-3" style="min-height: 477px; margin-bottom: 50px">
                    <c:forEach items="${noticeList}" var="nl" varStatus="i">
                        
                        <div class="notice notice-lg col-lg-12 px-0" id="rmv${nl.no}" onclick="location.href='${nl.url}'" style="display: inline-block;">
                            <div class="col-lg-2" style="float: left">
                                <c:set var="transFile" value="${nl.phot}" />
	                            <%
	                                String transFile = (String)pageContext.getAttribute("transFile");
	                                if(transFile.endsWith("jpg") || transFile.endsWith("png")){
	                            %>
	                            <img src="${nl.phot}" alt="${nl.phot}" width="100px" height="100px">
	                            <%
	                                }else{
	                                  
	                            %>
	                                <img alt="${i.count}" src="https://i.ytimg.com/vi/${nl.phot}/mqdefault.jpg" style="width: 100px; height: 100px">
	                            <%
	                                }
	                            %>
                            </div>
                            
                            <div class="col-lg-9" style="float: left">
                            <strong>[${nl.type}]${nl.titl}</strong>
                            <br/>${nl.conts}
                            </div>
                            <div class="col-lg-1" style="float: right; cursor: pointer;" onclick="del(${nl.no},event)"><i class="fas fa-trash-alt"></i> </div>
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
</body>
<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
var fadeTime = 200;
function del(no,e){
    e.preventDefault();
    e.stopPropagation();
    removeItem(no);
    $.ajax({
        type : 'POST',
        data : {
            no : no
        },
        url : "notiRemove.do",
        success : location.href="#"
    });
}
function removeItem(no) {
    /* Remove row from DOM and recalc cart total */
    var getRow = document.getElementById("rmv"+no);
    getRow = $(getRow);
    getRow.slideUp(fadeTime, function () {
        getRow.remove();
    });
}
</script>
</html>