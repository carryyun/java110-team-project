<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<nav class="navbar navbar-expand-lg mx-auto fixed-top mb-2" id="mainNav" >
<div class="helper">
    <a class="navbar-brand" href="/app/mainpage/mainpage" style=" position: relative; left:8px;  top:26px;">하루</a>
      <div style="width:300px; display:inline;">
    <div class="search" style="position: relative;  display:inline; left:-118px; top:21px;">
          
            <input  type="text" id="getWord" class="search-form" autocomplete="off" placeholder="클래스 또는 멘토 검색" onkeypress="if(event.keyCode==13) {location.href='../class/clsSerch?word='+$('#getWord').val(); return false;}"> 
            <a style="position:relative; bottom:6px; right:45px;" href="#" onclick="location.href='../class/clsSerch?word='+$('#getWord').val()"><i class="fas fa-search fa-2x" ></i></a>  
            </div> 
    </div> 
<!--     <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
        aria-label="Toggle navigation">
        Menu <i class="fas fa-bars"></i>
    </button> -->
    <div class="collapse navbar-collapse" id="navbarResponsive" style="position: relative; float:right; top:20px; width:300px;"> <!--class="collapse navbar-collapse" id="navbarResponsive"   -->
        <ul class="navbar-nav ml-auto mr-0"  style="list-style-type: none; width:300px;" >
            <li class="nav-item" id="dropdownLI"  style="list-style-type: none">
                <div id="row">

                    <c:choose>
                        <c:when test="${sessionScope.loginUser eq null}">
                            <a class="nav-link" href="../auth/form"> <i class="fas fa-power-off fa-3x"></i><br>로그인
                            </a>

                        </c:when>
                        
                        <c:when test="${fn:contains(sessionScope.loginUser.stat,'M')}">
                        <div class="dropdown" id="dropdown">
                            <img src="${mentee.phot}" alt="userIMG" 
                                    style="margin:0 30px; width: 56px; height: 56px; border-radius: 28px; border: 3px solid #FFB53C"><br>
                            <div class="dropdown-content text-left" id="dropdown-content">
                            <hr class="Hhr"/> 
                            <a href="../auth/logout"><span><i class="fas fa-sign-out-alt"></i></span><span class="ml-3">로그아웃</span></a>
                            </div>
                        </div>
                        </c:when> 
                        
                        <c:otherwise> 
                            <div class="dropdown" id="dropdown">
                            <!-- onload="mover()" -->
                                <img src="${mentee.phot}" alt="userIMG" 
                                    style="margin: 0 30px; width: 56px; height: 56px; border-radius: 28px; border: 3px solid #FFB53C"><br>
                                <div class="dropdown-content text-left" id="dropdown-content">
                                    <a href="../mypage/mypage"><span><i class="fas fa-user"></i></span><span class="ml-3">마이페이지</span></a>
                                    <a href="../masterpage/notice"><span><i class="fas fa-bell"></i></span><span class="ml-3">알림</span></a>
                                    <hr class="Hhr"/>
                                    <a href="../auth/logout"><span><i class="fas fa-sign-out-alt"></i></span><span class="ml-3">로그아웃</span></a>
                                </div>
                            </div>

                        </c:otherwise>
                    </c:choose>

                </div>
            </li>


            <li class="nav-item" id="getSizeLI">
                <div id="row">
                    <c:choose>
                        <c:when test="${sessionScope.loginUser eq null}">
                            <a class="nav-link " href="../mentee/sign"> <i class="fas fa-user-plus fa-3x"></i><br>회원가입
                            </a>
                        </c:when>
                        
                        <c:when test="${fn:contains(sessionScope.loginUser.stat,'M')}">
                            <a class="nav-link " href="../masterpage/dashBoard"> <i class="fas fa-wrench fa-3x"></i><br>관리페이지
                            </a>
                        </c:when>
                        
                        <c:otherwise>
                            <a class="nav-link " href="../class/basket" > <i class="fas fa-shopping-cart fa-3x" style="position:relative; right:20px; margin-left:10px; margin-right:10px;"></i><br>장바구니
                            </a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </li>
            <li class="nav-item">
                <div id="row">
                <c:choose>
                        <c:when test="${sessionScope.loginUser eq null}">
                        </c:when>
                        <c:when test="${fn:contains(sessionScope.loginUser.stat,'M')}">
                        </c:when>
                        
                        <c:otherwise>
                            <a class="nav-link" href="../class/like"> <i class="fas fa-star fa-3x" style="position:relative; right:20px; margin-left:10px; margin-right:10px;"></i><br>찜클래스
                            </a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </li>
        </ul>
    </div>
    </div>
</nav>

