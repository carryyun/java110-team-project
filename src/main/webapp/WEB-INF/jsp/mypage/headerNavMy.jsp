<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- Category Navigation -->
    <!-- <hr class="Fhr"> -->
    
    <nav class="navbar navbar-expand-lg" style="position:realtive; left:10px; top:30px;">
    
        <div class="navbar-nav" id="categoryNav" >
          <ul class="navbar-nav" id="mainUl" style="float: left; ">
            <c:forEach  items="${BTlist}" var="bt" varStatus="i">
              <li class="nav-item" style="margin:0 auto;display: inline-block; ">
                <a class="nav-link" href="../class/clsCate?no=${bt.no}" id="menu0${i.count}"  style=" padding:0 35px;">${bt.name}</a>
              </li>
            </c:forEach>
          </ul>
        </div>
    </nav>
    
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

