<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom fonts for this template -->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template -->
    <link href="/css/category.css" rel="stylesheet">
    
    <!-- 폰트 추가 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    </head>
    <!-- Category Navigation -->
    <!-- <hr class="Fhr"> -->
    
<!--     <nav class="navbar navbar-expand-lg"> -->
    
        <div class="navbar-nav" id="categoryNav" style="padding-top: 2px; padding-bottom: 1px">
          <ul class="navbar-nav" id="mainUl" style="float: left;">
            <c:forEach  items="${BTlist}" var="bt" varStatus="i">
              <li class="nav-item" style="margin:0 auto;display: inline-block;">
                <a class="nav-link" href="../class/clsCate?no=${bt.no}" id="menu0${i.count}">${bt.name}</a>
              </li>
            </c:forEach>
            <li class="nav-item" style="margin:0 auto;display: inline-block;">
                <a class="nav-link" href="../product/prdt">작품장터</a>
              </li>
          </ul>
        </div>
<!--     </nav> -->
    
    <!-- <hr class="Fhr"> -->
    
    <div class="col px-0">
    <div id="menusubs" class="menusubs">
    <c:forEach  items="${BTlist}" var="bt" varStatus="i">
    
    <ul id="menu0${i.count}_sub" class="localNav col"> 
    
              <c:forEach  items="${MTlist}" varStatus="j">
              
                 <c:if test="${bt.no == MTlist[j.index].bigTag.no}">
                 <li>
                 <a href="#">
                     ${MTlist[j.index].name}
                 </a>
                 </li>
                 </c:if>
                 
              </c:forEach>
              
    </ul>
    </c:forEach>


    </div>
    </div>
    

    <!-- Bootstrap core JavaScript -->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- 카테고리 서브메뉴 -->
    <script>
    /* var timeset=1;
        $(document).ready(function(){
      var submenu=new Array();
      var sub_tmps=document.getElementById("menusubs").getElementsByTagName("ul");
      for (var i=0, len=sub_tmps.length; i<len; i++) {
         // if (sub_tmps[i].className=="localNav"){ 
            submenu.push(sub_tmps[i]);
         // } 
      }
      var menu_tmps=document.getElementById("mainUl").getElementsByTagName("a");
      for (var i=0, len=menu_tmps.length; i<len; i++) {
         if (menu_tmps[i].className=="nav-link") {
            menu_tmps[i].onmouseover=function() {
                clearTimeout(timeset);
               for (var j=0, sublen=submenu.length; j<sublen; j++)
                  submenu[j].style.display="none";
               document.getElementById(this.id+"_sub").style.display="block";
            }
            menu_tmps[i].onmouseout=function() {
                clearTimeout(timeset);
                timeset= setTimeout(function() {
                    for (var j=0, sublen=submenu.length; j<sublen; j++)
                        submenu[j].style.display="none";
                  }, 3000);
            }
            menu_tmps[i].onfocus= menu_tmps[i].onmouseover;
            menu_tmps[i].onfocusout= menu_tmps[i].onmouseout;
            
            // 카테고리 서브메뉴 마우스오버 & 마우스아웃 처리
            for (var k=0, klen=submenu.length; k<klen; k++) {
                submenu[k].onmouseenter=function(){
                    clearTimeout(timeset);
                }
                submenu[k].onmouseleave=function(){
                    clearTimeout(timeset);
                    for (var j=0, sublen=submenu.length; j<sublen; j++)
                        submenu[j].style.display="none";
                }
                submenu[k].onfocus= submenu[k].onmouseenter;
                submenu[k].onfocusout= submenu[k].onmouseleave;
            }
         }
      }
        }); */
</script>
</html>